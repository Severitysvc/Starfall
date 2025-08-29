local Library = {}

Library["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"))
Library["1"]["Name"] = [[99 nights gem]]
Library["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

Library["2"] = Instance.new("ImageButton", Library["1"])
Library["2"]["Active"] = true
Library["2"]["Draggable"] = true
Library["2"]["BorderSizePixel"] = 0
Library["2"]["ScaleType"] = Enum.ScaleType.Crop
Library["2"]["Modal"] = true
Library["2"]["AutoButtonColor"] = false
Library["2"]["ImageTransparency"] = 0.95
Library["2"]["BackgroundTransparency"] = 0.1
Library["2"]["BackgroundColor3"] = Color3.fromRGB(16, 16, 16)
Library["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
Library["2"]["Image"] = [[rbxassetid://16255699706]]
Library["2"]["Size"] = UDim2.new(0, 400, 0, 329)
Library["2"]["LayoutOrder"] = 1
Library["2"]["ClipsDescendants"] = true
Library["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["2"]["Name"] = [[Window]]
Library["2"]["Position"] = UDim2.new(0.5, 0, 0.53163, 0)

Library["3"] = Instance.new("UICorner", Library["2"])
Library["3"]["CornerRadius"] = UDim.new(0, 25)

Library["4"] = Instance.new("UIStroke", Library["2"])
Library["4"]["Transparency"] = 0.9
Library["4"]["Color"] = Color3.fromRGB(255, 255, 255)

Library["5"] = Instance.new("UIListLayout", Library["2"])
Library["5"]["HorizontalFlex"] = Enum.UIFlexAlignment.Fill
Library["5"]["Padding"] = UDim.new(0, 10)
Library["5"]["SortOrder"] = Enum.SortOrder.LayoutOrder

Library["6"] = Instance.new("Frame", Library["2"])
Library["6"]["BorderSizePixel"] = 0
Library["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["6"]["Size"] = UDim2.new(0, 400, 0, 123)
Library["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["6"]["Name"] = [[Profile]]
Library["6"]["LayoutOrder"] = 1
Library["6"]["BackgroundTransparency"] = 1

Library["7"] = Instance.new("Frame", Library["6"])
Library["7"]["BorderSizePixel"] = 0
Library["7"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41)
Library["7"]["AnchorPoint"] = Vector2.new(0.5, 1)
Library["7"]["Size"] = UDim2.new(0, 351, 0, 100)
Library["7"]["Position"] = UDim2.new(0.5, 0, 1, 0)
Library["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["7"]["Name"] = [[Board]]
Library["7"]["BackgroundTransparency"] = 0.6

Library["8"] = Instance.new("UICorner", Library["7"])
Library["8"]["CornerRadius"] = UDim.new(0, 25)

Library["9"] = Instance.new("UIStroke", Library["7"])
Library["9"]["Transparency"] = 0.9
Library["9"]["Color"] = Color3.fromRGB(255, 255, 255)

Library["a"] = Instance.new("ImageLabel", Library["7"])
Library["a"]["BorderSizePixel"] = 0
Library["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["a"]["AutomaticSize"] = Enum.AutomaticSize.XY
Library["a"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
Library["a"]["Image"] = [[rbxthumb://type=AvatarHeadShot&id=2343555344&w=420&h=420]]
Library["a"]["Size"] = UDim2.new(0, 70, 0, 70)
Library["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["a"]["BackgroundTransparency"] = 0.95
Library["a"]["Name"] = [[Screenshot]]
Library["a"]["Position"] = UDim2.new(0.14387, 0, 0.5, 0)

Library["b"] = Instance.new("UICorner", Library["a"])
Library["b"]["CornerRadius"] = UDim.new(1, 0)

Library["c"] = Instance.new("UIStroke", Library["a"])
Library["c"]["Transparency"] = 0.9
Library["c"]["Color"] = Color3.fromRGB(255, 255, 255)

Library["d"] = Instance.new("Frame", Library["7"])
Library["d"]["BorderSizePixel"] = 0
Library["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["d"]["Size"] = UDim2.new(0.69943, 0, 1, 0)
Library["d"]["Position"] = UDim2.new(0.27066, 0, 0, 0)
Library["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["d"]["Name"] = [[Header]]
Library["d"]["BackgroundTransparency"] = 1

Library["e"] = Instance.new("UIListLayout", Library["d"])
Library["e"]["Padding"] = UDim.new(0, 8)
Library["e"]["VerticalAlignment"] = Enum.VerticalAlignment.Center
Library["e"]["SortOrder"] = Enum.SortOrder.LayoutOrder

Library["f"] = Instance.new("UIPadding", Library["d"])
Library["f"]["PaddingLeft"] = UDim.new(0, 10)

Library["10"] = Instance.new("TextLabel", Library["d"])
Library["10"]["BorderSizePixel"] = 0
Library["10"]["TextSize"] = 15
Library["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["10"]["FontFace"] =
	Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Library["10"]["TextColor3"] = Color3.fromRGB(221, 221, 221)
Library["10"]["BackgroundTransparency"] = 1.01
Library["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["10"]["Text"] = [[@severitysvc]]
Library["10"]["LayoutOrder"] = 1
Library["10"]["AutomaticSize"] = Enum.AutomaticSize.XY
Library["10"]["Name"] = [[Title]]

Library["11"] = Instance.new("TextLabel", Library["d"])
Library["11"]["BorderSizePixel"] = 0
Library["11"]["TextSize"] = 18
Library["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["11"]["FontFace"] =
	Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
Library["11"]["TextColor3"] = Color3.fromRGB(221, 221, 221)
Library["11"]["BackgroundTransparency"] = 1.01
Library["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["11"]["Text"] = [[Welcome, Severity]]
Library["11"]["LayoutOrder"] = 1
Library["11"]["AutomaticSize"] = Enum.AutomaticSize.XY
Library["11"]["Name"] = [[Title]]

Library["13"] = Instance.new("ScrollingFrame", Library["2"])
Library["13"]["Active"] = true
Library["13"]["BorderSizePixel"] = 0
Library["13"]["CanvasSize"] = UDim2.new(0, 0, 0, 0)
Library["13"]["CanvasPosition"] = Vector2.new(0, 84)
Library["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["13"]["Name"] = [[Info Board]]
Library["13"]["ScrollBarImageTransparency"] = 0.9
Library["13"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
Library["13"]["Size"] = UDim2.new(0, 400, 0, 185)
Library["13"]["Position"] = UDim2.new(0, 0, 0.43769, 0)
Library["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["13"]["ScrollBarThickness"] = 3
Library["13"]["LayoutOrder"] = 3
Library["13"]["BackgroundTransparency"] = 1

Library["14"] = Instance.new("Frame", Library["13"])
Library["14"]["BorderSizePixel"] = 0
Library["14"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41)
Library["14"]["AnchorPoint"] = Vector2.new(0.5, 1)
Library["14"]["Size"] = UDim2.new(0, 366, 0, 83)
Library["14"]["Position"] = UDim2.new(0.5, 0, 0.5814, 0)
Library["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["14"]["Name"] = [[Board]]
Library["14"]["BackgroundTransparency"] = 0.6

Library["15"] = Instance.new("UICorner", Library["14"])
Library["15"]["CornerRadius"] = UDim.new(0, 25)

Library["16"] = Instance.new("UIStroke", Library["14"])
Library["16"]["Transparency"] = 0.9
Library["16"]["Color"] = Color3.fromRGB(255, 255, 255)

Library["17"] = Instance.new("Frame", Library["14"])
Library["17"]["BorderSizePixel"] = 0
Library["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["17"]["Size"] = UDim2.new(0.74315, 0, 1, 0)
Library["17"]["Position"] = UDim2.new(0.22694, 0, 0, 0)
Library["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["17"]["Name"] = [[Header]]
Library["17"]["BackgroundTransparency"] = 1

Library["18"] = Instance.new("UIListLayout", Library["17"])
Library["18"]["Padding"] = UDim.new(0, 8)
Library["18"]["VerticalAlignment"] = Enum.VerticalAlignment.Center
Library["18"]["SortOrder"] = Enum.SortOrder.LayoutOrder

Library["19"] = Instance.new("UIPadding", Library["17"])
Library["19"]["PaddingLeft"] = UDim.new(0, 10)

Library["1a"] = Instance.new("TextLabel", Library["17"])
Library["1a"]["BorderSizePixel"] = 0
Library["1a"]["TextSize"] = 18
Library["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["1a"]["FontFace"] =
	Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
Library["1a"]["TextColor3"] = Color3.fromRGB(221, 221, 221)
Library["1a"]["BackgroundTransparency"] = 1.01
Library["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["1a"]["Text"] = [[Server Hopping...]]
Library["1a"]["LayoutOrder"] = 2
Library["1a"]["AutomaticSize"] = Enum.AutomaticSize.XY
Library["1a"]["Name"] = [[Task]]
Library["1a"]["TextXAlignment"] = Enum.TextXAlignment.Left

Library["1b"] = Instance.new("TextLabel", Library["17"])
Library["1b"]["BorderSizePixel"] = 0
Library["1b"]["TextSize"] = 14
Library["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["1b"]["FontFace"] =
	Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Library["1b"]["TextColor3"] = Color3.fromRGB(221, 221, 221)
Library["1b"]["BackgroundTransparency"] = 1.01
Library["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["1b"]["Text"] = [[current task:]]
Library["1b"]["LayoutOrder"] = 1
Library["1b"]["AutomaticSize"] = Enum.AutomaticSize.XY
Library["1b"]["Name"] = [[CurrentTask]]

Library["1c"] = Instance.new("Frame", Library["14"])
Library["1c"]["BorderSizePixel"] = 0
Library["1c"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26)
Library["1c"]["AnchorPoint"] = Vector2.new(0, 0.5)
Library["1c"]["Size"] = UDim2.new(0, 50, 0, 50)
Library["1c"]["Position"] = UDim2.new(0.06284, 0, 0.5, 0)
Library["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["1c"]["Name"] = [[IconHolder]]

Library["1d"] = Instance.new("ImageLabel", Library["1c"])
Library["1d"]["BorderSizePixel"] = 0
Library["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["1d"]["ImageColor3"] = Color3.fromRGB(221, 221, 221)
Library["1d"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
Library["1d"]["Image"] = [[rbxassetid://10709799288]]
Library["1d"]["Size"] = UDim2.new(0, 30, 0, 30)
Library["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["1d"]["BackgroundTransparency"] = 1
Library["1d"]["LayoutOrder"] = -1
Library["1d"]["Name"] = [[Icon]]
Library["1d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

Library["1e"] = Instance.new("UICorner", Library["1c"])
Library["1e"]["CornerRadius"] = UDim.new(0, 15)

Library["1f"] = Instance.new("UIStroke", Library["1c"])
Library["1f"]["Transparency"] = 0.9
Library["1f"]["Color"] = Color3.fromRGB(255, 255, 255)

Library["20"] = Instance.new("UIListLayout", Library["13"])
Library["20"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
Library["20"]["Padding"] = UDim.new(0, 9)
Library["20"]["SortOrder"] = Enum.SortOrder.LayoutOrder

Library["21"] = Instance.new("UIPadding", Library["13"])
Library["21"]["PaddingTop"] = UDim.new(0, 1)
Library["21"]["PaddingBottom"] = UDim.new(0, 1)

Library["22"] = Instance.new("Frame", Library["13"])
Library["22"]["BorderSizePixel"] = 0
Library["22"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41)
Library["22"]["AnchorPoint"] = Vector2.new(0.5, 1)
Library["22"]["Size"] = UDim2.new(0, 366, 0, 83)
Library["22"]["Position"] = UDim2.new(0.5, 0, 0.5814, 0)
Library["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["22"]["Name"] = [[Board]]
Library["22"]["BackgroundTransparency"] = 0.6

Library["23"] = Instance.new("UICorner", Library["22"])
Library["23"]["CornerRadius"] = UDim.new(0, 25)

Library["24"] = Instance.new("UIStroke", Library["22"])
Library["24"]["Transparency"] = 0.9
Library["24"]["Color"] = Color3.fromRGB(255, 255, 255)

Library["25"] = Instance.new("Frame", Library["22"])
Library["25"]["BorderSizePixel"] = 0
Library["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["25"]["Size"] = UDim2.new(0.74315, 0, 1, 0)
Library["25"]["Position"] = UDim2.new(0.22694, 0, 0, 0)
Library["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["25"]["Name"] = [[Header]]
Library["25"]["BackgroundTransparency"] = 1

Library["26"] = Instance.new("UIListLayout", Library["25"])
Library["26"]["Padding"] = UDim.new(0, 8)
Library["26"]["VerticalAlignment"] = Enum.VerticalAlignment.Center
Library["26"]["SortOrder"] = Enum.SortOrder.LayoutOrder

Library["27"] = Instance.new("UIPadding", Library["25"])
Library["27"]["PaddingLeft"] = UDim.new(0, 10)

Library["28"] = Instance.new("TextLabel", Library["25"])
Library["28"]["BorderSizePixel"] = 0
Library["28"]["TextSize"] = 22
Library["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["28"]["FontFace"] =
	Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
Library["28"]["TextColor3"] = Color3.fromRGB(221, 221, 221)
Library["28"]["BackgroundTransparency"] = 1.01
Library["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["28"]["Text"] = [[1234]]
Library["28"]["LayoutOrder"] = 2
Library["28"]["AutomaticSize"] = Enum.AutomaticSize.XY
Library["28"]["Name"] = [[Task]]

Library["29"] = Instance.new("TextLabel", Library["25"])
Library["29"]["BorderSizePixel"] = 0
Library["29"]["TextSize"] = 14
Library["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["29"]["FontFace"] =
	Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Library["29"]["TextColor3"] = Color3.fromRGB(221, 221, 221)
Library["29"]["BackgroundTransparency"] = 1.01
Library["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["29"]["Text"] = [[diamonds count:]]
Library["29"]["LayoutOrder"] = 1
Library["29"]["AutomaticSize"] = Enum.AutomaticSize.XY
Library["29"]["Name"] = [[CurrentTask]]

Library["2a"] = Instance.new("Frame", Library["22"])
Library["2a"]["BorderSizePixel"] = 0
Library["2a"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26)
Library["2a"]["AnchorPoint"] = Vector2.new(0, 0.5)
Library["2a"]["Size"] = UDim2.new(0, 50, 0, 50)
Library["2a"]["Position"] = UDim2.new(0.06284, 0, 0.5, 0)
Library["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["2a"]["Name"] = [[IconHolder]]

Library["2b"] = Instance.new("ImageLabel", Library["2a"])
Library["2b"]["BorderSizePixel"] = 0
Library["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["2b"]["ImageColor3"] = Color3.fromRGB(221, 221, 221)
Library["2b"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
Library["2b"]["Image"] = [[rbxassetid://10723396000]]
Library["2b"]["Size"] = UDim2.new(0, 30, 0, 30)
Library["2b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["2b"]["BackgroundTransparency"] = 1
Library["2b"]["LayoutOrder"] = -1
Library["2b"]["Name"] = [[Icon]]
Library["2b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

Library["2c"] = Instance.new("UICorner", Library["2a"])
Library["2c"]["CornerRadius"] = UDim.new(0, 15)

Library["2d"] = Instance.new("UIStroke", Library["2a"])
Library["2d"]["Transparency"] = 0.9
Library["2d"]["Color"] = Color3.fromRGB(255, 255, 255)

Library["2e"] = Instance.new("Frame", Library["13"])
Library["2e"]["BorderSizePixel"] = 0
Library["2e"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41)
Library["2e"]["AnchorPoint"] = Vector2.new(0.5, 1)
Library["2e"]["Size"] = UDim2.new(0, 366, 0, 83)
Library["2e"]["Position"] = UDim2.new(0.5, 0, 0.5814, 0)
Library["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["2e"]["Name"] = [[Board]]
Library["2e"]["BackgroundTransparency"] = 0.6

Library["2f"] = Instance.new("UICorner", Library["2e"])
Library["2f"]["CornerRadius"] = UDim.new(0, 25)

Library["30"] = Instance.new("UIStroke", Library["2e"])
Library["30"]["Transparency"] = 0.9
Library["30"]["Color"] = Color3.fromRGB(255, 255, 255)

Library["31"] = Instance.new("Frame", Library["2e"])
Library["31"]["BorderSizePixel"] = 0
Library["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["31"]["Size"] = UDim2.new(0.74315, 0, 1, 0)
Library["31"]["Position"] = UDim2.new(0.22694, 0, 0, 0)
Library["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["31"]["Name"] = [[Header]]
Library["31"]["BackgroundTransparency"] = 1

Library["32"] = Instance.new("UIListLayout", Library["31"])
Library["32"]["Padding"] = UDim.new(0, 8)
Library["32"]["VerticalAlignment"] = Enum.VerticalAlignment.Center
Library["32"]["SortOrder"] = Enum.SortOrder.LayoutOrder

Library["33"] = Instance.new("UIPadding", Library["31"])
Library["33"]["PaddingLeft"] = UDim.new(0, 10)

Library["34"] = Instance.new("TextLabel", Library["31"])
Library["34"]["BorderSizePixel"] = 0
Library["34"]["TextSize"] = 22
Library["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["34"]["FontFace"] =
	Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
Library["34"]["TextColor3"] = Color3.fromRGB(221, 221, 221)
Library["34"]["BackgroundTransparency"] = 1.01
Library["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["34"]["Text"] = [[00:00:00]]
Library["34"]["LayoutOrder"] = 2
Library["34"]["AutomaticSize"] = Enum.AutomaticSize.XY
Library["34"]["Name"] = [[Task]]

Library["35"] = Instance.new("TextLabel", Library["31"])
Library["35"]["BorderSizePixel"] = 0
Library["35"]["TextSize"] = 14
Library["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["35"]["FontFace"] =
	Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
Library["35"]["TextColor3"] = Color3.fromRGB(221, 221, 221)
Library["35"]["BackgroundTransparency"] = 1.01
Library["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["35"]["Text"] = [[key expiration:]]
Library["35"]["LayoutOrder"] = 1
Library["35"]["AutomaticSize"] = Enum.AutomaticSize.XY
Library["35"]["Name"] = [[CurrentTask]]

Library["36"] = Instance.new("Frame", Library["2e"])
Library["36"]["BorderSizePixel"] = 0
Library["36"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26)
Library["36"]["AnchorPoint"] = Vector2.new(0, 0.5)
Library["36"]["Size"] = UDim2.new(0, 50, 0, 50)
Library["36"]["Position"] = UDim2.new(0.06284, 0, 0.5, 0)
Library["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["36"]["Name"] = [[IconHolder]]

Library["37"] = Instance.new("ImageLabel", Library["36"])
Library["37"]["BorderSizePixel"] = 0
Library["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["37"]["ImageColor3"] = Color3.fromRGB(221, 221, 221)
Library["37"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
Library["37"]["Image"] = [[rbxassetid://10723416652]]
Library["37"]["Size"] = UDim2.new(0, 30, 0, 30)
Library["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["37"]["BackgroundTransparency"] = 1
Library["37"]["LayoutOrder"] = -1
Library["37"]["Name"] = [[Icon]]
Library["37"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)

Library["38"] = Instance.new("UICorner", Library["36"])
Library["38"]["CornerRadius"] = UDim.new(0, 15)

Library["39"] = Instance.new("UIStroke", Library["36"])
Library["39"]["Transparency"] = 0.9
Library["39"]["Color"] = Color3.fromRGB(255, 255, 255)

Library["3a"] = Instance.new("Frame", Library["2"])
Library["3a"]["BorderSizePixel"] = 0
Library["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
Library["3a"]["Size"] = UDim2.new(1, 0, 0, 1)
Library["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
Library["3a"]["LayoutOrder"] = 2
Library["3a"]["BackgroundTransparency"] = 0.9

Library["3b"] = Instance.new("UIPadding", Library["3a"])
Library["3b"]["PaddingRight"] = UDim.new(0, 15)
Library["3b"]["PaddingLeft"] = UDim.new(0, 15)

function Library:Update(Key, Value)
	if Key == "Task" then
		if Library["1a"] then
			Library["1a"].Text = Value
			Library["1a"].TextWrapped = true
		end
	elseif Key == "Diamonds" then
		if Library["28"] then
			Library["28"].Text = tostring(Value)
		end
	elseif Key == "KeyExpiration" then
		if Library["34"] then
			Library["34"].Text = tostring(Value)
		end
	elseif Key == "Text" then
		if Library["1a"] then
			Library["1a"].Text = Value
		end
	end
end

return Library
