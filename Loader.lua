local Supported = {
	["99 Nights"] = {
		Main = {
			Source = "",
			CreatorID = 123456789,
		},
	},

	["Doors Lobby"] = {
		Main = {
			Source = "",
			PlaceID = 6839171747,
		},

		Lobby = {
			Source = "",
			PlaceID = 6516141723,
		},
	},
}

local CreatorID = game.CreatorId
local PlaceID = game.PlaceId

function SetupUi(Source)
	if not game:IsLoaded() then
		game.Loaded:Wait()
	end

	local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
	local Window = WindUI:CreateWindow({
		Title = "Key",
		Icon = "key",
		Author = "By Habibi and Severity",
		Folder = "Starfall",
		Size = UDim2.fromOffset(300, 300),
		Transparent = true,
		Theme = "Dark",
		SideBarWidth = 0,
		Background = "",
		BackgroundImageTransparency = 0.42,
		HideSearchBar = true,
		ScrollBarEnabled = false,
		User = {
			Enabled = false,
			Anonymous = true,
			Callback = function() end,
		},
	})
	local Tab = Window:Tab({
		Title = "Authenticate",
		Icon = "lock",
		Locked = false,
	})
	Window:SelectTab(1)

	local script_key = ""

	local function join_discord()
		setclipboard("https://discord.gg/ue93gsfkwg")
		WindUI:Notify({
			Title = "Copied Discord Invite",
			Content = "Copied",
			Icon = "key",
			IconThemed = true,
			Duration = 5,
		})
	end

	local function randomlol()
		local result = "f"
		for _ = 1, 60 do
			result = result .. tostring(math.random(0, 9))
		end
		return result
	end
	local fucktishit = randomlol()

	_G[fucktishit] = function()
		if Source then
			local ok, err = pcall(function()
				loadstring(game:HttpGet(Source, true))()
			end)
			if not ok then
				warn("Failed to run script:", err)
			end
		end
	end

	local function load_script(key)
		if key == "Release" then
			writefile("Starfall/key-check.txt", key)
			WindUI:Notify({
				Title = "Key Is Valid",
				Content = "Enjoy using Starfall.",
				Icon = "key",
				IconThemed = true,
				Duration = 5,
			})
			local success, err = pcall(function()
				Window:Close():Destroy()
			end)
			if not success then
				warn("Error closing window:", err)
			end
			task.wait(0.3)
			_G[fucktishit]()
		else
			WindUI:Notify({
				Title = "Key Incorrect",
				Content = "Key is invalid.",
				Icon = "triangle-alert",
				IconThemed = true,
				Duration = 5,
			})
		end
	end

	Tab:Paragraph({
		Title = "How to get key?",
		Desc = "Join the discord and check the get-key channel",
	})
	Tab:Button({
		Title = "Join Discord",
		Desc = "Copy invite to clipboard",
		Callback = join_discord,
	})

	Tab:Input({
		Title = "Key",
		Desc = "Paste your key here.",
		Placeholder = "Enter your key...",
		Callback = function(value)
			script_key = value
		end,
	})
	Tab:Button({
		Title = "Check Key",
		Desc = "Validate entered key",
		Callback = function()
			if script_key and script_key ~= "" then
				load_script(script_key)
			end
		end,
	})
	if isfile("Starfall/key-check.txt") then
		local saved = readfile("Starfall/key-check.txt")
		script_key = saved
		load_script(saved)
	end
end

for _, Data in pairs(Supported) do
	if Data.Main.CreatorID and Data.Main.CreatorID == CreatorID then
		SetupUi(Data.Main.Source)
		return
	end

	if Data.Main.PlaceID and Data.Main.PlaceID == PlaceID then
		SetupUi(Data.Main.Source)
		return
	end

	if Data.Lobby and Data.Lobby.PlaceID and Data.Lobby.PlaceID == PlaceID then
		SetupUi(Data.Lobby.Source)
		return
	end
end
