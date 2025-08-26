--// Load Modules
local Library = loadstring(
	game:HttpGet(
		"https://raw.githubusercontent.com/Severitysvc/Starfall/refs/heads/main/Profiles/Grow%a%garden/Library.lua"
	)
)()
local Utility = loadstring(
	game:HttpGet(
		"https://raw.githubusercontent.com/Severitysvc/Starfall/refs/heads/main/Profiles/Grow%a%garden/Utility.lua"
	)
)()
local Module = loadstring(
	game:HttpGet(
		"https://raw.githubusercontent.com/Severitysvc/Starfall/refs/heads/main/Profiles/Grow%a%garden/Modules.lua"
	)
)()

local Collection = {
	["Auto Harvest"] = {
		TargetPlants = { "All" },
		TargetMutations = { "All" },
		PerformanceMode = false,
	},

	["Auto Plant"] = {
		TargetPlants = { "All" },
		PlantMethod = "Random",
		Delay = 0.1,
	},

	["Auto Sell"] = {
		Delay = 15,
		SellType = "OnDelay",
	},

	["Auto Buy Seeds"] = {
		TargetSeeds = { "Carrot" },
		Delay = 2.5,
	},

	["Auto Buy Gears"] = {
		TargetGears = { "Watering Can" },
		Delay = 2.5,
	},

	["Auto Buy Eggs"] = {
		TargetEggs = { "Common Egg" },
		Delay = 2.5,
	},

	["Auto Input Pets"] = {
		TargetPet = "",
	},

	["Auto Quest"] = {},

	["Auto Move"] = {
		TargetPlants = { "All" },
		MoveMethod = "UnderPlayer",
		Delay = 0.1,
	},

	["Teleport"] = {
		Place = "Middle",
	},

	["Crafters"] = {
		["Seed Crafting"] = {
			Seed = "Peace Lily",
		},

		["Gear Crafting"] = {
			Gear = " Lightning Rod",
		},
		["Event Crafting"] = {
			Item = "Ancient Seed Pack",
		},
	},

	["Player Movement"] = {
		["WalkSpeed"] = { Enabled = false, Speed = 16 },
		["JumpPower"] = { Enabled = false, Power = 16 },
		["Gravity"] = { Enabled = false, Gravity = 16 },
	},

	["Servers"] = {
		JobID = game.JobId,
		PlaceID = game.PlaceId,
	},
}

local BackPack = Utility.BackPack
local HumanoidRootPart = Utility.HumanoidRootPart
local Humanoid = Utility.Humanoid
local LocalPlayer = Utility.LocalPlayer
local Character = Utility.Character
local Mouse = Utility.Mouse

--// Setup
local Window = Library:Setup()

--local AboutUs = Library:CreateTab("About us | Server Hop", "info")
local Farming = Library:CreateTab("Farming", "wheat")
local Stock = Library:CreateTab("Stock", "store")
local Player = Library:CreateTab("Player", "user")
local Visual = Library:CreateTab("Visual", "eye")
local Event = Library:CreateTab("Event", "calendar")
local Misc = Library:CreateTab("Misc", "ellipsis")
local Divider = Window:Divider()
local Exclusive = Library:CreateTab("Exclusive", "sparkles")

Window:SelectTab(1)

--// About Us / Server Hop
Module:Init(function()
	Library:CreateSection(AboutUs, "Server Hop")

	Library:CreateButton(AboutUs, {
		Title = "Server Hop",
		Locked = false,
		Callback = function()
			local PlaceId = game.PlaceId
			local JobId = game.JobId

			Module:ServerHop(PlaceId, JobId, false)
		end,
	})

	Library:CreateButton(AboutUs, {
		Title = "Find Old Server",
		Locked = false,
		Callback = function()
			local PlaceId = game.PlaceId
			local JobId = game.JobId

			Module:ServerHop(PlaceId, JobId, true)
		end,
	})

	Library:CreateButton(AboutUs, {
		Title = "Copy PlaceId",
		Locked = false,
		Callback = function()
			local PlaceId = game.PlaceId
			setclipboard(tostring(PlaceId))
		end,
	})

	Library:CreateButton(AboutUs, {
		Title = "Copy JobId",
		Locked = false,
		Callback = function()
			local JobId = game.JobId

			setclipboard(tostring(JobId))
		end,
	})

	Library:CreateSection(AboutUs, "About Us")

	--Library:SetupAboutUs(AboutUs)
end)

--// Farming
Module:Init(function() --// Auto Harvest
	Library:CreateSection(Farming, "Auto Harvest")
	local TargetPlants = Collection["Auto Harvest"].TargetPlants
	local TargetMutations = "All"

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay = 2

	local Performance = true

	Library:CreateDropdown(Farming, {
		Title = "Plants to Harvest",
		Values = Module:SortArray(Utility.Fruits),
		Value = { "All" },
		Multi = true,
		AllowNone = true,
		Callback = function(option)
			TargetPlants = option
		end,
	})

	Library:CreateDropdown(Farming, {
		Title = "Required Mutations",
		Values = Module:SortArray(Utility.Mutations),
		Value = { "All" },
		Multi = true,
		AllowNone = true,
		Callback = function(option)
			TargetMutations = option
		end,
	})

	Farming:Toggle({
		Title = "Auto Harvest Fruits",
		Desc = "Automatically Harvest Plants Based On Your Filters",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				Connection = ConnectionInit:Connect("Heartbeat", function()
					if not State then
						return
					end
					if Module:IsMaxInventory() then
						return
					end
					local Current = tick()
					if Current - LastTick < Delay then
						return
					end
					LastTick = Current

					local Farm, Important = Module:GetFarm()

					if not Farm or not Important then
						warn("[AutoHarvest]: Farm not found")
						return
					end

					local Plants = Module:GetPlants(Farm)

					for _, v in pairs(Plants) do
						if type(TargetPlants) == "table" then
							if table.find(TargetPlants, "All") then
								Module:HarvestPlant(v)
							else
								if table.find(TargetPlants, v.Name) then
									if table.find(TargetMutations, "All") then
										Module:HarvestPlant(v)
									else
										for _, v2 in pairs(TargetMutations) do
											if Module:HasMutation(v, v2) then
												Module:HarvestPlant(v)
											end
										end
									end
								end
							end
						end
					end
				end)
			else
				ConnectionInit:Disconnect(Connection)
				Connection = nil
			end
		end,
	})
end)

