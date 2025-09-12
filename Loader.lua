local Owner = "Severitysvc"
local Repo = "Starfall-Dev"
local Version

local Raw = "https://raw.githubusercontent.com/" .. Owner .. "/" .. Repo .. "/main/"

local Executor = identifyexecutor and identifyexecutor() or getexecutorname and getexecutorname() or "none"
local PlaceId = game.PlaceId
local CreatorId = game.CreatorId

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

if not isfolder(Repo) then
	makefolder(Repo)
end

local function ImportAsset(Asset, Extension)
	local AssetExtension = Extension or ".lua"
	local RawAsset = Raw .. Asset .. AssetExtension

	local Success, Response = pcall(function()
		return game:HttpGet(RawAsset)
	end)

	if Success then
		local Scs, Rps = pcall(function()
			return loadstring(Response)()
		end)
		if Scs then
			return Rps
		else
			warn("Failed to get asset: ", Asset, Rps)
		end
	else
		warn("Failed to load asset: ", Asset, Response)
	end
end

local function DiscoverModule(Module, Force)
	local Base = "src/bundle/profiles/" .. Module
	if Force then
		ImportAsset(Base)
	else
		return Base
	end
end

local function CheckDependencies(Table, Callback)
	if Table.Exclude and #Table.Exclude > 0 then
		for _, Excluded in next, Table.Exclude do
			if Excluded == Executor then
				LocalPlayer:Kick("Unsupported Excutor")
				return
			end
		end
	end

	Callback()
end

Version = ImportAsset("Version")
getgenv().StarfallImport = ImportAsset

local KeySystem = ImportAsset("Library/KeySystem/Source")
local LoadingAnimation = ImportAsset("library/Animations/Loading")

local Supported = ImportAsset("build/Support")
assert(Supported, "no support handler found. contact severitysvc about this issue")

for _, Data in next, Supported do
	if Data.Main then
		if Data.Main.CreatorId and Data.Main.CreatorId == CreatorId then
			CheckDependencies(Data, function()
				KeySystem(DiscoverModule(Data.Source), "Starfall")
			end)
		elseif Data.Main.PlaceId and Data.Main.PlaceId == PlaceId then
			CheckDependencies(Data, function()
				KeySystem(DiscoverModule(Data.Source), "Starfall")
			end)
		elseif Data.Lobby.PlaceId and Data.Lobby.PlaceId == PlaceId then
			CheckDependencies(Data, function()
				KeySystem(DiscoverModule(Data.Lobby.Source), "Starfall")
			end)
		end
	end
end

print("Starfall is running on version " .. tostring(Version))
