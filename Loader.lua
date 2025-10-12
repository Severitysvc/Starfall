local Owner = "Severitysvc"
local Repo = "Starfall"
local Raw = "https://raw.githubusercontent.com/" .. Owner .. "/" .. Repo .. "/main/"

local Supported = {
	["99 Nights"] = {
		CreatorId = 6042520,
		Url = "src/profiles/99 Nights/Source.lua",
	},

	["Steal a brainrot"] = {
		CreatorId = 35815907,
		Url = "src/profiles/Sab/Source.lua",
	},
}

local CreatorId = game.CreatorId
local PlaceId = game.PlaceId

local KeySystem = loadstring(game:HttpGet(Raw .. "/library/KeySystem.lua"))()
local Job = "Key_023810AIS0A2I20QS9AD9AD"

for _, Data in pairs(Supported) do
	if Data.CreatorId and Data.CreatorId == CreatorId and Data.Url then
		KeySystem(Raw .. Data.Url, Job)
	elseif Data.PlaceId and Data.PlaceId == PlaceId and Data.Url then
		KeySystem(Raw .. Data.Url, Job)
	end
end
