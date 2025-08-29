local G2L = {}
local TweenService = game:GetService("TweenService")

local Blur = Instance.new("BlurEffect", game:GetService("Lighting"))
Blur.Size = 0
local Correction = Instance.new("ColorCorrectionEffect", game:GetService("Lighting"))

-- StarterGui.Exploiting Guis.Starfall.Loading
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"))
G2L["1"]["Name"] = [[Loading]]
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

-- StarterGui.Exploiting Guis.Starfall.Loading.Window
G2L["2"] = Instance.new("ImageButton", G2L["1"])
G2L["2"]["BorderSizePixel"] = 0
G2L["2"]["ScaleType"] = Enum.ScaleType.Crop
G2L["2"]["Modal"] = true
G2L["2"]["AutoButtonColor"] = false
G2L["2"]["ImageTransparency"] = 1
G2L["2"]["BackgroundTransparency"] = 1
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16)
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
G2L["2"]["Image"] = [[rbxassetid://16255699706]]
G2L["2"]["Size"] = UDim2.new(0, 400, 0, 0)
G2L["2"]["LayoutOrder"] = 1
G2L["2"]["ClipsDescendants"] = true
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["2"]["Name"] = [[Window]]
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.49988, 0)

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"])
G2L["3"]["CornerRadius"] = UDim.new(0, 25)

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.UIStroke
G2L["4"] = Instance.new("UIStroke", G2L["2"])
G2L["4"]["Transparency"] = 1
G2L["4"]["Color"] = Color3.fromRGB(255, 255, 255)

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.UIListLayout
G2L["5"] = Instance.new("UIListLayout", G2L["2"])
G2L["5"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill
G2L["5"]["Padding"] = UDim.new(0, 10)
G2L["5"]["SortOrder"] = Enum.SortOrder.LayoutOrder

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.Profile
G2L["6"] = Instance.new("Frame", G2L["2"])
G2L["6"]["BorderSizePixel"] = 0
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["6"]["Size"] = UDim2.new(0, 400, 0, 123)
G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["6"]["Name"] = [[Profile]]
G2L["6"]["LayoutOrder"] = 1
G2L["6"]["BackgroundTransparency"] = 1

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.Profile.Board
G2L["7"] = Instance.new("Frame", G2L["6"])
G2L["7"]["BorderSizePixel"] = 0
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41)
G2L["7"]["AnchorPoint"] = Vector2.new(0.5, 1)
G2L["7"]["Size"] = UDim2.new(0, 351, 0, 100)
G2L["7"]["Position"] = UDim2.new(0.5, 0, 1, 0)
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["7"]["Name"] = [[Board]]
G2L["7"]["BackgroundTransparency"] = 0.6

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.Profile.Board.UICorner
G2L["8"] = Instance.new("UICorner", G2L["7"])
G2L["8"]["CornerRadius"] = UDim.new(0, 25)

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.Profile.Board.UIStroke
G2L["9"] = Instance.new("UIStroke", G2L["7"])
G2L["9"]["Transparency"] = 0.9
G2L["9"]["Color"] = Color3.fromRGB(255, 255, 255)

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.Profile.Board.Screenshot
G2L["a"] = Instance.new("ImageLabel", G2L["7"])
G2L["a"]["BorderSizePixel"] = 0
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["a"]["AutomaticSize"] = Enum.AutomaticSize.XY
G2L["a"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
G2L["a"]["Image"] = [[rbxassetid://79288547367385]]
G2L["a"]["Size"] = UDim2.new(0, 140, 0, 140)
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["a"]["BackgroundTransparency"] = 1
G2L["a"]["Name"] = [[Screenshot]]
G2L["a"]["Position"] = UDim2.new(0.15242, 0, 0.5, 0)

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.Profile.Board.Screenshot.UICorner
G2L["b"] = Instance.new("UICorner", G2L["a"])
G2L["b"]["CornerRadius"] = UDim.new(1, 0)

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.Profile.Board.Header
G2L["c"] = Instance.new("Frame", G2L["7"])
G2L["c"]["BorderSizePixel"] = 0
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["c"]["Size"] = UDim2.new(0.69943, 0, 1, 0)
G2L["c"]["Position"] = UDim2.new(0.27066, 0, 0, 0)
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["c"]["Name"] = [[Header]]
G2L["c"]["BackgroundTransparency"] = 1

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.Profile.Board.Header.UIListLayout
G2L["d"] = Instance.new("UIListLayout", G2L["c"])
G2L["d"]["Padding"] = UDim.new(0, 8)
G2L["d"]["VerticalAlignment"] = Enum.VerticalAlignment.Center
G2L["d"]["SortOrder"] = Enum.SortOrder.LayoutOrder

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.Profile.Board.Header.UIPadding
G2L["e"] = Instance.new("UIPadding", G2L["c"])
G2L["e"]["PaddingLeft"] = UDim.new(0, 10)

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.Profile.Board.Header.Title
G2L["f"] = Instance.new("TextLabel", G2L["c"])
G2L["f"]["BorderSizePixel"] = 0
G2L["f"]["TextSize"] = 17
G2L["f"]["TextXAlignment"] = Enum.TextXAlignment.Left
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["f"]["FontFace"] =
	Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
G2L["f"]["TextColor3"] = Color3.fromRGB(221, 221, 221)
G2L["f"]["BackgroundTransparency"] = 1.01
G2L["f"]["Size"] = UDim2.new(0, 60, 0, 17)
G2L["f"]["ClipsDescendants"] = true
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["f"]["Text"] = [[the best, at everything.]]
G2L["f"]["LayoutOrder"] = 3
G2L["f"]["Name"] = [[Title]]
G2L["f"]["Position"] = UDim2.new(0, 0, 0.565, 0)

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.Profile.Board.Header.Title
G2L["10"] = Instance.new("TextLabel", G2L["c"])
G2L["10"]["BorderSizePixel"] = 0
G2L["10"]["TextSize"] = 22
G2L["10"]["TextXAlignment"] = Enum.TextXAlignment.Left
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["10"]["FontFace"] =
	Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
G2L["10"]["TextColor3"] = Color3.fromRGB(221, 221, 221)
G2L["10"]["BackgroundTransparency"] = 1.01
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["10"]["Text"] = [[Starfall.lua]]
G2L["10"]["LayoutOrder"] = 1
G2L["10"]["AutomaticSize"] = Enum.AutomaticSize.XY
G2L["10"]["Name"] = [[Title]]

-- StarterGui.Exploiting Guis.Starfall.Loading.Window.Profile.Board.Detail
G2L["11"] = Instance.new("ImageButton", G2L["7"])
G2L["11"]["BorderSizePixel"] = 0
G2L["11"]["ScaleType"] = Enum.ScaleType.Crop
G2L["11"]["Modal"] = true
G2L["11"]["AutoButtonColor"] = false
G2L["11"]["ImageTransparency"] = 0.94
G2L["11"]["BackgroundTransparency"] = 1
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
G2L["11"]["ZIndex"] = -999
G2L["11"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
G2L["11"]["Image"] = [[rbxassetid://16255699706]]
G2L["11"]["Size"] = UDim2.new(1, 0, 1, 0)
G2L["11"]["LayoutOrder"] = 1
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
G2L["11"]["Name"] = [[Detail]]
G2L["11"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

TweenService:Create(
	G2L["2"],
	TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
	{ Size = UDim2.new(0, 400, 0, 140), ImageTransparency = 0.9 }
):Play()

TweenService:Create(Blur, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = 60 }):Play()

TweenService:Create(
	Correction,
	TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
	{ Contrast = 1, Saturation = 0, TintColor = Color3.fromRGB(180, 180, 180), Brightness = -0.1 }
):Play()

TweenService:Create(
	G2L["2"]:FindFirstChild("UIStroke"),
	TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{ Transparency = 0.9 }
):Play()

task.wait(1.2)

TweenService:Create(
	G2L["f"],
	TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
	{ Size = UDim2.new(0, 170, 0, 17) }
):Play()

task.wait(1)

TweenService:Create(
	G2L["2"],
	TweenInfo.new(0.8, Enum.EasingStyle.Back, Enum.EasingDirection.In),
	{ Size = UDim2.new(0, 400, 0, 0), ImageTransparency = 1 }
):Play()

TweenService:Create(Blur, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), { Size = 0 }):Play()

TweenService:Create(
	Correction,
	TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out),
	{ Contrast = 0, Saturation = 0, TintColor = Color3.fromRGB(255, 255, 255), Brightness = 0 }
):Play()

TweenService:Create(
	G2L["2"]:FindFirstChild("UIStroke"),
	TweenInfo.new(0.8, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
	{ Transparency = 1 }
):Play()

task.wait(0.8)

return G2L["1"], require