Module:Init(function() --// Auto Plant
	Library:CreateSection(Farming, "Auto Plant")

	local PlantMethod = Collection["Auto Plant"].PlantMethod
	local TargetPlants = Collection["Auto Plant"].TargetPlants
	local Delay = Collection["Auto Plant"].Delay

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil

	local LastTick = 0

	local PlantsToPlant = Library:CreateDropdown(Farming, {
		Title = "Plants to Plant",
		Values = Module:SortArray(Utility.Fruits),
		Value = { "All" },
		Multi = true,
		AllowNone = true,
		Callback = function(option)
			TargetPlants = option
		end,
	})

	local PlantMethods = Library:CreateDropdown(Farming, {
		Title = "Plant Method",
		Values = { "Random", "UnderPlayer", "UnderMouse" },
		Value = "Random",
		Multi = false,
		AllowNone = true,
		Callback = function(option)
			PlantMethod = option
		end,
	})

	Farming:Toggle({
		Title = "Auto Plant",
		Desc = "Automatically Plant Stuff Based On Your Farm",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				Connection = ConnectionInit:Connect("Heartbeat", function()
					if not State then
						return
					end

					local Current = tick()
					if Current - LastTick < Delay then
						return
					end

					LastTick = Current

					local Seeds = Module:GetSeeds()

					if type(TargetPlants) == "table" then
						if table.find(TargetPlants, "All") then
							for _, v in pairs(Seeds) do
								if v:IsA("Tool") then
									local FruitName = v.Name:match("^(.-) Seed")

									if FruitName then
										Utility.Humanoid:EquipTool(v)
										Module:Plant(Module:GetPosition(PlantMethod), FruitName)
									end
								end
							end
						else
							for _, v in pairs(Seeds) do
								if v:IsA("Tool") then
									local FruitName = v.Name:match("^(.-) Seed")

									if FruitName and table.find(TargetPlants, FruitName) then
										Utility.Humanoid:EquipTool(v)
										Module:Plant(Module:GetPosition(PlantMethod), FruitName)
									end
								end
							end
						end
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Sell
	Library:CreateSection(Farming, "Auto Selling")
	local Delay = Collection["Auto Sell"].Delay --// Delay in seconds

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0

	Library:CreateSlider(Farming, {
		Title = "Sell Delay (Seconds)",
		Desc = "Change Delay Between Each Sell",
		Step = 0.1,
		Value = {
			Min = 0.1,
			Max = 100,
			Default = 15,
		},
		Callback = function(Value)
			Delay = tonumber(Value)
		end,
	})

	Farming:Toggle({
		Title = "Auto Sell",
		Desc = "Automatically Sell Your Plants",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)
				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay then
						return
					end
					LastTick = Current

					if not HumanoidRootPart then
						return
					end

					local LastCFrame = HumanoidRootPart.CFrame
					HumanoidRootPart.CFrame = CFrame.new(88.1068573, 2.99999976, 0.248745888)

					task.wait(0.25)
					Utility.GameEvents:WaitForChild("Sell_Inventory"):FireServer()

					task.wait(1.25)

					HumanoidRootPart.CFrame = LastCFrame
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})
end)

Module:Init(function() --// Enabled Proxys
	Library:CreateSection(Farming, "Proximity Prompts")

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0

	local Delay = Collection["Auto Sell"].Delay
	local Farm, Imp = Module:GetFarm()

	Farming:Toggle({
		Title = "Enable Multiple Proxy's",
		Desc = "Lets You Harvest More Plants At Once",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay then
						return
					end
					LastTick = Current

					local Plants = Module:GetPlants(Imp)
					for _, v in pairs(Plants) do
						local Proxy = Module:GetProxy(v)

						if Proxy then
							Proxy.Exclusivity = Enum.ProximityPromptExclusivity.AlwaysShow
						end
					end
				end)
			else
				if Connection then
					local Plants = Module:GetPlants(Imp)
					for _, v in pairs(Plants) do
						local Proxy = Module:GetProxy(v)

						if Proxy then
							Proxy.Exclusivity = Enum.ProximityPromptExclusivity.OnePerButton
						end
					end

					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})
end)

--// Stock
Module:Init(function() --// Show UI's
	Library:CreateSection(Stock, "Enable Ui's")

	Stock:Toggle({
		Title = "Enable Seeds Shop UI",
		Desc = "Shows The Seed Shop UI",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Utility.PlayerGui.Seed_Shop.Enabled = State
		end,
	})

	Stock:Toggle({
		Title = "Enable Gear Shop UI",
		Desc = "Shows The Gear Shop UI",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Utility.PlayerGui.Gear_Shop.Enabled = State
		end,
	})

	--[[Stock:Toggle({
		Title = "Enable Event Shop UI",
		Desc = "Shows The Event UI",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Utility.PlayerGui.EventShop_UI.Enabled = State
		end,
	})]]

	Stock:Toggle({
		Title = "Enable Cosmetic Shop UI",
		Desc = "Shows The Cosmetic UI",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Utility.PlayerGui.CosmeticShop_UI.Enabled = State
		end,
	})

	Stock:Toggle({
		Title = "Enable Pet Egg Shop UI",
		Desc = "Shows The Pet Egg UI",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Utility.PlayerGui.PetShop_UI.Enabled = State
		end,
	})
end)

Module:Init(function() --// Auto Buy Seeds
	Library:CreateSection(Stock, "Auto Buy Seeds")
	local TargetSeeds = Collection["Auto Buy Seeds"].TargetSeeds
	local Delay2 = Collection["Auto Buy Seeds"].Delay

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0

	local ConnectionInit2 = Module:SpawnConnection() --// For the Auto Buy All
	local Connection2 = nil
	local LastTick2 = 0

	Library:CreateDropdown(Stock, {
		Title = "Seeds to buy",
		Values = Module:SortArray(Utility.SeedStock),
		Value = { "Carrot" },
		Multi = true,
		AllowNone = true,
		Callback = function(option)
			TargetSeeds = option
		end,
	})

	Stock:Toggle({
		Title = "Auto Buy Seeds",
		Desc = "Automatically Buys Seeds In Stock",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					if type(TargetSeeds) == "table" and #TargetSeeds > 0 then
						for _, v in pairs(TargetSeeds) do
							Module:BuySeed(v)
						end
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})

	Stock:Toggle({
		Title = "Auto Buy All Seeds",
		Desc = "Automatically Buys All The Seeds In Stock",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit2:Disconnect(Connection2)

				Connection2 = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick2 = Current

					for _, v in pairs(Utility.SeedStock) do
						Module:BuySeed(v)
					end
				end)
			else
				if Connection2 then
					ConnectionInit2:Disconnect(Connection2)
					Connection2 = nil
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Buy Gears
	Library:CreateSection(Stock, "Auto Buy Gears")
	local TargetGears = Collection["Auto Buy Gears"].TargetGears
	local Delay2 = Collection["Auto Buy Gears"].Delay

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0

	local ConnectionInit2 = Module:SpawnConnection() --// For the Auto Buy All
	local Connection2 = nil
	local LastTick2 = 0

	Library:CreateDropdown(Stock, {
		Title = "Gears to buy",
		Values = Module:SortArray(Utility.GearStock),
		Value = { "Watering Can" },
		Multi = true,
		AllowNone = true,
		Callback = function(option)
			TargetGears = option
		end,
	})

	Stock:Toggle({
		Title = "Auto Buy Gears",
		Desc = "Automatically Buys Gears In Stock",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					if type(TargetGears) == "table" and #TargetGears > 0 then
						for _, v in pairs(TargetGears) do
							Module:BuyGear(v)
						end
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})

	Stock:Toggle({
		Title = "Auto Buy All Gears",
		Desc = "Automatically Buys All The Gears In Stock",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit2:Disconnect(Connection2)

				Connection2 = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick2 = Current

					for _, v in pairs(Utility.SeedStock) do
						Module:BuyGear(v)
					end
				end)
			else
				if Connection2 then
					ConnectionInit2:Disconnect(Connection2)
					Connection2 = nil
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Buy Gears
	Library:CreateSection(Stock, "Auto Buy Eggs")
	local TargetEggs = Collection["Auto Buy Eggs"].TargetEggs
	local Delay2 = Collection["Auto Buy Eggs"].Delay

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0

	local ConnectionInit2 = Module:SpawnConnection() --// For the Auto Buy All
	local Connection2 = nil
	local LastTick2 = 0

	Library:CreateDropdown(Stock, {
		Title = "Eggs to buy",
		Values = Module:SortArray(Utility.EggStock),
		Value = { "Common Egg" },
		Multi = true,
		AllowNone = true,
		Callback = function(option)
			TargetEggs = option
		end,
	})

	Stock:Toggle({
		Title = "Auto Buy Eggs",
		Desc = "Automatically Buys Eggs In Stock",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					if type(TargetEggs) == "table" and #TargetEggs > 0 then
						for _, v in pairs(TargetEggs) do
							Module:BuyEgg(v)
						end
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})

	Stock:Toggle({
		Title = "Auto Buy All Eggs",
		Desc = "Automatically Buys All The Eggs In Stock",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit2:Disconnect(Connection2)

				Connection2 = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick2 = Current

					for _, v in pairs(Utility.SeedStock) do
						Module:BuyEgg(v)
					end
				end)
			else
				if Connection2 then
					ConnectionInit2:Disconnect(Connection2)
					Connection2 = nil
				end
			end
		end,
	})
end)

--// Player
Module:Init(function() --// Player Movement
	Library:CreateSection(Player, "Player Movement")
	local WalkSpeed = Collection["Player Movement"].WalkSpeed
	local JumpPower = Collection["Player Movement"].JumpPower
	local Gravity = Collection["Player Movement"].Gravity

	Player:Toggle({
		Title = "Change WalkSpeed",
		Desc = "Shows The Seed Shop UI",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			WalkSpeed.Enabled = State
		end,
	})

	Library:CreateSlider(Player, {
		Title = "Speed",
		Desc = "Change The Speed You Want",
		Step = 0.1,
		Value = {
			Min = 0,
			Max = 500,
			Default = 16,
		},
		Callback = function(Value)
			WalkSpeed.Speed = Value

			if WalkSpeed.Enabled then
				Humanoid.WalkSpeed = WalkSpeed.Speed
			end
		end,
	})

	Player:Toggle({
		Title = "Change JumpPower",
		Desc = "Changes Your Jump Power",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			JumpPower.Enabled = State
		end,
	})

	Library:CreateSlider(Player, {
		Title = "Power",
		Desc = "Change The Power You Want",
		Step = 0.1,
		Value = {
			Min = 0,
			Max = 500,
			Default = 50,
		},
		Callback = function(Value)
			JumpPower.Speed = Value

			if JumpPower.Enabled then
				Humanoid.JumpPower = JumpPower.Power
			end
		end,
	})

	Player:Toggle({
		Title = "Change Gravity",
		Desc = "Changes The Game's Gravity",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Gravity.Enabled = State
		end,
	})

	Library:CreateSlider(Player, {
		Title = "Gravity",
		Desc = "Change The Gravity However Want",
		Step = 0.1,
		Value = {
			Min = 0,
			Max = 500,
			Default = 192.1,
		},
		Callback = function(Value)
			Gravity.Gravity = Value

			if Gravity.Enabled then
				Utility.Workspace.Gravity = Gravity.Gravity
			end
		end,
	})
end)

Module:Init(function() --// Other, Player
	Library:CreateSection(Player, "Infinite Jump")
	Player:Toggle({
		Title = "Infinite Jump",
		Desc = "[Semi Flight] Lets you air jump",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			Utility.UserInputService.JumpRequest:connect(function()
				if State then
					Humanoid:ChangeState("Jumping")
				end
			end)
		end,
	})
end)

--// Visuals
Module:Init(function() --// Pet Spawner: Creds Sudais
	Visual:Section({ Title = "Pet Spawner" })
	local Name = ""
	local Weight = ""
	local Age = ""

	Library:CreateInput(Visual, {
		Title = "Input Pet Name",
		Placeholder = "E.g., Red Fox, Racoon, etc",
		Value = "",
		Callback = function(Text)
			Name = Text
		end,
	})

	Visual:Input({
		Title = "Input Pet Weight",
		Placeholder = "E.g., 8.5",
		Value = "",
		Callback = function(Text)
			Weight = Text
		end,
	})

	Visual:Input({
		Title = "Input Pet Age",
		Placeholder = "e.g., 100",
		Value = "",
		Callback = function(Text)
			Age = Text
		end,
	})

	Visual:Button({
		Title = "Spawn Pet",
		Callback = function()
			if not Name or Name == "" then
				Library.Async:Notify({
					Title = "Invalid Input",
					Content = "Please Enter a Valid Pet Name",
					Duration = 3,
					Icon = "alert-triangle",
				})
				return
			end

			local Model = Utility.PetAssets:FindFirstChild(Name)
			if not Model or not Model:IsA("Model") then
				Library.Async:Notify({
					Title = "Invalid Pet",
					Content = "The Pet: '" .. Name .. "' is invalid (Case sensitive)",
					Duration = 4,
					Icon = "x-circle",
				})

				return
			end

			local SelectedWeight = tonumber(Weight) or 1.5
			local SelectedAge = tonumber(Age) or 1.5
			Module:CreatePet(Name, SelectedAge, SelectedWeight)
			Library.Async:Notify({
				Title = "Pet Spawned",
				Content = "Spawned '" .. Name .. "' in backpack and equipped!",
				Duration = 3,
				Icon = "check-circle",
			})
		end,
	})

	Visual:Paragraph({
		Title = "How to Use",
		Desc = "Type a valid Pet name (e.g., 'Red Fox') and click 'Spawn Pet' to spawn and equip it.",
	})
end)

Module:Init(function() --// Egg Spawner: Creds Sudais
	local Egg = ""
	Visual:Section({
		Title = "Egg Spawner",
	})

	Visual:Input({
		Title = "Enter Egg Name",
		Placeholder = "e.g., Anti Bee Egg",
		Value = "",
		Callback = function(EggName)
			Egg = EggName
		end,
	})

	Visual:Button({
		Title = "Spawn Egg",
		Callback = function()
			if not Egg or Egg == "" then
				Library.Async:Notify({
					Title = "Invalid egg name",
					Content = "Please enter a valid egg name.",
					Duration = 3,
				})
				return
			end

			local Models = Utility.ReplicatedStorage.Assets.Models.EggModels
			if not Models then
				warn("Missing folder")
				return
			end

			local Model = Models:FindFirstChild(Egg)
			if not Model then
				Library.Async:Notify({
					Title = "Invalid Egg",
					Content = Egg .. " not found.",
					Duration = 3,
				})
				return
			end

			local EggTool = Instance.new("Tool")
			EggTool.Name = Egg .. " Egg [x1]"
			EggTool.RequiresHandle = true
			EggTool.Parent = BackPack

			local Handle = nil

			if Model:IsA("BasePart") then
				Handle = Model:Clone()
				Handle.Name = "Handle"
				Handle.Anchored = false
				Handle.CanCollide = false
				Handle.Parent = EggTool
			elseif Model:IsA("Model") then
				if Model.PrimaryPart then
					Handle = Model.PrimaryPart:Clone()
					Handle.Name = "Handle"
					Handle.Anchored = false
					Handle.CanCollide = false
					Handle.Parent = EggTool

					local ClonedModel = Model:Clone()
					for _, v in pairs(ClonedModel:GetChildren()) do
						if v:IsA("BasePart") and v ~= Model.PrimaryPart then
							v.Parent = EggTool
							v.Anchored = false
							v.CanCollide = false
							local Weld = Instance.new("WeldConstraint")
							Weld.Part0 = Handle
							Weld.Part1 = v
							Weld.Parent = EggTool
						end
					end
					ClonedModel:Destroy()
				else
					Handle = Instance.new("Part")
					Handle.Name = "Handle"
					Handle.Size = Vector3.new(0.5, 1, 0.5)
					Handle.Transparency = 1
					Handle.Anchored = false
					Handle.CanCollide = false
					Handle.Parent = EggTool

					local ClonedModel = Model:Clone()
					ClonedModel.Parent = EggTool

					for _, Part in pairs(ClonedModel:GetDescendants()) do
						if Part:IsA("BasePart") then
							Part.Anchored = false
							Part.CanCollide = false
							local Weld = Instance.new("WeldConstraint")
							Weld.Part0 = Handle
							Weld.Part1 = Part
							Weld.Parent = EggTool
						end
					end
				end
			else
				Library.Async:Notify({
					Title = "RWdnIG5vdCBmb3VuZA==",
					Content = "RWdnIG1vZGVsIGlzIG5vdCBhIFBhcnQgb3IgTW9kZWwu",
					Duration = 3,
				})
				EggTool:Destroy()

				return
			end

			if Handle then
				Humanoid:EquipTool(EggTool)
			end
		end,
	})
end)

Module:Init(function() --// Seed Pack Spawner: Creds Sudais (yes, pasted from the egg spawner)
	local Pack = ""
	Visual:Section({
		Title = "SeedPack Spawner",
	})

	Visual:Input({
		Title = "Enter SeedPack Name",
		Placeholder = "e.g., Flower Seed Pack",
		Value = "",
		Callback = function(PackName)
			Pack = PackName
		end,
	})

	Visual:Button({
		Title = "Spawn SeedPack",
		Callback = function()
			if not Pack or Pack == "" then
				Library.Async:Notify({
					Title = "Invalid pack name",
					Content = "Please enter a valid pack name.",
					Duration = 3,
				})
				return
			end

			local Models = Utility.ReplicatedStorage.Assets.Models.EggModels
			if not Models then
				warn("Missing folder")
				return
			end

			local Model = Models:FindFirstChild(Pack)
			if not Model then
				Library.Async:Notify({
					Title = "Invalid Pack",
					Content = Pack .. " not found.",
					Duration = 3,
				})
				return
			end

			local PackTool = Instance.new("Tool")
			PackTool.Name = Pack .. " [x1]"
			PackTool.RequiresHandle = true
			PackTool.Parent = BackPack

			local Handle = nil

			if Model:IsA("BasePart") then
				Handle = Model:Clone()
				Handle.Name = "Handle"
				Handle.Anchored = false
				Handle.CanCollide = false
				Handle.Parent = PackTool
			elseif Model:IsA("Model") then
				if Model.PrimaryPart then
					Handle = Model.PrimaryPart:Clone()
					Handle.Name = "Handle"
					Handle.Anchored = false
					Handle.CanCollide = false
					Handle.Parent = PackTool

					local ClonedModel = Model:Clone()
					for _, v in pairs(ClonedModel:GetChildren()) do
						if v:IsA("BasePart") and v ~= Model.PrimaryPart then
							v.Parent = PackTool
							v.Anchored = false
							v.CanCollide = false
							local Weld = Instance.new("WeldConstraint")
							Weld.Part0 = Handle
							Weld.Part1 = v
							Weld.Parent = PackTool
						end
					end
					ClonedModel:Destroy()
				else
					Handle = Instance.new("Part")
					Handle.Name = "Handle"
					Handle.Size = Vector3.new(0.5, 1, 0.5)
					Handle.Transparency = 1
					Handle.Anchored = false
					Handle.CanCollide = false
					Handle.Parent = PackTool

					local ClonedModel = Model:Clone()
					ClonedModel.Parent = PackTool

					for _, v in pairs(ClonedModel:GetDescendants()) do
						if v:IsA("BasePart") then
							v.Anchored = false
							v.CanCollide = false
							local Weld = Instance.new("WeldConstraint")
							Weld.Part0 = Handle
							Weld.Part1 = v
							Weld.Parent = PackTool
						end
					end
				end
			else
				Library.Async:Notify({
					Title = "RWdnIG5vdCBmb3VuZA==",
					Content = "RWdnIG1vZGVsIGlzIG5vdCBhIFBhcnQgb3IgTW9kZWwu",
					Duration = 3,
				})
				PackTool:Destroy()

				return
			end

			if Handle then
				Humanoid:EquipTool(PackTool)
			end
		end,
	})
end)

Module:Init(function() --// Seed Spawner: Creds Sudais
	Visual:Section({ Title = "Seed Spawner" })
	local SeedName = ""

	Visual:Input({
		Title = "Enter Seed Name",
		Placeholder = "e.g., Carrot",
		Value = "",
		Callback = function(Name)
			SeedName = Name
			Library.Async:Notify({
				Title = "Seed Set",
				Content = "Ready to spawn: " .. Name,
				Duration = 3,
				Icon = "check",
			})
		end,
	})

	Visual:Button({
		Title = "Spawn Seed",
		Callback = function()
			if not SeedName or SeedName == "" then
				Library.Async:Notify({
					Title = "Invalid Seed Nmae",
					Content = "Please enter a valid seed name.",
					Duration = 3,
					Icon = "alert-triangle",
				})
				return
			end

			local SeedModels = game:GetObjects("rbxassetid://125869296102137")[1] --// sudais when no more chatgpt :pray:
			if not SeedModels then
				warn("Seed Models not found")
				return
			end

			local Seed = SeedModels:FindFirstChild(SeedName)
			if not Seed then
				warn("Seed not found")
				return
			end

			local FakeTool = Instance.new("Tool")
			FakeTool.Name = SeedName .. " Seed [x1]"
			FakeTool.RequiresHandle = true
			FakeTool.Parent = BackPack

			local Handle = Seed:Clone()
			Handle.Name = "Handle"
			Handle.Size = Handle.Size * 1.5
			Handle.Parent = FakeTool

			Humanoid:EquipTool(FakeTool)
			Library.Async:Notify({
				Title = "Success",
				Content = "You are now holding: " .. FakeTool.Name,
				Duration = 3,
				Icon = "check-circle",
			})
			Library.Async:Notify({
				Title = "Error",
				Content = "No Humanoid found in character to equip tool.",
				Duration = 3,
				Icon = "x-circle",
			})
		end,
	})

	Visual:Paragraph({
		Title = "How To Use",
		Desc = "Type a valid Seed Name eg.. Candy Blossom And Click Spawn Seed to Spawn it",
	})
end)

--// Event
Module:Init(function()
	Library:CreateSection(Event, "Zen Event")
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0

	Event:Toggle({
		Title = "Auto Submit Zen Event",
		Desc = "Automatically Inputs Ur Plants In The Zen Event ( newest )",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < 5 then
						return
					end
					LastTick = Current

					Utility.GameEvents:WaitForChild("ZenQuestRemoteEvent"):FireServer("SubmitAllPlants")
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})
end)

--// Misc
Module:Init(function() --// Auto Move Plants
	Library:CreateSection(Misc, "Auto Move Plants (Trowel Required)")
	local TargetPlants = Collection["Auto Move"].TargetPlants
	local MoveMethod = Collection["Auto Move"].MoveMethod
	local Delay2 = Collection["Auto Move"].Delay

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0

	local Farm, Important = Module:GetFarm()

	Library:CreateDropdown(Misc, {
		Title = "Plants To Move",
		Values = Module:SortArray(Utility.Fruits),
		Value = { "All" },
		Multi = true,
		AllowNone = true,
		Callback = function(option)
			TargetPlants = option
		end,
	})

	Library:CreateDropdown(Misc, {
		Title = "Move Method",
		Values = { "UnderPlayer", "UnderMouse", "Random" },
		Value = "UnderPlayer",
		Multi = false,
		AllowNone = true,
		Callback = function(option)
			MoveMethod = option
		end,
	})

	Misc:Toggle({
		Title = "Auto Move Plants",
		Desc = "Automatically Moves Plants In The Selected Place",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					local Plants = Module:GetPhysicalPlants()
					local Trowel = Module:GetTrowel(true)

					if Trowel then
						if table.find(TargetPlants, "All") then
							for _, v in pairs(Plants) do
								Module:MovePlant(Trowel, v, MoveMethod)
							end
						else
							for _, v in pairs(Plants) do
								if table.find(TargetPlants, v.Name) then
									Module:MovePlant(Trowel, v, MoveMethod)
								end
							end
						end
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end

				local Plants = Module:GetPhysicalPlants()
				for _, v in pairs(Plants) do
					if v:GetAttribute("Moved") ~= nil then
						v:SetAttribute("Moved", nil)
					end
				end
			end
		end,
	})
end)

Module:Init(function() --// Teleport to places
	Library:CreateSection(Misc, "Teleport to places")
	local TpZone = Collection.Teleport.Place

	Library:CreateDropdown(Misc, {
		Title = "Teleport Zones",
		Values = { "Gear Shop", "Pet Shop", "Middle", "Cosmetics Shop", "Crafting Zone" },
		Value = "Middle",
		Multi = false,
		AllowNone = true,
		Callback = function(option)
			TpZone = option
		end,
	})

	Library:CreateButton(Misc, {
		Title = "Tp To Zone",
		Desc = "Teleports you to the selected zone",
		Locked = false,
		Callback = function()
			for i, v in pairs(Utility.Positions) do
				if i == TpZone then
					HumanoidRootPart.CFrame = v
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Hatch Eggs
	Library:CreateSection(Misc, "Hatching Eggs")
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 5

	local Farm, Imp = Module:GetFarm()

	Misc:Toggle({
		Title = "Auto Hatch Eggs",
		Desc = "Automatically hatches all the ready eggs in ur garden",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					for _, v in pairs(Imp:FindFirstChild("Objects_Physical"):GetChildren()) do
						if v.Name == "PetEgg" and v:GetAttribute("READY", true) then
							Module:ManagePetService("HatchPet", v)
						end
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})

	Library:CreateButton(Misc, {
		Title = "Hatch All Pets",
		Desc = "Hatches all the ready eggs in ur garden",
		Locked = false,
		Callback = function()
			for _, v in pairs(Imp:FindFirstChild("Objects_Physical"):GetChildren()) do
				if v.Name == "PetEgg" and v:GetAttribute("READY", true) then
					Module:ManagePetService("HatchPet", v)
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Place Eggs
	Library:CreateSection(Misc, "Placing Eggs")

	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 1
	local Farm, Imp = Module:GetFarm()

	Misc:Toggle({
		Title = "Auto Place Eggs",
		Desc = "Automatically Places All The Eggs In Ur Inventory",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					local Has, Apply = Module:HasItem("Egg", true)

					if Has then
						Module:ManagePetService("CreateEgg", Module:GetPosition("Random"))
					else
						for _, v in pairs(Character:GetChildren()) do
							if v:IsA("Tool") and v.Name:find("Egg") then
								Module:ManagePetService("CreateEgg", Module:GetPosition("Random"))
							end
						end
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})

	local HatchAllButton = Library:CreateButton(Misc, {
		Title = "Place All Eggs",
		Desc = "places all the eggs in ur inventory",
		Locked = false,
		Callback = function()
			local Has, Apply = Module:HasItem("Egg", true)

			if Has then
				Module:ManagePetService("CreateEgg", Module:GetPosition("Random"))
			else
				for _, v in pairs(Character:GetChildren()) do
					if v:IsA("Tool") and v.Name:find("Egg") then
						Module:ManagePetService("CreateEgg", Module:GetPosition("Random"))
					end
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Open Crates
	Library:CreateSection(Misc, "Opening Crates")
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 5

	local Farm, Imp = Module:GetFarm()

	Misc:Toggle({
		Title = "Auto Open Crates",
		Desc = "Automatically opens all the ready crates in ur garden",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					for _, v in pairs(Imp:FindFirstChild("Objects_Physical"):GetChildren()) do
						if v.Name == "CosmeticCrate" and v:GetAttribute("READY", true) then
							Module:ManageCrateService("OpenCrate", v)
						end
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})

	Library:CreateButton(Misc, {
		Title = "Open All Crates",
		Desc = "Opens all the ready crates in ur garden",
		Locked = false,
		Callback = function()
			for _, v in pairs(Imp:FindFirstChild("Objects_Physical"):GetChildren()) do
				if v.Name == "CosmeticCrate" and v:GetAttribute("READY", true) then
					Module:ManageCrateService("OpenCrate", v)
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Place Crates
	Library:CreateSection(Misc, "Placing Crates")
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 1
	local Farm, Imp = Module:GetFarm()

	Misc:Toggle({
		Title = "Auto Place Crates",
		Desc = "Automatically places all the crates in ur inventory",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					local Has, Apply = Module:HasItem("Crate", true)

					if Has then
						Module:ManageCrateService("CreateCrate", Module:GetPosition("Random"))
					else
						for _, v in pairs(Character:GetChildren()) do
							if v:IsA("Tool") and v.Name:find("Crate") then
								Module:ManagePetService("CreateCrate", Module:GetPosition("Random"))
							end
						end
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})

	Library:CreateButton(Misc, {
		Title = "Place All Crates",
		Desc = "Places All The Crates In Ur Inventory",
		Locked = false,
		Callback = function()
			local Has, Apply = Module:HasItem("Crate", true)

			if Has then
				Module:ManageCrateService("CreateCrate", Module:GetPosition("Random"))
			else
				for _, v in pairs(Character:GetChildren()) do
					if v:IsA("Tool") and v.Name:find("Crate") then
						Module:ManagePetService("CreateCrate", Module:GetPosition("Random"))
					end
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Feed Pets, Creds MrScam
	Library:CreateSection(Misc, "Auto Feed Pets")
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 1

	getgenv().Setting = {
		["Dont Sell If It Is Mutated"] = {},
		PercentageToFeed = 80,
	}

	function GetPetData(PetUUID)
		local TimeoutTime = tick()
		local Pet = nil
		repeat
			task.wait(1)
			local result = Utility.ActivePetsService:GetPetData(LocalPlayer.Name, PetUUID)
			if result then
				Pet = result
			end
		until Pet ~= nil or tick() - TimeoutTime > 30
		return Pet
	end

	function GetCurrentHungerPercentage(PetUUId)
		local Data = GetPetData(PetUUId)
		local CurrentHunger, DefaultHunger = Data.PetData.Hunger, Utility.PetList[Data.PetType].DefaultHunger
		return (CurrentHunger / DefaultHunger) * 100
	end

	function CheckHoldableMutations(Holdable)
		local MutationList = Setting["Dont Sell If It Is Mutated"]
		if #MutationList <= 0 then
			return true
		end
		for _, Mutation in pairs(MutationList) do
			if Holdable:GetAttribute(Mutation) or string.find(Holdable.Name, Mutation) then
				return false
			end
		end

		return true
	end

	function GetPlantCanFeed()
		local Item = LocalPlayer.Character:FindFirstChildOfClass("Tool")
		if Item then
			if Item:GetAttribute("b") == "j" and not Item:GetAttribute("d") and CheckHoldableMutations(Item) then
				return Item
			end
		end

		local Plants = {}
		for _, Item in pairs(LocalPlayer.Backpack:GetChildren()) do
			if Item:GetAttribute("b") == "j" and not Item:GetAttribute("d") and CheckHoldableMutations(Item) then
				table.insert(Plants, Item)
			end
		end
		return Plants
	end

	function FeedPet(PetUUId)
		local Plants = GetPlantCanFeed()
		if type(Plants) == "table" and #Plants <= 0 then
			return
		end
		repeat
			wait()
			if type(Plants) ~= "table" then
				Utility.ActivePetService:FireServer("Feed", PetUUId)
			elseif #Plants > 0 then
				for _, Item in Plants do
					if Item.Parent == LocalPlayer.Backpack then
						Item.Parent = LocalPlayer.Character
						wait(0.2)
					end
					Utility.ActivePetService:FireServer("Feed", PetUUId)
				end
			end
			local Plants = GetPlantCanFeed()
		until (type(Plants) == "table" and #Plants <= 0)
			or (GetCurrentHungerPercentage(PetUUId) > Setting.PercentageToFeed or 70)
	end

	function GetEquippedPetsUUId()
		if #Utility.DataService:GetData().PetsData.EquippedPets <= 0 then
			return nil
		end
		local PetUUIdList = {}
		for _, PetUUId in Utility.DataService:GetData().PetsData.EquippedPets do
			table.insert(PetUUIdList, PetUUId)
		end
		return PetUUIdList
	end

	Misc:Toggle({
		Title = "Auto Feed Pets",
		Desc = "Automatically Feeds The Pets In Ur Garden",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current
					if GetEquippedPetsUUId() and State then
						local ListPet = GetEquippedPetsUUId()
						for _, PetUUId in ListPet do
							local PerCentage = GetCurrentHungerPercentage(PetUUId)
							if PerCentage <= Setting.PercentageToFeed or 70 then
								FeedPet(PetUUId)
							end
						end
					end
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})
end)

Module:Init(function() --// Steal Fruits
	Library:CreateSection(Misc, "Stealing Features")
	local BestFruit

	Library:CreateButton(Misc, {
		Title = "Find Best Fruit",
		Desc = "Finds the best fruit in the server",
		Locked = false,
		Callback = function()
			local Fruit, Value = Module:GetBestFruit()

			if Fruit then
				BestFruit = Fruit

				Module:Init(function()
					Module:SendNotification('<font color="rgb(173,216,230)">Fruit Found!</font>')
					Module:SendNotification(
						'<font color="rgb(173,216,230)">You can now use the other features below</font>'
					)
					Module:SendNotification("Fruit Name: " .. Fruit.Name .. " Fruit Value: " .. tostring(Value) .. "")
				end)
			else
				warn("Couldn't Find Fruit")
			end
		end,
	})

	Library:CreateButton(Misc, {
		Title = "Teleport To The Best Fruit",
		Desc = "Teleport to the best fruit in the server",
		Locked = false,
		Callback = function()
			local Fruit = Module:GetBestFruit()

			if Fruit then
				local Primary = Fruit.PrimaryPart

				if Primary then
					HumanoidRootPart.CFrame = Primary.CFrame
				else
					warn("no primarypart")
				end
			else
				warn("Please Click 'Find the best fruit' Before Using This")
			end
		end,
	})

	Library:CreateButton(Misc, {
		Title = "Steal Best Fruit ( use tp first )",
		Desc = "Steal the best fruit in the server",
		Locked = false,
		Callback = function()
			local Fruit = Module:GetBestFruit()

			if Fruit then
				local Proxy = Module:GetProxy(Fruit)

				if Proxy then
					fireproximityprompt(Proxy)
				end
			else
				warn("Please Click 'Find the best fruit' Before Using This")
			end
		end,
	})
end)

Module:Init(function() --// Claim Gifts: creds void
	Library:CreateSection(Misc, "Gifts")
	local ConnectionInit = Module:SpawnConnection()
	local Connection = nil
	local LastTick = 0
	local Delay2 = 2

	Misc:Toggle({
		Title = "Auto Place Crates",
		Desc = "Automatically places all the crates in ur inventory",
		Icon = "check",
		Type = "Checkbox",
		Default = false,
		Callback = function(State)
			if State == true then
				ConnectionInit:Disconnect(Connection)

				Connection = ConnectionInit:Connect("Heartbeat", function()
					local Current = tick()
					if Current - LastTick < Delay2 then
						return
					end
					LastTick = Current

					local FriendGiftEvent = Utility.ReplicatedStorage.GameEvents.FriendGiftEvent
					FriendGiftEvent.OnClientEvent:Connect(function()
						if State then
							replicatesignal(
								Utility.PlayerGui.Gift_Notification.Frame:WaitForChild("Gift_Notification").Holder.Frame.Accept.MouseButton1Click
							)
						end
					end)
				end)
			else
				if Connection then
					ConnectionInit:Disconnect(Connection)
					Connection = nil
				end
			end
		end,
	})
end)

--// Exclusive
Module:Init(function() --// Pet Freezer
	Library:CreateSection(Exclusive, "Freeze Pets (works on mooncats)")

	Library:CreateButton(Exclusive, {
		Title = "Pet Freezer",
		Desc = "Freeze all the pets in the game",
		Locked = false,
		Callback = function()
			local PetsPhysical = Utility.Workspace.PetsPhysical

			for _, v in pairs(PetsPhysical:GetChildren()) do
				if v:IsA("Part") then
					v.Anchored = false
				end
			end
		end,
	})

	Library:CreateButton(Exclusive, {
		Title = "Pet UnFreezer",
		Desc = "UnFreeze all the pets in the game",
		Locked = false,
		Callback = function()
			local PetsPhysical = Utility.Workspace.PetsPhysical

			for _, v in pairs(PetsPhysical:GetChildren()) do
				if v:IsA("Part") then
					v.Anchored = true
				end
			end
		end,
	})
end)

Module:Init(function() --// Auto Craft Seeds
	Library:CreateSection(Exclusive, "Auto Craft Seeds")
	local SeedToCraft = Collection.Crafters["Seed Crafting"].Seed
	print(type(Utility.Crafting["Seed Recipes"]))

	Library:CreateDropdown(Exclusive, {
		Title = "Seed to Craft",
		Values = Module:SortArray(Utility.Crafting["Seed Recipes"]),
		Value = "Peace Lily",
		Multi = false,
		AllowNone = true,
		Callback = function(option)
			SeedToCraft = option
		end,
	})

	Library:CreateButton(Exclusive, {
		Title = "Craft Selected Seed",
		Desc = "Crafts the seed you selected",
		Locked = false,
		Callback = function()
			Module:Craft(SeedToCraft, 1)
		end,
	})
end)

Module:Init(function() --// Auto Craft Gears
	Library:CreateSection(Exclusive, "Auto Craft Gears")
	local GearToCraft = Collection.Crafters["Gear Crafting"].Gear

	Library:CreateDropdown(Exclusive, {
		Title = "Gear to Craft",
		Values = Module:SortArray(Utility.Crafting["Gear Recipes"]),
		Value = GearToCraft,
		Multi = false,
		AllowNone = true,
		Callback = function(option)
			GearToCraft = option
		end,
	})

	Library:CreateButton(Exclusive, {
		Title = "Craft Selected Seed",
		Desc = "Crafts the seed you selected",
		Locked = false,
		Callback = function()
			Module:Craft(GearToCraft, 2)
		end,
	})
end)

Module:Init(function() --// Auto Craft Event Items
	Library:CreateSection(Exclusive, "Auto Craft Event Items")
	local ItemToCraft = Collection.Crafters["Event Crafting"].Item

	Library:CreateDropdown(Exclusive, {
		Title = "Item to Craft",
		Values = Module:SortArray(Utility.Crafting["Dino Recipes"]),
		Value = ItemToCraft,
		Multi = false,
		AllowNone = true,
		Callback = function(option)
			ItemToCraft = option
		end,
	})

	Library:CreateButton(Exclusive, {
		Title = "Craft Selected Item",
		Desc = "Crafts the item you selected",
		Locked = false,
		Callback = function()
			Module:Craft(ItemToCraft, 3)
		end,
	})
end)

Module:Init(function() --// Exit //--
	Module:SendNotification('<font color="rgb(173,216,230)">Thanks for using Starfall!</font>')
	Module:SendNotification('<font color="rgb(173,216,230)">Join Our Discord For More Updates</font>')
	Module:SendNotification('<font color="rgb(173,216,230)">Scripted by severitysvc :heart: </font>')
end)
