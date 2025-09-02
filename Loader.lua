local Request = request or http_request or (syn and syn.request)
assert(Request, "No request function found")

local Repo = "Starfall"
local Owner = "Severitysvc"

local VersionFile = "Version.lua"
local RawBase = "https://raw.githubusercontent.com/" .. Owner .. "/" .. Repo .. "/refs/heads/main/"

local CreatorID = game.CreatorId
local PlaceID = game.PlaceId

local Key = "Starfall" --// I will change this later with some actual security. Join our discord :pray:

if not isfolder(Repo) then
	makefolder(Repo)
end

local function DownloadAsset(Asset, Force)
	local Path = Repo .. "/" .. Asset
	local Parts = {}

	for Part in Asset:gmatch("[^/]+") do
		table.insert(Parts, Part)
	end

	if #Parts > 1 then
		local PartPath = Repo .. "/" .. Parts[1]
		if not isfolder(PartPath) then
			makefolder(PartPath)
		end
		for i = 2, #Parts - 1 do
			PartPath = PartPath .. "/" .. Parts[i]
			if not isfolder(PartPath) then
				makefolder(PartPath)
			end
		end
	end

	if not Asset:match("%.%w+$") then
		return
	end

	if not Force and isfile(Path) then
		return loadfile(Path)
	end

	local Url = RawBase .. Asset
	local Response = Request({
		Url = Url,
		Method = "GET",
	})

	assert(Response.Success or Response.StatusCode == 200, "Failed to download: " .. Url)
	writefile(Path, Response.Body)

	return loadfile(Path)
end

local function GetInstalledVersion()
	if isfile(Repo .. "/" .. VersionFile) then
		return readfile(Repo .. "/" .. VersionFile)
	end

	return "None"
end

shared.Hq29sS9aa = DownloadAsset

local Installed = GetInstalledVersion()
local GithubVersion = DownloadAsset(VersionFile, true)()

if Installed == "None" then
	DownloadAsset("Loader.lua", true)
	DownloadAsset(VersionFile, true)
else
	if Installed ~= GithubVersion then
		for _, FilePath in pairs(listfiles(Repo)) do
			local FileName = FilePath:match("[^/\\]+$")
			DownloadAsset(FileName, true)
		end
	end
end

local Supported = DownloadAsset("Build/Support.lua")()
local KeySystem = DownloadAsset("Library/KeySystem/Source.lua")()
DownloadAsset("Library/Loading Animation/Source.lua")()()

for _, Data in pairs(Supported) do
	if Data.Main.CreatorID and Data.Main.CreatorID == CreatorID then
		KeySystem(Data.Main.Source, Key)
		return
	end

	if Data.Main.PlaceID and Data.Main.PlaceID == PlaceID then
		KeySystem(Data.Main.Source, Key)
		return
	end

	if Data.Lobby and Data.Lobby.PlaceID and Data.Lobby.PlaceID == PlaceID then
		KeySystem(Data.Lobby.Source, Key)
		return
	end
end
