local Request = request or http_request or (syn and syn.request)
assert(Request, "No request function found")

local Repo = "Starfall"
local Owner = "Severitysvc"

local VersionFile = "Version.lua"
local RawBase = "https://raw.githubusercontent.com/" .. Owner .. "/" .. Repo .. "/refs/heads/main/"

local CreatorID = game.CreatorId
local PlaceID = game.PlaceId

local Key = "Starfall"

local function LoadAsset(Asset)
    local Url = RawBase .. Asset
    local Response = Request({
        Url = Url,
        Method = "GET",
    })
    assert(Response.Success or Response.StatusCode == 200, "Failed to fetch: " .. Url)
    return loadstring(Response.Body), Response.Body
end

local function GetGithubVersion()
    local Fn, Body = LoadAsset(VersionFile)
    return Fn(), Body
end

shared.Hq29sS9aa = LoadAsset

local GithubVersion, VersionBody = GetGithubVersion()
local Installed = "None"

LoadAsset("Loader.lua")()
LoadAsset(VersionFile)()

local Supported = LoadAsset("Build/Support.lua")()
local KeySystem = LoadAsset("Library/KeySystem/Source.lua")()
LoadAsset("Library/Loading Animation/Source.lua")()()

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
