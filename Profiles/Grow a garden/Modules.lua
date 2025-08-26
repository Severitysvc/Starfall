local Module = {}
Module.__index = Module

local Utility = loadstring(
	game:HttpGet(
		"https://raw.githubusercontent.com/Severitysvc/Starfall/refs/heads/main/Profiles/Grow%20a%20garden/Utility.lua"
	)
)()

local BackPack = Utility.BackPack
local HumanoidRootPart = Utility.HumanoidRootPart
local Humanoid = Utility.Humanoid
local LocalPlayer = Utility.LocalPlayer
local Character = Utility.Character
local Mouse = Utility.Mouse

--// Mechanic Funcs
function Module:Init(Function)
	if type(Function) ~= "function" then
		error("[Module]: {Function} must be a function")
		return
	end

	pcall(Function)
end

function Module:SendNotification(Text)
	Utility.NotificationHandler.CreateNotification(_, Text)
end

function Module:SpawnConnection()
	local ConnectionHandler = {}

	function ConnectionHandler:Connect(Type, Callback)
		local Connection

		if Type == "Heartbeat" then
			Connection = Utility.RunService.Heartbeat:Connect(function()
				Callback()
			end)
		elseif Type == "RenderStepped" then
			Connection = Utility.RunService.RenderStepped:Connect(function()
				Callback()
			end)
		end

		return Connection
	end

	function ConnectionHandler:Disconnect(Connection)
		if Connection and Connection.Connected then
			Connection:Disconnect()
		end
	end

	return ConnectionHandler
end

