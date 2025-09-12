task.spawn(function()
	local LoadingScreen = Instance.new("ScreenGui", game:GetService("CoreGui"))
	local Depth_1 = Instance.new("ImageLabel")
	local Header_1 = Instance.new("Frame")
	local Starfall_1 = Instance.new("TextLabel")
	local The_1 = Instance.new("TextLabel")
	local Best_1 = Instance.new("TextLabel")
	local At_1 = Instance.new("TextLabel")
	local Everything_1 = Instance.new("TextLabel")
	local Divider_1 = Instance.new("Frame")
	local LogoHolder_1 = Instance.new("Frame")
	local Logo_1 = Instance.new("ImageLabel")

	local Blur = Instance.new("BlurEffect", game:GetService("Lighting"))
	local ColorCorrection = Instance.new("ColorCorrectionEffect", game:GetService("Lighting"))

	local TweenService = game:GetService("TweenService")

	LoadingScreen.Name = "LoadingScreen"
	--// LoadingScreen.Parent = gethui and gethui() or game:GetService("CoreGui")
	LoadingScreen.IgnoreGuiInset = true

	Depth_1.Name = "Depth"
	Depth_1.Parent = LoadingScreen
	Depth_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Depth_1.BackgroundTransparency = 1
	Depth_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Depth_1.BorderSizePixel = 0
	Depth_1.Size = UDim2.new(1, 0, 1, 0)
	Depth_1.ClipsDescendants = true
	Depth_1.Image = "rbxassetid://95194409279070"
	Depth_1.ImageColor3 = Color3.fromRGB(0, 0, 0)
	Depth_1.ImageTransparency = 1

	Header_1.Name = "Header"
	Header_1.Parent = LoadingScreen
	Header_1.AnchorPoint = Vector2.new(0, 0.5)
	Header_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Header_1.BackgroundTransparency = 1
	Header_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Header_1.BorderSizePixel = 0
	Header_1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Header_1.Size = UDim2.new(0, 289, 0, 307)
	Header_1.ClipsDescendants = true

	Starfall_1.Name = "Starfall"
	Starfall_1.Parent = Header_1
	Starfall_1.AutomaticSize = Enum.AutomaticSize.XY
	Starfall_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Starfall_1.BackgroundTransparency = 1
	Starfall_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Starfall_1.BorderSizePixel = 0
	Starfall_1.Position = UDim2.new(0.0657439455, 0, 0.31270358, 0)
	Starfall_1.Size = UDim2.new(0, 0, 0, 0)
	Starfall_1.FontFace =
		Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	Starfall_1.Text = "STARFALL"
	Starfall_1.TextColor3 = Color3.fromRGB(255, 0, 255)
	Starfall_1.TextSize = 45
	Starfall_1.TextTransparency = 1

	The_1.Name = "The"
	The_1.Parent = Header_1
	The_1.AutomaticSize = Enum.AutomaticSize.XY
	The_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	The_1.BackgroundTransparency = 1
	The_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	The_1.BorderSizePixel = 0
	The_1.Position = UDim2.new(0.0657439455, 0, 0.459283382, 0)
	The_1.Size = UDim2.new(0, 0, 0, 0)
	The_1.FontFace =
		Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	The_1.Text = "THE"
	The_1.TextColor3 = Color3.fromRGB(255, 0, 255)
	The_1.TextSize = 35
	The_1.TextTransparency = 1

	Best_1.Name = "Best"
	Best_1.Parent = Header_1
	Best_1.AutomaticSize = Enum.AutomaticSize.XY
	Best_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Best_1.BackgroundTransparency = 1
	Best_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Best_1.BorderSizePixel = 0
	Best_1.Position = UDim2.new(0.311418682, 0, 0.459283382, 0)
	Best_1.Size = UDim2.new(0, 0, 0, 0)
	Best_1.FontFace =
		Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	Best_1.Text = "BEST"
	Best_1.TextColor3 = Color3.fromRGB(255, 0, 255)
	Best_1.TextSize = 35
	Best_1.TextTransparency = 1

	At_1.Name = "At"
	At_1.Parent = Header_1
	At_1.AutomaticSize = Enum.AutomaticSize.XY
	At_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	At_1.BackgroundTransparency = 1
	At_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	At_1.BorderSizePixel = 0
	At_1.Position = UDim2.new(0.0657439455, 0, 0.573289931, 0)
	At_1.Size = UDim2.new(0, 0, 0, 0)
	At_1.FontFace =
		Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	At_1.Text = "AT"
	At_1.TextColor3 = Color3.fromRGB(255, 0, 255)
	At_1.TextSize = 35
	At_1.TextTransparency = 1

	Everything_1.Name = "Everything"
	Everything_1.Parent = Header_1
	Everything_1.AutomaticSize = Enum.AutomaticSize.XY
	Everything_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Everything_1.BackgroundTransparency = 1
	Everything_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Everything_1.BorderSizePixel = 0
	Everything_1.Position = UDim2.new(0.221453294, 0, 0.573289931, 0)
	Everything_1.Size = UDim2.new(0, 0, 0, 0)
	Everything_1.FontFace =
		Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	Everything_1.Text = "EVERYTHING."
	Everything_1.TextColor3 = Color3.fromRGB(255, 0, 255)
	Everything_1.TextSize = 35
	Everything_1.TextTransparency = 1

	Divider_1.Name = "Divider"
	Divider_1.Parent = LoadingScreen
	Divider_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Divider_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Divider_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Divider_1.BorderSizePixel = 0
	Divider_1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Divider_1.Size = UDim2.new(0, 1, 0, 0)

	LogoHolder_1.Name = "LogoHolder"
	LogoHolder_1.Parent = LoadingScreen
	LogoHolder_1.AnchorPoint = Vector2.new(0.5, 0.5)
	LogoHolder_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoHolder_1.BackgroundTransparency = 1
	LogoHolder_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LogoHolder_1.BorderSizePixel = 0
	LogoHolder_1.Position = UDim2.new(0.5, 0, 0.5, 0)
	LogoHolder_1.Size = UDim2.new(0, 146, 0, 122)
	LogoHolder_1.ClipsDescendants = true

	Logo_1.Name = "Logo"
	Logo_1.Parent = LogoHolder_1
	Logo_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Logo_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo_1.BackgroundTransparency = 1
	Logo_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Logo_1.BorderSizePixel = 0
	Logo_1.Position = UDim2.new(0.5, 0, 0.5, 0)
	Logo_1.Size = UDim2.new(0, 250, 0, 250)
	Logo_1.Image = "rbxassetid://102850060065207"
	Logo_1.ScaleType = Enum.ScaleType.Crop
	Logo_1.ImageTransparency = 1

	for _, Item in ipairs(Header_1:GetChildren()) do
		if Item:IsA("TextLabel") then
			Item.Position = UDim2.new(Item.Position.X.Scale, -50, Item.Position.Y.Scale, 0)
		end
	end

	task.wait(0.1)

	TweenService:Create(Blur, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 100 })
		:Play()
	TweenService:Create(
		ColorCorrection,
		TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{ TintColor = Color3.fromRGB(140, 140, 140) }
	):Play()
	TweenService
		:Create(
			Depth_1,
			TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ ImageTransparency = 0.6 }
		)
		:Play()

	TweenService:Create(Logo_1, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		ImageTransparency = 0,
	}):Play()
	task.wait(0.6)

	TweenService:Create(LogoHolder_1, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Position = UDim2.new(0.45, 0, 0.5, 0),
	}):Play()

	coroutine.wrap(function()
		for _, Item in ipairs(Header_1:GetChildren()) do
			if Item:IsA("TextLabel") then
				TweenService:Create(Item, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextTransparency = 0,
					Position = UDim2.new(Item.Position.X.Scale, 0, Item.Position.Y.Scale, 0),
				}):Play()
				TweenService:Create(Item, TweenInfo.new(0.45, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					TextColor3 = Color3.fromRGB(255, 255, 255),
				}):Play()
				task.wait(0.1)
			end
		end
	end)()

	task.wait(0.4)

	TweenService:Create(Divider_1, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 1, 0, 130),
	}):Play()

	task.wait(0.6)
	TweenService:Create(LogoHolder_1, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 0, 0, 122),
	}):Play()
	TweenService:Create(Logo_1, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		ImageTransparency = 1,
	}):Play()
	TweenService:Create(Header_1, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
		Size = UDim2.new(0, 0, 0, 307),
	}):Play()

	TweenService:Create(Blur, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { Size = 0 }):Play()
	TweenService:Create(
		ColorCorrection,
		TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
		{ TintColor = Color3.fromRGB(255, 255, 255) }
	):Play()
	TweenService
		:Create(Depth_1, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { ImageTransparency = 1 })
		:Play()

	task.wait(0.4)
	Blur:Destroy()
	ColorCorrection:Destroy()
	LoadingScreen:Destroy()
end)
