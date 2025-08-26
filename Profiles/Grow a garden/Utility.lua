local Utility = {}

--// Services
Utility.RunService = game:GetService("RunService")
Utility.Players = game:GetService("Players")
Utility.Insert = game:GetService("InsertService")
Utility.ReplicatedStorage = game:GetService("ReplicatedStorage")
Utility.HttpService = game:GetService("HttpService")
Utility.Workspace = game:GetService("Workspace")
Utility.UserInputService = game:GetService("UserInputService")
Utility.TeleportService = game:GetService("TeleportService")
Utility.Lighting = game:GetService("Lighting")

--// LocalPlayer
Utility.LocalPlayer = Utility.Players.LocalPlayer
Utility.Character = Utility.LocalPlayer.Character or Utility.LocalPlayer.CharacterAdded:Wait()
Utility.Humanoid = Utility.Character:WaitForChild("Humanoid")
Utility.HumanoidRootPart = Utility.Character:WaitForChild("HumanoidRootPart")
Utility.BackPack = Utility.LocalPlayer:WaitForChild("Backpack")
Utility.PlayerGui = Utility.LocalPlayer:WaitForChild("PlayerGui")
Utility.Mouse = Utility.LocalPlayer:GetMouse()

--// Data
Utility.FruitsData = require(Utility.ReplicatedStorage.Data.SeedData)
Utility.Gears = require(Utility.ReplicatedStorage.Data.GearData)
Utility.Mutations = require(Utility.ReplicatedStorage.Modules.MutationHandler).MutationNames
Utility.MutationHandler = require(Utility.ReplicatedStorage.Modules.MutationHandler)
Utility.EggData = require(Utility.ReplicatedStorage.Data.PetEggData)
Utility.NotificationHandler = require(Utility.ReplicatedStorage.Modules.Notification)
Utility.DataService = require(Utility.ReplicatedStorage.Modules.DataService)
Utility.InventorySerice = require(Utility.ReplicatedStorage.Modules.InventoryService)
Utility.DataService = require(Utility.ReplicatedStorage.Modules:WaitForChild("DataService"))
Utility.CalculateValue = require(Utility.ReplicatedStorage.Modules.CalculatePlantValue)
Utility.PetServices = Utility.ReplicatedStorage.Modules:WaitForChild("PetServices")
Utility.ActivePetsService = require(Utility.PetServices:WaitForChild("ActivePetsService"))
Utility.PetList = require(Utility.ReplicatedStorage.Data.PetRegistry.PetList)

--// Positions
Utility.Positions = {
	["Sell Zone"] = CFrame.new(
		88.1068573,
		2.99999976,
		0.248745888,
		-0.0311789345,
		1.51965054e-08,
		-0.999513805,
		-7.2054922e-09,
		1,
		1.54286646e-08,
		0.999513805,
		7.68303821e-09,
		-0.0311789345
	),
	["Middle"] = CFrame.new(
		-105.796562,
		4.40001249,
		-7.66513491,
		0.999132276,
		2.76632157e-08,
		-0.0416502953,
		-2.98415621e-08,
		1,
		-5.16791125e-08,
		0.0416502953,
		5.287718e-08,
		0.999132276
	),
	["Gear Shop"] = CFrame.new(
		-287.435242,
		2.99999976,
		-13.8443823,
		0.0547213368,
		-7.35218553e-09,
		0.998501658,
		-6.09078299e-09,
		1,
		7.69701369e-09,
		-0.998501658,
		-6.50284804e-09,
		0.0547213368
	),
	["Pet Shop"] = CFrame.new(
		-286.803162,
		2.99999976,
		-2.52812886,
		0.0324877948,
		1.11254828e-09,
		0.999472141,
		1.7034979e-09,
		1,
		-1.16850796e-09,
		-0.999472141,
		1.74056092e-09,
		0.0324877948
	),
	["Cosmetics Shop"] = CFrame.new(
		-286.219788,
		2.99999976,
		-25.2869682,
		0.0311784148,
		5.00979258e-09,
		0.999513865,
		-7.33615946e-10,
		1,
		-4.98934494e-09,
		-0.999513865,
		-5.77699388e-10,
		0.0311784148
	),
	["Crafting Zone"] = CFrame.new(
		-285.65033,
		2.99999976,
		-34.3859901,
		0.00631149486,
		-8.13705867e-08,
		0.999980092,
		6.98285829e-09,
		1,
		8.13281318e-08,
		-0.999980092,
		6.469417e-09,
		0.00631149486
	),
}

--// Crafters
Utility.Crafting = {
	["Seed Recipes"] = {
		"Lumira",
		"Suncoil",
		"Honeysuckle",
		"Nectar Thorn",
		"Crafters Seed Pack",
		"Bee Balm",
		"Dandelion",
		"Guanabana",
		"Peace Lily",
		"Aloe Vera",
		"Manuka Flower",
	},

	["Gear Recipes"] = {
		"Lightning Rod",
		"Reclaimer",
		"Spice Spritzer Sprinkler",
		"Sweet Soaker Sprinkler",
		"Stalk Sprout Sprinkler",
		"Tropical Mist Sprinkler",
		"Berry Blusher Sprinkler",
		"Flower Froster Sprinkler",
		"Anti Bee Egg",
		"Pack Bee",
		"Honey Crafters Crate",
		"Mutation Spray Choc",
		"Mutation Spray Pollinated",
		"Mutation Spray Shocked",
	},

	["Dino Recipes"] = {
		"Ancient Seed Pack",
		"Mutation Spray Amber",
		"Dino Crate",
	},
}

--// Folders
Utility.GameEvents = Utility.ReplicatedStorage:WaitForChild("GameEvents")
Utility.PetAssets = Utility.Insert:LoadLocalAsset("rbxassetid://125322775194286").PetAssets --// Not sure why sudais did ts but ok
Utility.ActivePetService = Utility.GameEvents:WaitForChild("ActivePetService")

--// Get
Utility.SeedStock = {}
Utility.GearStock = {}
Utility.Fruits = {}

for i, v in pairs(Utility.FruitsData) do
	for i2, v2 in pairs(v) do
		if i2 == "StockAmount" then
			if v2[2] > 0 then
				table.insert(Utility.SeedStock, i)
			end
		end
	end
end

for i, v in pairs(Utility.Gears) do
	for i2, v2 in pairs(v) do
		if i2 == "StockAmount" then
			if v2[2] > 0 then
				table.insert(Utility.GearStock, i)
			end
		end
	end
end

for i, v in pairs(Utility.FruitsData) do
	table.insert(Utility.Fruits, i)
end

--// Add "All"
if not table.find(Utility.Fruits, "All") then
	table.insert(Utility.Fruits, "All")
end

if not table.find(Utility.Mutations, "All") then
	table.insert(Utility.Mutations, "All")
end

--// Manual

Utility.EggStock = {
	"Common Egg",
	"Bug Egg",
	"Paradise Egg",
	"Rare Summer Egg",
	"Common Summer Egg",
	"Mythical Egg",
}

return Utility