function Module:ServerHop(PlaceId, JobId, OldestServer)
	local Cursor = ""
	local Servers = {}
	local Valid = nil

	while true do
		local Url = string.format(
			"https://games.roblox.com/v1/games/%d/servers/Public?limit=100&sortOrder=Asc&cursor=%s",
			PlaceId,
			Cursor
		)

		local Success, Response = pcall(function()
			return Utility.HttpService:JSONDecode(game:HttpGet(Url))
		end)

		if Success and Response and Response.data then
			for _, v in ipairs(Response.data) do
				if v.id ~= JobId and v.playing < v.maxPlayers then
					if OldestServer then
						Valid = v
						break
					else
						table.insert(Servers, v.id)
					end
				end
			end

			if OldestServer and Valid then
				break
			elseif not Response.nextPageCursor then
				break
			else
				Cursor = Response.nextPageCursor
			end
		else
			break
		end
	end

	if OldestServer and Valid then
		Utility.TeleportService:TeleportToPlaceInstance(PlaceId, Valid.id, LocalPlayer)
	elseif not OldestServer and #Servers > 0 then
		local RandomServerId = Servers[math.random(1, #Servers)]
		Utility.TeleportService:TeleportToPlaceInstance(PlaceId, RandomServerId, LocalPlayer)
	end
end

function Module:HasItem(ItemName, Apply)
	local Backpack = LocalPlayer:FindFirstChild("Backpack")
	if not Backpack then
		return false
	end
	for _, v in pairs(Backpack:GetChildren()) do
		if v:IsA("Tool") and v.Name:lower():find(ItemName:lower()) then
			if Apply then
				Humanoid:EquipTool(v)
			end
			return true, v
		end
	end

	for _, v in pairs(Character:GetChildren()) do
		if v:IsA("Tool") and v.Name:lower():find(ItemName:lower()) then
			return true, v
		end
	end

	return false
end

function Module:FireRemote(RemoteName, Arg1, Arg2) --// This is from the craftig module
	local CraftingTables = workspace:WaitForChild("CraftingTables")
	local Remote =
		game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("CraftingGlobalObjectService")
	if RemoteName == "SetRecipe1" then
		Remote:FireServer("SetRecipe", CraftingTables:WaitForChild("SeedEventCraftingWorkBench"), Arg1, Arg2)
	elseif RemoteName == "SetRecipe2" then
		Remote:FireServer("SetRecipe", CraftingTables:WaitForChild("EventCraftingWorkBench"), Arg1, Arg2)
	elseif RemoteName == "Polinate" then
		Utility.GameEvents:WaitForChild("HoneyMachineService_RE"):FireServer("MachineInteract")
	elseif RemoteName == "SetRecipe3" then
		Remote:FireServer(
			"SetRecipe",
			workspace
				:WaitForChild("Interaction")
				:WaitForChild("UpdateItems")
				:WaitForChild("DinoEvent")
				:WaitForChild("DinoCraftingTable"),
			Arg1,
			Arg2
		)
	elseif RemoteName == "BuyGear" then
		local Args = { Arg1 }
		Utility.GameEvents:WaitForChild("BuyGearStock"):FireServer(unpack(Args))
	end
end

function Module:SortArray(Array)
	if type(Array) ~= "table" then
		error("[Module]: Array must be a table")
	end

	table.sort(Array, function(a, b)
		return tostring(a):lower() < tostring(b):lower()
	end)

	return Array
end

--// Farming Modules, Categ: Auto Harvest
function Module:IsMaxInventory()
	return Utility.InventorySerice.IsMaxInventory()
end

function Module:GetFarm()
	local Farm = Utility.Workspace:FindFirstChild("Farm")

	for _, v in pairs(Farm:GetChildren()) do
		if
			v:IsA("Folder")
			and v:FindFirstChild("Important"):FindFirstChild("Data"):FindFirstChild("Owner").Value
				== LocalPlayer.Name
		then
			return v, v:FindFirstChild("Important")
		end
	end

	return nil, nil
end

function Module:GetPlants(Farm)
	local Plants = {}

	for _, v in pairs(Farm:GetDescendants()) do
		if v:IsA("Model") and v:FindFirstChild("Grow") then
			if v:FindFirstChild("Fruits") then
				for _, v in pairs(v.Fruits:GetChildren()) do
					if v:IsA("Model") and v:FindFirstChild("Grow") then
						table.insert(Plants, v)
					end
				end
			else
				table.insert(Plants, v)
			end
		end
	end

	return Plants
end

function Module:GetBestFruit()
	local BestFruit = nil
	local HighestValue = -math.huge

	for _, V in pairs(self:GetPlants(Utility.Workspace.Farm)) do
		if V:IsA("Model") and V:FindFirstChild("Grow") then
			if V:FindFirstChild("Fruits") then
				for _, V2 in pairs(V:GetChildren()) do
					local Value = Utility.CalculateValue(V2)
					if Value and Value > HighestValue then
						HighestValue = Value
						BestFruit = V2
					end
				end
			else
				local Value = Utility.CalculateValue(V)
				if Value and Value > HighestValue then
					HighestValue = Value
					BestFruit = V
				end
			end
		end
	end

	return BestFruit, HighestValue
end

function Module:GetProxy(Plant)
	for _, v in pairs(Plant:GetDescendants()) do
		if v:IsA("ProximityPrompt") and v.Name == "ProximityPrompt" then
			return v
		end
	end

	return nil
end

function Module:HasMutation(Plant, Mutation)
	local Variants = { "Gold", "Rainbow" }

	if type(Mutation) == "string" then
		for _, v in pairs(Variants) do
			if Mutation == v then
				local Variant = Plant:FindFirstChild("Variant")
				if Variant and Variant.Value == v then
					return true
				end
			else
				if Plant:GetAttribute(Mutation, true) then
					return true
				end
			end
		end
	elseif type(Mutation) == "table" then
		for _, v in pairs(Mutation) do
			if self:HasMutation(Plant, v) then
				return true
			end
		end
	end

	return false
end

function Module:HarvestPlant(Plant)
	local Proxy = self:GetProxy(Plant)
	if not Proxy then
		warn("[Module:HarvestPlant] No proxy found for plant: " .. Plant.Name)
		return
	end

	if Proxy.Enabled then
		fireproximityprompt(Proxy)
	end
end

--// Categ: Auto Plant
function Module:Plant(Position, Name)
	local args = {
		Position,
		Name,
	}

	Utility.GameEvents:WaitForChild("Plant_RE"):FireServer(unpack(args))
end

function Module:GetSeeds()
	local Seeds = {}

	for _, v in pairs(BackPack:GetChildren()) do
		if v:IsA("Tool") and v.Name:find("Seed") then
			table.insert(Seeds, v)
			return Seeds
		end
	end

	for _, v in pairs(Character:GetChildren()) do
		if v:IsA("Tool") and v.Name:find("Seed") then
			table.insert(Seeds, v)
			return Seeds
		end
	end

	return Seeds
end

function Module:GetPosition(PlantMethod)
	if PlantMethod == "Random" then
		local Farm = self:GetFarm()
		local PetArea = Farm and Farm:FindFirstChild("PetArea")

		if not PetArea then
			warn("[GetPosition]: PetArea not found")
			return nil
		end

		local Area = PetArea.Size

		local X = (math.random() - 0.5) * Area.X
		local Y = (math.random() - 0.5) * Area.Y
		local Z = (math.random() - 0.5) * Area.Z

		return PetArea.Position + Vector3.new(X, Y, Z)
	elseif PlantMethod == "UnderPlayer" then
		return HumanoidRootPart and HumanoidRootPart.Position or nil
	elseif PlantMethod == "UnderMouse" then
		if Mouse and Mouse.Target then
			return Mouse.Hit.p
		else
			return nil
		end
	else
		error("[GetPosition]: Invalid Method, " .. tostring(PlantMethod))
		return nil
	end
end

--// Categ: Stock
function Module:BuySeed(Name)
	local args = {
		Name,
	}

	Utility.GameEvents:WaitForChild("BuySeedStock"):FireServer(unpack(args))
end

function Module:BuyGear(Name)
	local args = {
		Name,
	}

	Utility.GameEvents:WaitForChild("BuyGearStock"):FireServer(unpack(args))
end

function Module:BuyEgg(Name)
	local args = {
		Name,
	}
	Utility.GameEvents:WaitForChild("BuyPetEgg"):FireServer(unpack(args))
end

--// Event Modules, Categ: Input Pets
function Module:GetPets()
	local Pets = {}
	local PetStrings = {}

	for _, v in pairs(BackPack:GetChildren()) do
		if v:GetAttribute("b", "l") and v:FindFirstChild("PetToolLocal") then
			table.insert(Pets, v)
			table.insert(PetStrings, v.Name)
		end
	end

	return Pets, PetStrings
end

--// Categ: Auto Quest
function Module:UpdateQuest(Quest)
	local UI = Utility.PlayerGui.DinoQuests_UI.Frame.Main.Holder.Tasks

	Quest.Quest1.Name = ""
	Quest.Quest1.Progress = "Unknown"
	Quest.Quest1.Completed = false

	Quest.Quest2.Name = ""
	Quest.Quest2.Progress = "Unknown"
	Quest.Quest2.Completed = false

	Quest.Quest3.Name = ""
	Quest.Quest3.Progress = "Unknown"
	Quest.Quest3.Completed = false

	local Index = 1
	local Keys = { "Quest1", "Quest2", "Quest3" }

	for _, v in ipairs(UI:GetChildren()) do
		if v:IsA("Frame") and v:FindFirstChild("TASK_NAME") and Index <= 3 then
			local Name = v.TASK_NAME.Text
			local Progress = "Unknown"
			local Completed = false
			if v:FindFirstChild("PROGRESS") then
				Progress = v.PROGRESS.Text
				local Current, Total = Progress:match("(%d+)/(%d+)")

				if Current and Total then
					Completed = (tonumber(Current) >= tonumber(Total))
				end
			end
			local Key = Keys[Index]
			Quest[Key].Name = Name
			Quest[Key].Progress = Progress
			Quest[Key].Completed = Completed

			Index = Index + 1
		end
	end
end

--// Misc Modules, Categ: Eggs
function Module:ManagePetService(Action, Arg)
	local args = {
		Action,
		Arg,
	}
	Utility.GameEvents:WaitForChild("PetEggService"):FireServer(unpack(args))
end

--// Categ: Crates
function Module:ManageCrateService(Action, Arg)
	local args = {
		Action,
		Arg,
	}
	Utility.GameEvents:WaitForChild("CosmeticCrateService"):FireServer(unpack(args))
end

--// Exclusive Modules, Categ: Crafting
function Module:GetPolinated(Equip)
	for _, v in pairs(Utility.LocalPlayer.Backpack:GetChildren()) do
		if v.Name:find("Polinated") then
			if Equip then
				Humanoid:EquipTool(v)
			end

			return v
		end
	end

	for _, v in pairs(Utility.LocalPlayer.Character:GetChildren()) do
		if v.Name:find("Polinated") and v:IsA("Tool") then
			return v
		end
	end

	return nil
end

function Module:InsertFruit()
	local args = {
		"MachineInteract",
	}
	Utility.GameEvents:WaitForChild("HoneyMachineService_RE"):FireServer(unpack(args))
end

function Module:RefreshSelectionUI(Number)
	local SelectionUI = Utility.LocalPlayer.PlayerGui:FindFirstChild("RecipeSelection_UI")
	if not SelectionUI then
		return
	end

	if Number == 1 then
		local Prompt = workspace.CraftingTables.SeedEventCraftingWorkBench.Model.BenchTable.CraftingProximityPrompt
		fireproximityprompt(Prompt)
	elseif Number == 2 then
		local Prompt = workspace.CraftingTables.EventCraftingWorkBench.Model:GetChildren()[4].CraftingProximityPrompt
		fireproximityprompt(Prompt)
	end

	SelectionUI.Enabled = false
	Utility.Lighting:FindFirstChild("Blur").Enabled = false
end

function Module:SetCraftingRecipe(ItemName, Bench)
	if typeof(Bench) ~= "number" or typeof(ItemName) ~= "string" then
		return
	end

	self:RefreshSelectionUI(Bench)
	task.wait(0.2)

	local SelectionUI = Utility.LocalPlayer.PlayerGui:WaitForChild("RecipeSelection_UI")
	local Frame = SelectionUI:WaitForChild("Frame")
	local Scroll = Frame:WaitForChild("ScrollingFrame")

	for _, v in pairs(Scroll:GetChildren()) do
		if v:IsA("Frame") and not v.Name:find("_Padding") then
			local FrameName = v.Name:gsub("_", " "):lower()
			if FrameName:find(ItemName:lower()) then
				if Bench == 1 then
					self:FireRemote("SetRecipe1", "SeedEventWorkbench", ItemName)
				elseif Bench == 2 then
					self:FireRemote("SetRecipe2", "GearEventWorkbench", ItemName)
				end
				return v
			end
		end
	end

	if Bench == 1 then
		self:FireRemote("SetRecipe1", "SeedEventWorkbench", ItemName)
	elseif Bench == 2 then
		self:FireRemote("SetRecipe2", "GearEventWorkbench", ItemName)
	elseif Bench == 3 then
		self:FireRemote("SetRecipe3", "DinoEventWorkbench", ItemName)
	end
end

function Module:GetIngredients(Recipe)
	local Ingredients = {}
	if typeof(Recipe) ~= "Instance" then
		return Ingredients
	end

	local MainFrame = Recipe:FindFirstChild("Main_Frame")
	local Display = MainFrame and MainFrame:FindFirstChild("Display")
	local Details = Display and Display:FindFirstChild("RecipeDetails")
	if not Details then
		return Ingredients
	end

	local Timeout, Elapsed = 2, 0
	while #Details:GetChildren() == 0 and Elapsed < Timeout do
		task.wait(0.1)
		Elapsed += 0.1
	end

	if #Details:GetChildren() == 0 then
		return Ingredients
	end

	for _, v in pairs(Details:GetChildren()) do
		if v:IsA("Frame") then
			local ItemName = v:FindFirstChild("ItemName")
			local ItemAmount = v:FindFirstChild("ItemAmount")
			if ItemName and ItemName:IsA("TextLabel") then
				Ingredients[ItemName.Text] = tonumber(ItemAmount.Text:match("%d+"))
			end
		end
	end

	return Ingredients
end

function Module:SubmitItem(Number)
	if Number == 1 then
		local Prompt = workspace.CraftingTables.SeedEventCraftingWorkBench.Model.BenchTable.CraftingProximityPrompt
		fireproximityprompt(Prompt)
	elseif Number == 2 then
		local Prompt = workspace.CraftingTables.EventCraftingWorkBench.Model:GetChildren()[4].CraftingProximityPrompt
		fireproximityprompt(Prompt)
	elseif Number == 3 then
		local Prompt
		for _, v in pairs(workspace.Interaction.UpdateItems.DinoEvent:GetDescendants()) do
			if v.Name == "CraftingProximityPrompt" then
				Prompt = v
			end
		end

		fireproximityprompt(Prompt)
	end
end

function Module:Craft(Item, Bench)
	local Recipe = self:SetCraftingRecipe(Item, Bench)
	task.wait(0.25)
	local Ingredients = self:GetIngredients(Recipe)
	local Submitted = false
	for I, V in pairs(Ingredients) do
		if I ~= "Name" then
			if I == "Honey" then
				local HoneyAmount = Utility.LocalPlayer.PlayerGui.Honey_UI.Frame.TextLabel1.val.Value
				if HoneyAmount and HoneyAmount < V then
					local Has, Tool = self:HasItem("Polinated", true)
					if Has then
						self:FireRemote("Polinate")
					else
						local Found = false
						for _, Obj in pairs(self:GetFarm().Important:GetChildren()) do
							if Obj:IsA("Model") and Obj:GetAttribute("Polinated") then
								for _, Prompt in pairs(Obj:GetDescendants()) do
									if Prompt:IsA("ProximityPrompt") then
										fireproximityprompt(Prompt)
										task.wait(0.1)
										local HasTool = self:HasItem("Polinated", true)
										if HasTool then
											self:FireRemote("Polinate")
											Found = true
											break
										end
									end
								end
							end
							if Found then
								break
							end
						end
					end
				end
			elseif I:find("Sprinkler") then
				local Has, Tool = self:HasItem(I, true)
				if Has then
					task.wait(1)
					self:SubmitItem(Bench)
					Submitted = true
				else
					local GearShop = Utility.LocalPlayer.PlayerGui.Gear_Shop.Frame.ScrollingFrame
					if GearShop:FindFirstChild(I) then
						local MainFrame = GearShop[I]:FindFirstChild("Main_Frame")
						local Stock = MainFrame and MainFrame:FindFirstChild("Stock_Text")
						if Stock then
							local Tries = 0
							while Stock.Text == "X0 Stock" and Tries < 50 do
								task.wait(0.2)
								Tries += 1
							end

							if Stock.Text ~= "X0 Stock" then
								self:FireRemote("BuyGear", I)
							end
						end
					end
				end
			else
				local Has, Tool = self:HasItem(I, true)
				if Has and Tool then
					local ItemType
					for i, v3 in pairs(Utility.Types) do
						if v3 == Tool:GetAttribute("b") then
							ItemType = i
							break
						end
					end
					if ItemType then
						task.wait(1)
						self:SubmitItem(Bench)
						Submitted = true
					end
				end
			end
		end
	end
end

--// Visuals, Categ: Pet Spawner
local Pets = {}
local GetPet, RemovePet
for _, v in pairs(getgc()) do
	if type(v) == "function" then
		if debug.getinfo(v).name == "GetPet" then
			GetPet = v
		elseif debug.getinfo(v).name == "RemovePet" then
			RemovePet = v
		end
	end
end

function Module:CreatePet(PetType, Age, Weight)
	local Farm = self:GetFarm()
	local PetModel = Utility.PetAssets:FindFirstChild(PetType)
	if not PetModel or not PetModel:IsA("Model") then
		warn("[CreatePet]: Pet not found")
		return
	end

	local PetClone = PetModel:Clone()
	local PrimaryPart = PetClone.PrimaryPart or PetClone:FindFirstChildWhichIsA("BasePart")

	if not PrimaryPart then
		warn("[CreatePet]: no primary part found")
		PetClone:Destroy()
		return
	end

	PrimaryPart.Name = "Handle"
	PrimaryPart.Anchored = false
	PrimaryPart.CanCollide = false
	PrimaryPart.Massless = true

	local PetTool = Instance.new("Tool")
	PetTool.Name = string.format("%s [%.1f KG] [Age %.1f]", PetType, Weight, Age)
	PetTool.RequiresHandle = true
	PetTool.Parent = BackPack

	for _, v in ipairs(PetClone:GetDescendants()) do
		if v:IsA("BasePart") and v ~= PrimaryPart then
			local Weld = Instance.new("WeldConstraint")
			Weld.Part0 = PrimaryPart
			Weld.Part1 = v
			Weld.Parent = v
			v.Anchored = false
		end
	end

	for _, v in ipairs(PetClone:GetChildren()) do
		v.Parent = PetTool
	end

	Humanoid:EquipTool(PetTool)

	PetTool.Activated:Connect(function()
		table.insert(Pets, {
			Name = PetType,
			Level = Age,
			PetType = PetType,
			Hunger = 9e9,
			LevelProgress = 20,
			BaseWeight = Weight,
			PetId = string.lower(cloneref(game:GetService("HttpService")):GenerateGUID()),
			GoalPos = Farm:FindFirstChild("PetArea").CFrame.Position,
		})

		local function IsPetSpawned(PetId)
			for _, v in pairs(workspace.PetsPhysical:GetChildren()) do
				if v:FindFirstChild(PetId) or v.Name == PetId then
					return true
				end
			end
			return false
		end

		for _, PetData in pairs(Pets) do
			if not IsPetSpawned(PetData.PetId) then
				local ModelClone = Utility.PetAssets[PetData.PetType]:Clone()
				ModelClone.Parent = workspace.PetsPhysical
				ModelClone.Name = PetData.PetId
				task.wait(0.01)
				GetPet(LocalPlayer.Name, PetData.PetId)
			end
		end

		PetTool:Destroy()
	end)
end

function Module:GetPhysicalPlants()
	local Plants = {}
	local Farm, Imp = self:GetFarm()

	for _, v in pairs(Imp:FindFirstChild("Plants_Physical"):GetChildren()) do
		if v:IsA("Model") then
			table.insert(Plants, v)
		end
	end

	return Plants
end

return Module
