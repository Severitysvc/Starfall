return function(Url, Key)
	local TweenService = game:GetService("TweenService")

	local Ui = Instance.new("ScreenGui")
	Ui.Parent = gethui and gethui() or game:GetService("CoreGui")

	local KeySystem = Instance.new("ImageButton")
	KeySystem.Name = "KeySystem"
	KeySystem.Position = UDim2.new(0.5, 0, 0.5, 0)
	KeySystem.Size = UDim2.new(0, 504, 0, 372)
	KeySystem.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
	KeySystem.BackgroundTransparency = 0.10000000149011612
	KeySystem.BorderSizePixel = 0
	KeySystem.BorderColor3 = Color3.new(0, 0, 0)
	KeySystem.AnchorPoint = Vector2.new(0.5, 0.5)
	KeySystem.LayoutOrder = 1
	KeySystem.Transparency = 0.10000000149011612
	KeySystem.Image = "rbxassetid://16255699706"
	KeySystem.ImageTransparency = 0.8999999761581421
	KeySystem.ScaleType = Enum.ScaleType.Crop
	KeySystem.Parent = Ui
	KeySystem.Active = true
	KeySystem.Draggable = true

	local UICorner = Instance.new("UICorner")
	UICorner.Name = "UICorner"
	UICorner.CornerRadius = UDim.new(0, 25)
	UICorner.Parent = KeySystem

	local UIStroke = Instance.new("UIStroke")
	UIStroke.Name = "UIStroke"
	UIStroke.Color = Color3.new(1, 1, 1)
	UIStroke.Transparency = 0.8999999761581421
	UIStroke.Parent = KeySystem

	local TopBar = Instance.new("Frame")
	TopBar.Name = "TopBar"
	TopBar.Size = UDim2.new(1, 0, 0, 71)
	TopBar.BackgroundColor3 = Color3.new(1, 1, 1)
	TopBar.BackgroundTransparency = 1
	TopBar.BorderSizePixel = 0
	TopBar.BorderColor3 = Color3.new(0, 0, 0)
	TopBar.Parent = KeySystem

	local Header = Instance.new("Frame")
	Header.Name = "Header"
	Header.Size = UDim2.new(0.5, 0, 1, 0)
	Header.BackgroundColor3 = Color3.new(1, 1, 1)
	Header.BackgroundTransparency = 1
	Header.BorderSizePixel = 0
	Header.BorderColor3 = Color3.new(0, 0, 0)
	Header.Parent = TopBar

	local Title = Instance.new("ImageButton")
	Title.Name = "Title"
	Title.Position = UDim2.new(0.226392, 0, 0.447589, 0)
	Title.Size = UDim2.new(0, 45, 0, 45)
	Title.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
	Title.BackgroundTransparency = 0.10000000149011612
	Title.BorderSizePixel = 0
	Title.BorderColor3 = Color3.new(0, 0, 0)
	Title.AnchorPoint = Vector2.new(0.5, 0.5)
	Title.AutomaticSize = Enum.AutomaticSize.X
	Title.Transparency = 0.10000000149011612
	Title.Image = "rbxassetid://16255699706"
	Title.ImageTransparency = 0.949999988079071
	Title.ScaleType = Enum.ScaleType.Crop
	Title.Parent = Header

	local UICorner2 = Instance.new("UICorner")
	UICorner2.Name = "UICorner"
	UICorner2.CornerRadius = UDim.new(1, 0)
	UICorner2.Parent = Title

	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.Name = "UIListLayout"
	UIListLayout.Padding = UDim.new(0, 7)
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Parent = Title

	local UIPadding = Instance.new("UIPadding")
	UIPadding.Name = "UIPadding"
	UIPadding.PaddingLeft = UDim.new(0, 12)
	UIPadding.PaddingRight = UDim.new(0, 12)
	UIPadding.Parent = Title

	local UIStroke2 = Instance.new("UIStroke")
	UIStroke2.Name = "UIStroke"
	UIStroke2.Color = Color3.new(1, 1, 1)
	UIStroke2.Transparency = 0.8500000238418579
	UIStroke2.Parent = Title

	local Title2 = Instance.new("TextLabel")
	Title2.Name = "Title"
	Title2.Size = UDim2.new(0, 0, 1, 0)
	Title2.BackgroundColor3 = Color3.new(1, 1, 1)
	Title2.BackgroundTransparency = 1.0099999904632568
	Title2.BorderSizePixel = 0
	Title2.BorderColor3 = Color3.new(0, 0, 0)
	Title2.AutomaticSize = Enum.AutomaticSize.X
	Title2.LayoutOrder = 1
	Title2.TextTransparency = 0.0099999904632568
	Title2.Text = "Starfall KeySystem"
	Title2.TextColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Title2.TextSize = 15
	Title2.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	Title2.Parent = Title

	local UIListLayout2 = Instance.new("UIListLayout")
	UIListLayout2.Name = "UIListLayout"
	UIListLayout2.Padding = UDim.new(0, 10)
	UIListLayout2.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout2.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout2.Parent = Header

	local UIPadding2 = Instance.new("UIPadding")
	UIPadding2.Name = "UIPadding"
	UIPadding2.PaddingLeft = UDim.new(0, 10)
	UIPadding2.Parent = Header

	local Credits = Instance.new("TextLabel")
	Credits.Name = "Credits"
	Credits.Size = UDim2.new(0, 0, 1, 0)
	Credits.BackgroundColor3 = Color3.new(1, 1, 1)
	Credits.BackgroundTransparency = 1.0099999904632568
	Credits.BorderSizePixel = 0
	Credits.BorderColor3 = Color3.new(0, 0, 0)
	Credits.AutomaticSize = Enum.AutomaticSize.X
	Credits.LayoutOrder = 1
	Credits.TextTransparency = 0.0099999904632568
	Credits.Text = "By:  severitysvc, 435o"
	Credits.TextColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Credits.TextSize = 14
	Credits.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	Credits.Parent = Header

	local UIListLayout3 = Instance.new("UIListLayout")
	UIListLayout3.Name = "UIListLayout"
	UIListLayout3.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout3.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout3.HorizontalFlex = Enum.UIFlexAlignment.Fill
	UIListLayout3.Parent = TopBar

	local ButtonZones = Instance.new("Frame")
	ButtonZones.Name = "ButtonZones"
	ButtonZones.Position = UDim2.new(0.643529, 0, 0, 0)
	ButtonZones.Size = UDim2.new(0.356471, 0, 1, 0)
	ButtonZones.BackgroundColor3 = Color3.new(1, 1, 1)
	ButtonZones.BackgroundTransparency = 1
	ButtonZones.BorderSizePixel = 0
	ButtonZones.BorderColor3 = Color3.new(0, 0, 0)
	ButtonZones.Parent = TopBar

	local Close = Instance.new("ImageButton")
	Close.Name = "Close"
	Close.Position = UDim2.new(0.226392, 0, 0.447589, 0)
	Close.Size = UDim2.new(0, 35, 0, 35)
	Close.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	Close.BackgroundTransparency = 0.10000000149011612
	Close.BorderSizePixel = 0
	Close.BorderColor3 = Color3.new(0, 0, 0)
	Close.AnchorPoint = Vector2.new(0.5, 0.5)
	Close.AutomaticSize = Enum.AutomaticSize.X
	Close.LayoutOrder = 3
	Close.Transparency = 0.10000000149011612
	Close.Image = "rbxassetid://16255699706"
	Close.ImageTransparency = 0.949999988079071
	Close.ScaleType = Enum.ScaleType.Crop
	Close.Parent = ButtonZones

	local UICorner3 = Instance.new("UICorner")
	UICorner3.Name = "UICorner"
	UICorner3.CornerRadius = UDim.new(1, 0)
	UICorner3.Parent = Close

	local UIListLayout4 = Instance.new("UIListLayout")
	UIListLayout4.Name = "UIListLayout"
	UIListLayout4.Padding = UDim.new(0, 7)
	UIListLayout4.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout4.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout4.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout4.Parent = Close

	local UIPadding3 = Instance.new("UIPadding")
	UIPadding3.Name = "UIPadding"
	UIPadding3.PaddingLeft = UDim.new(0, 7)
	UIPadding3.PaddingRight = UDim.new(0, 7)
	UIPadding3.Parent = Close

	local UIStroke3 = Instance.new("UIStroke")
	UIStroke3.Name = "UIStroke"
	UIStroke3.Color = Color3.new(1, 1, 1)
	UIStroke3.Transparency = 0.8399999737739563
	UIStroke3.Parent = Close

	local Icon = Instance.new("ImageLabel")
	Icon.Name = "Icon"
	Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon.Size = UDim2.new(0, 22, 0, 22)
	Icon.BackgroundColor3 = Color3.new(1, 1, 1)
	Icon.BackgroundTransparency = 1
	Icon.BorderSizePixel = 0
	Icon.BorderColor3 = Color3.new(0, 0, 0)
	Icon.AnchorPoint = Vector2.new(0.5, 0.5)

	Icon.Image = "rbxassetid://10747384394"
	Icon.ImageTransparency = 0.30000001192092896
	Icon.Parent = Close

	local Minimize = Instance.new("ImageButton")
	Minimize.Name = "Minimize"
	Minimize.Position = UDim2.new(0.226392, 0, 0.447589, 0)
	Minimize.Size = UDim2.new(0, 35, 0, 35)
	Minimize.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	Minimize.BackgroundTransparency = 0.10000000149011612
	Minimize.BorderSizePixel = 0
	Minimize.BorderColor3 = Color3.new(0, 0, 0)
	Minimize.AnchorPoint = Vector2.new(0.5, 0.5)
	Minimize.AutomaticSize = Enum.AutomaticSize.X
	Minimize.LayoutOrder = 2
	Minimize.Transparency = 0.10000000149011612
	Minimize.Image = "rbxassetid://16255699706"
	Minimize.ImageTransparency = 0.949999988079071
	Minimize.ScaleType = Enum.ScaleType.Crop
	Minimize.Parent = ButtonZones

	local UICorner4 = Instance.new("UICorner")
	UICorner4.Name = "UICorner"
	UICorner4.CornerRadius = UDim.new(1, 0)
	UICorner4.Parent = Minimize

	local UIListLayout5 = Instance.new("UIListLayout")
	UIListLayout5.Name = "UIListLayout"
	UIListLayout5.Padding = UDim.new(0, 7)
	UIListLayout5.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout5.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout5.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout5.Parent = Minimize

	local UIPadding4 = Instance.new("UIPadding")
	UIPadding4.Name = "UIPadding"
	UIPadding4.PaddingLeft = UDim.new(0, 7)
	UIPadding4.PaddingRight = UDim.new(0, 7)
	UIPadding4.Parent = Minimize

	local UIStroke4 = Instance.new("UIStroke")
	UIStroke4.Name = "UIStroke"
	UIStroke4.Color = Color3.new(1, 1, 1)
	UIStroke4.Transparency = 0.8399999737739563
	UIStroke4.Parent = Minimize

	local Icon2 = Instance.new("ImageLabel")
	Icon2.Name = "Icon"
	Icon2.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon2.Size = UDim2.new(0, 22, 0, 22)
	Icon2.BackgroundColor3 = Color3.new(1, 1, 1)
	Icon2.BackgroundTransparency = 1
	Icon2.BorderSizePixel = 0
	Icon2.BorderColor3 = Color3.new(0, 0, 0)
	Icon2.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon2.Image = "rbxassetid://10734896206"
	Icon2.ImageTransparency = 0.30000001192092896
	Icon2.Parent = Minimize

	local FullScreen = Instance.new("ImageButton")
	FullScreen.Name = "FullScreen"
	FullScreen.Position = UDim2.new(0.226392, 0, 0.447589, 0)
	FullScreen.Size = UDim2.new(0, 35, 0, 35)
	FullScreen.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	FullScreen.BackgroundTransparency = 0.10000000149011612
	FullScreen.BorderSizePixel = 0
	FullScreen.BorderColor3 = Color3.new(0, 0, 0)
	FullScreen.AnchorPoint = Vector2.new(0.5, 0.5)
	FullScreen.AutomaticSize = Enum.AutomaticSize.X
	FullScreen.LayoutOrder = 1
	FullScreen.Transparency = 0.10000000149011612
	FullScreen.Image = "rbxassetid://16255699706"
	FullScreen.ImageTransparency = 0.949999988079071
	FullScreen.ScaleType = Enum.ScaleType.Crop
	FullScreen.Parent = ButtonZones

	local UICorner5 = Instance.new("UICorner")
	UICorner5.Name = "UICorner"
	UICorner5.CornerRadius = UDim.new(1, 0)
	UICorner5.Parent = FullScreen

	local UIListLayout6 = Instance.new("UIListLayout")
	UIListLayout6.Name = "UIListLayout"
	UIListLayout6.Padding = UDim.new(0, 7)
	UIListLayout6.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout6.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout6.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout6.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout6.Parent = FullScreen

	local UIPadding5 = Instance.new("UIPadding")
	UIPadding5.Name = "UIPadding"
	UIPadding5.PaddingLeft = UDim.new(0, 7)
	UIPadding5.PaddingRight = UDim.new(0, 7)
	UIPadding5.Parent = FullScreen

	local UIStroke5 = Instance.new("UIStroke")
	UIStroke5.Name = "UIStroke"
	UIStroke5.Color = Color3.new(1, 1, 1)
	UIStroke5.Transparency = 0.8399999737739563
	UIStroke5.Parent = FullScreen

	local Icon3 = Instance.new("ImageLabel")
	Icon3.Name = "Icon"
	Icon3.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon3.Size = UDim2.new(0, 22, 0, 22)
	Icon3.BackgroundColor3 = Color3.new(1, 1, 1)
	Icon3.BackgroundTransparency = 1
	Icon3.BorderSizePixel = 0
	Icon3.BorderColor3 = Color3.new(0, 0, 0)
	Icon3.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon3.Image = "rbxassetid://10734886735"
	Icon3.ImageTransparency = 0.30000001192092896
	Icon3.Parent = FullScreen

	local UIPadding6 = Instance.new("UIPadding")
	UIPadding6.Name = "UIPadding"
	UIPadding6.PaddingRight = UDim.new(0, 15)
	UIPadding6.Parent = ButtonZones

	local UIListLayout7 = Instance.new("UIListLayout")
	UIListLayout7.Name = "UIListLayout"
	UIListLayout7.Padding = UDim.new(0, 8)
	UIListLayout7.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout7.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout7.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout7.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout7.Parent = ButtonZones

	local Folder = Instance.new("Folder")
	Folder.Name = "Folder"

	Folder.Parent = TopBar

	local Frame = Instance.new("Frame")
	Frame.Name = "Frame"
	Frame.Position = UDim2.new(0, 0, 1, 0)
	Frame.Size = UDim2.new(1, 0, 0, 1)
	Frame.BackgroundColor3 = Color3.new(1, 1, 1)
	Frame.BackgroundTransparency = 0.8999999761581421
	Frame.BorderSizePixel = 0
	Frame.BorderColor3 = Color3.new(0, 0, 0)
	Frame.AnchorPoint = Vector2.new(0, 1)
	Frame.Transparency = 0.8999999761581421
	Frame.Parent = Folder

	local Container = Instance.new("ScrollingFrame")
	Container.Name = "Container"
	Container.Position = UDim2.new(0, 0, 0.143396, 0)
	Container.Size = UDim2.new(1, 0, 0.717598, 0)
	Container.BackgroundColor3 = Color3.new(1, 1, 1)
	Container.BackgroundTransparency = 1
	Container.BorderSizePixel = 0
	Container.BorderColor3 = Color3.new(0, 0, 0)
	Container.Active = true
	Container.CanvasSize = UDim2.new(0, 0, 0, 0)
	Container.ScrollBarImageColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	Container.ScrollBarImageTransparency = 1
	Container.ScrollBarThickness = 3
	Container.AutomaticCanvasSize = Enum.AutomaticSize.Y
	Container.Parent = KeySystem

	local UIListLayout8 = Instance.new("UIListLayout")
	UIListLayout8.Name = "UIListLayout"
	UIListLayout8.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout8.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout8.Parent = Container

	local ElemContainer = Instance.new("ScrollingFrame")
	ElemContainer.Name = "ElemContainer"
	ElemContainer.Size = UDim2.new(1, 0, 1, 0)
	ElemContainer.BackgroundColor3 = Color3.new(1, 1, 1)
	ElemContainer.BackgroundTransparency = 1
	ElemContainer.BorderSizePixel = 0
	ElemContainer.BorderColor3 = Color3.new(0, 0, 0)
	ElemContainer.Active = true
	ElemContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
	ElemContainer.ScrollBarImageColor3 = Color3.new(0.27451, 0.27451, 0.27451)
	ElemContainer.ScrollBarImageTransparency = 0.4000000059604645
	ElemContainer.ScrollBarThickness = 3
	ElemContainer.AutomaticCanvasSize = Enum.AutomaticSize.Y
	ElemContainer.Parent = Container

	local UIListLayout9 = Instance.new("UIListLayout")
	UIListLayout9.Name = "UIListLayout"
	UIListLayout9.Padding = UDim.new(0, 8)
	UIListLayout9.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout9.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout9.Parent = ElemContainer

	local UIPadding7 = Instance.new("UIPadding")
	UIPadding7.Name = "UIPadding"
	UIPadding7.PaddingTop = UDim.new(0, 1)
	UIPadding7.PaddingBottom = UDim.new(0, 1)
	UIPadding7.PaddingLeft = UDim.new(0, 1)
	UIPadding7.PaddingRight = UDim.new(0, 1)
	UIPadding7.Parent = ElemContainer

	local Display = Instance.new("TextLabel")
	Display.Name = "Display"
	Display.Position = UDim2.new(0, 0, 0.363014, 0)
	Display.Size = UDim2.new(0.95, 0, 0, 17)
	Display.BackgroundColor3 = Color3.new(1, 1, 1)
	Display.BackgroundTransparency = 1
	Display.BorderSizePixel = 0
	Display.BorderColor3 = Color3.new(0, 0, 0)
	Display.TextTransparency = 0
	Display.Text = "Support ( Scroll Down For More )"
	Display.TextColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Display.TextSize = 18
	Display.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	Display.TextXAlignment = Enum.TextXAlignment.Left
	Display.RichText = true
	Display.Parent = ElemContainer

	local Join_Button = Instance.new("ImageButton")
	Join_Button.Name = "Join Button"
	Join_Button.Position = UDim2.new(0.0259434, 0, 0, 0)
	Join_Button.Size = UDim2.new(0.93, 0, 0, 0)
	Join_Button.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	Join_Button.BackgroundTransparency = 0.4000000059604645
	Join_Button.BorderSizePixel = 0
	Join_Button.BorderColor3 = Color3.new(0, 0, 0)
	Join_Button.ImageTransparency = 1
	Join_Button.AutomaticSize = Enum.AutomaticSize.Y
	Join_Button.Transparency = 0.4000000059604645
	Join_Button.Parent = ElemContainer

	local Displays = Instance.new("Frame")
	Displays.Name = "Displays"
	Displays.Position = UDim2.new(0.0125523, -6, 0.5, 0)
	Displays.Size = UDim2.new(0.763, 0, 0, 0)
	Displays.BackgroundColor3 = Color3.new(1, 1, 1)
	Displays.BackgroundTransparency = 1
	Displays.BorderSizePixel = 0
	Displays.BorderColor3 = Color3.new(0, 0, 0)
	Displays.AnchorPoint = Vector2.new(0, 0.5)
	Displays.AutomaticSize = Enum.AutomaticSize.Y
	Displays.Parent = Join_Button

	local IconHolder = Instance.new("Frame")
	IconHolder.Name = "IconHolder"
	IconHolder.Position = UDim2.new(0, 0, 0.5, 0)
	IconHolder.Size = UDim2.new(0, 50, 0, 50)
	IconHolder.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
	IconHolder.BorderSizePixel = 0
	IconHolder.BorderColor3 = Color3.new(0, 0, 0)
	IconHolder.AnchorPoint = Vector2.new(0, 0.5)
	IconHolder.Parent = Displays

	local Icon4 = Instance.new("ImageLabel")
	Icon4.Name = "Icon"
	Icon4.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon4.Size = UDim2.new(0, 50, 0, 50)
	Icon4.BackgroundColor3 = Color3.new(1, 1, 1)
	Icon4.BackgroundTransparency = 1
	Icon4.BorderSizePixel = 0
	Icon4.BorderColor3 = Color3.new(0, 0, 0)
	Icon4.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon4.LayoutOrder = -1
	Icon4.Image = "rbxassetid://84828491431270"
	Icon4.ImageColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Icon4.Parent = IconHolder

	local UICorner6 = Instance.new("UICorner")
	UICorner6.Name = "UICorner"
	UICorner6.CornerRadius = UDim.new(0, 15)
	UICorner6.Parent = IconHolder

	local Text = Instance.new("Frame")
	Text.Name = "Text"
	Text.Position = UDim2.new(0.178094, -6, 0, 0)
	Text.Size = UDim2.new(0.279671, 0, 1, 0)
	Text.BackgroundColor3 = Color3.new(1, 1, 1)
	Text.BackgroundTransparency = 1
	Text.BorderSizePixel = 0
	Text.BorderColor3 = Color3.new(0, 0, 0)
	Text.AutomaticSize = Enum.AutomaticSize.X
	Text.LayoutOrder = 2
	Text.Parent = Displays

	local UIListLayout10 = Instance.new("UIListLayout")
	UIListLayout10.Name = "UIListLayout"
	UIListLayout10.Padding = UDim.new(0, 5)
	UIListLayout10.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout10.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout10.Wraps = true
	UIListLayout10.Parent = Text

	local Display2 = Instance.new("TextLabel")
	Display2.Name = "Display"
	Display2.Position = UDim2.new(0, 0, 0.148148, 0)
	Display2.Size = UDim2.new(0, 318, 0, 17)
	Display2.BackgroundColor3 = Color3.new(1, 1, 1)
	Display2.BackgroundTransparency = 1
	Display2.BorderSizePixel = 0
	Display2.BorderColor3 = Color3.new(0, 0, 0)
	Display2.TextTransparency = 0
	Display2.Text = "Join Our Discord"
	Display2.TextColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Display2.TextSize = 18
	Display2.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	Display2.TextXAlignment = Enum.TextXAlignment.Left
	Display2.Parent = Text

	local Description = Instance.new("TextLabel")
	Description.Name = "Description"
	Description.Position = UDim2.new(0, 0, 0.5, 0)
	Description.Size = UDim2.new(1, 0, 0, 0)
	Description.BackgroundColor3 = Color3.new(1, 1, 1)
	Description.BackgroundTransparency = 1
	Description.BorderSizePixel = 0
	Description.BorderColor3 = Color3.new(0, 0, 0)
	Description.AutomaticSize = Enum.AutomaticSize.Y
	Description.TextTransparency = 0
	Description.Text = "Redirects You To Our Discord Server"
	Description.TextColor3 = Color3.new(0.705882, 0.705882, 0.705882)
	Description.TextSize = 16
	Description.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	Description.TextWrapped = true
	Description.TextXAlignment = Enum.TextXAlignment.Left
	Description.TextYAlignment = Enum.TextYAlignment.Top
	Description.Parent = Text

	local UIListLayout11 = Instance.new("UIListLayout")
	UIListLayout11.Name = "UIListLayout"
	UIListLayout11.Padding = UDim.new(0, 10)
	UIListLayout11.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout11.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout11.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout11.Parent = Displays

	local DropdownHolder = Instance.new("Frame")
	DropdownHolder.Name = "DropdownHolder"
	DropdownHolder.Position = UDim2.new(0.931027, 0, 0, 0)
	DropdownHolder.Size = UDim2.new(0, 24, 0, 54)
	DropdownHolder.BackgroundColor3 = Color3.new(1, 1, 1)
	DropdownHolder.BackgroundTransparency = 1
	DropdownHolder.BorderSizePixel = 0
	DropdownHolder.BorderColor3 = Color3.new(0, 0, 0)
	DropdownHolder.LayoutOrder = 1
	DropdownHolder.Parent = Join_Button

	local UIListLayout12 = Instance.new("UIListLayout")
	UIListLayout12.Name = "UIListLayout"
	UIListLayout12.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout12.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout12.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout12.Parent = DropdownHolder

	local Button = Instance.new("ImageButton")
	Button.Name = "Button"
	Button.Size = UDim2.new(0, 29, 0, 29)
	Button.BackgroundColor3 = Color3.new(1, 1, 1)
	Button.BackgroundTransparency = 1
	Button.BorderSizePixel = 0
	Button.BorderColor3 = Color3.new(0, 0, 0)
	Button.Image = "rbxassetid://10709791437"
	Button.ImageColor3 = Color3.new(0.705882, 0.705882, 0.705882)
	Button.Parent = DropdownHolder

	local UIStroke6 = Instance.new("UIStroke")
	UIStroke6.Name = "UIStroke"
	UIStroke6.Color = Color3.new(1, 1, 1)
	UIStroke6.Transparency = 0.8999999761581421
	UIStroke6.Parent = Join_Button

	local UICorner7 = Instance.new("UICorner")
	UICorner7.Name = "UICorner"
	UICorner7.CornerRadius = UDim.new(0, 20)
	UICorner7.Parent = Join_Button

	local UIPadding8 = Instance.new("UIPadding")
	UIPadding8.Name = "UIPadding"
	UIPadding8.PaddingTop = UDim.new(0, 15)
	UIPadding8.PaddingBottom = UDim.new(0, 15)
	UIPadding8.PaddingLeft = UDim.new(0, 15)
	UIPadding8.PaddingRight = UDim.new(0, 15)
	UIPadding8.Parent = Join_Button

	local UIListLayout13 = Instance.new("UIListLayout")
	UIListLayout13.Name = "UIListLayout"
	UIListLayout13.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout13.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout13.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout13.HorizontalFlex = Enum.UIFlexAlignment.Fill
	UIListLayout13.VerticalFlex = Enum.UIFlexAlignment.Fill
	UIListLayout13.Parent = Join_Button

	local UIListLayout14 = Instance.new("UIListLayout")
	UIListLayout14.Name = "UIListLayout"
	UIListLayout14.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout14.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout14.Parent = ElemContainer

	local Guide = Instance.new("Frame")
	Guide.Name = "Guide"
	Guide.Position = UDim2.new(0.0259434, 0, 0, 0)
	Guide.Size = UDim2.new(0.93, 0, 0, 0)
	Guide.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	Guide.BackgroundTransparency = 0.4000000059604645
	Guide.BorderSizePixel = 0
	Guide.BorderColor3 = Color3.new(0, 0, 0)
	Guide.AutomaticSize = Enum.AutomaticSize.Y
	Guide.Transparency = 0.4000000059604645
	Guide.Parent = ElemContainer

	local Displays2 = Instance.new("Frame")
	Displays2.Name = "Displays"
	Displays2.Position = UDim2.new(0.0125523, -6, 0.5, 0)
	Displays2.Size = UDim2.new(0.763, 0, 0, 0)
	Displays2.BackgroundColor3 = Color3.new(1, 1, 1)
	Displays2.BackgroundTransparency = 1
	Displays2.BorderSizePixel = 0
	Displays2.BorderColor3 = Color3.new(0, 0, 0)
	Displays2.AnchorPoint = Vector2.new(0, 0.5)
	Displays2.AutomaticSize = Enum.AutomaticSize.Y
	Displays2.Parent = Guide

	local IconHolder2 = Instance.new("Frame")
	IconHolder2.Name = "IconHolder"
	IconHolder2.Position = UDim2.new(0, 0, 0.5, 0)
	IconHolder2.Size = UDim2.new(0, 50, 0, 50)
	IconHolder2.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
	IconHolder2.BorderSizePixel = 0
	IconHolder2.BorderColor3 = Color3.new(0, 0, 0)
	IconHolder2.AnchorPoint = Vector2.new(0, 0.5)
	IconHolder2.Parent = Displays2

	local Icon5 = Instance.new("ImageLabel")
	Icon5.Name = "Icon"
	Icon5.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon5.Size = UDim2.new(0, 30, 0, 30)
	Icon5.BackgroundColor3 = Color3.new(1, 1, 1)
	Icon5.BackgroundTransparency = 1
	Icon5.BorderSizePixel = 0
	Icon5.BorderColor3 = Color3.new(0, 0, 0)
	Icon5.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon5.LayoutOrder = -1
	Icon5.Image = "rbxassetid://10723415903"
	Icon5.ImageColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Icon5.Parent = IconHolder2

	local UICorner8 = Instance.new("UICorner")
	UICorner8.Name = "UICorner"
	UICorner8.CornerRadius = UDim.new(0, 15)
	UICorner8.Parent = IconHolder2

	local Text2 = Instance.new("Frame")
	Text2.Name = "Text"
	Text2.Position = UDim2.new(0.178094, -6, 0, 0)
	Text2.Size = UDim2.new(0.279671, 0, 1, 0)
	Text2.BackgroundColor3 = Color3.new(1, 1, 1)
	Text2.BackgroundTransparency = 1
	Text2.BorderSizePixel = 0
	Text2.BorderColor3 = Color3.new(0, 0, 0)
	Text2.AutomaticSize = Enum.AutomaticSize.X
	Text2.LayoutOrder = 2
	Text2.Parent = Displays2

	local UIListLayout15 = Instance.new("UIListLayout")
	UIListLayout15.Name = "UIListLayout"
	UIListLayout15.Padding = UDim.new(0, 5)
	UIListLayout15.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout15.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout15.Wraps = true
	UIListLayout15.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout15.Parent = Text2

	local Description2 = Instance.new("TextLabel")
	Description2.Name = "Description"
	Description2.Position = UDim2.new(0, 0, 0.5, 0)
	Description2.Size = UDim2.new(1, 0, 0, 0)
	Description2.BackgroundColor3 = Color3.new(1, 1, 1)
	Description2.BackgroundTransparency = 1
	Description2.BorderSizePixel = 0
	Description2.BorderColor3 = Color3.new(0, 0, 0)
	Description2.AutomaticSize = Enum.AutomaticSize.Y
	Description2.LayoutOrder = 1
	Description2.TextTransparency = 0
	Description2.Text = [[
[Support]: Join our Discord by clicking the icon at the bottom right or by clicking this button.

Steps:

1. Scroll down and choose a link to go through (Linkvertise, Workink, Lootlabs).

2. After clicking one of the buttons, open the link in your browser.

3. Complete the steps required by the website you chose (they are not malicious).

4. Once the tasks are done, return here and paste in the key.

5. Paste the key into the textbox below and click Verify.
]]

	Description2.TextColor3 = Color3.new(0.705882, 0.705882, 0.705882)
	Description2.TextSize = 16
	Description2.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	Description2.TextWrapped = true
	Description2.TextXAlignment = Enum.TextXAlignment.Left
	Description2.TextYAlignment = Enum.TextYAlignment.Top
	Description2.Parent = Text2

	local Display3 = Instance.new("TextLabel")
	Display3.Name = "Display"
	Display3.Position = UDim2.new(0, 0, 0.363014, 0)
	Display3.Size = UDim2.new(1, 0, 0, 17)
	Display3.BackgroundColor3 = Color3.new(1, 1, 1)
	Display3.BackgroundTransparency = 1
	Display3.BorderSizePixel = 0
	Display3.BorderColor3 = Color3.new(0, 0, 0)
	Display3.TextTransparency = 0
	Display3.Text = "Get Key Guide"
	Display3.TextColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Display3.TextSize = 18
	Display3.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	Display3.TextXAlignment = Enum.TextXAlignment.Left
	Display3.Parent = Text2

	local UIListLayout16 = Instance.new("UIListLayout")
	UIListLayout16.Name = "UIListLayout"
	UIListLayout16.Padding = UDim.new(0, 10)
	UIListLayout16.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout16.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout16.Parent = Displays2

	local UIStroke7 = Instance.new("UIStroke")
	UIStroke7.Name = "UIStroke"
	UIStroke7.Color = Color3.new(1, 1, 1)
	UIStroke7.Transparency = 0.8999999761581421
	UIStroke7.Parent = Guide

	local UICorner9 = Instance.new("UICorner")
	UICorner9.Name = "UICorner"
	UICorner9.CornerRadius = UDim.new(0, 20)
	UICorner9.Parent = Guide

	local UIPadding9 = Instance.new("UIPadding")
	UIPadding9.Name = "UIPadding"
	UIPadding9.PaddingTop = UDim.new(0, 15)
	UIPadding9.PaddingBottom = UDim.new(0, 15)
	UIPadding9.PaddingLeft = UDim.new(0, 15)
	UIPadding9.PaddingRight = UDim.new(0, 15)
	UIPadding9.Parent = Guide

	local UIListLayout17 = Instance.new("UIListLayout")
	UIListLayout17.Name = "UIListLayout"
	UIListLayout17.Padding = UDim.new(0, 10)
	UIListLayout17.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout17.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout17.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout17.Wraps = true
	UIListLayout17.HorizontalFlex = Enum.UIFlexAlignment.Fill
	UIListLayout17.VerticalFlex = Enum.UIFlexAlignment.Fill
	UIListLayout17.Parent = Guide

	local Display4 = Instance.new("TextLabel")
	Display4.Name = "Display"
	Display4.Position = UDim2.new(0, 0, 0.363014, 0)
	Display4.Size = UDim2.new(0.95, 0, 0, 17)
	Display4.BackgroundColor3 = Color3.new(1, 1, 1)
	Display4.BackgroundTransparency = 1
	Display4.BorderSizePixel = 0
	Display4.BorderColor3 = Color3.new(0, 0, 0)
	Display4.TextTransparency = 0
	Display4.Text = "Key Links"
	Display4.TextColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Display4.TextSize = 18
	Display4.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	Display4.TextXAlignment = Enum.TextXAlignment.Left
	Display4.RichText = true
	Display4.Parent = ElemContainer

	local Join_Button2 = Instance.new("ImageButton")
	Join_Button2.Name = "Join Button"
	Join_Button2.Position = UDim2.new(0.0259434, 0, 0, 0)
	Join_Button2.Size = UDim2.new(0.93, 0, 0, 0)
	Join_Button2.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	Join_Button2.BackgroundTransparency = 0.4000000059604645
	Join_Button2.BorderSizePixel = 0
	Join_Button2.BorderColor3 = Color3.new(0, 0, 0)
	Join_Button2.AutomaticSize = Enum.AutomaticSize.Y
	Join_Button2.LayoutOrder = 1
	Join_Button2.Image = ""
	Join_Button2.Transparency = 0.4000000059604645
	Join_Button2.Parent = ElemContainer

	local Displays3 = Instance.new("Frame")
	Displays3.Name = "Displays"
	Displays3.Position = UDim2.new(0.0125523, -6, 0.5, 0)
	Displays3.Size = UDim2.new(0.763, 0, 0, 0)
	Displays3.BackgroundColor3 = Color3.new(1, 1, 1)
	Displays3.BackgroundTransparency = 1
	Displays3.BorderSizePixel = 0
	Displays3.BorderColor3 = Color3.new(0, 0, 0)
	Displays3.AnchorPoint = Vector2.new(0, 0.5)
	Displays3.AutomaticSize = Enum.AutomaticSize.Y
	Displays3.Parent = Join_Button2

	local IconHolder3 = Instance.new("Frame")
	IconHolder3.Name = "IconHolder"
	IconHolder3.Position = UDim2.new(0, 0, 0.5, 0)
	IconHolder3.Size = UDim2.new(0, 50, 0, 50)
	IconHolder3.BackgroundColor3 = Color3.new(1, 1, 1)
	IconHolder3.BorderSizePixel = 0
	IconHolder3.BorderColor3 = Color3.new(0, 0, 0)
	IconHolder3.AnchorPoint = Vector2.new(0, 0.5)
	IconHolder3.Parent = Displays3

	local Icon6 = Instance.new("ImageLabel")
	Icon6.Name = "Icon"
	Icon6.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon6.Size = UDim2.new(0, 40, 0, 40)
	Icon6.BackgroundColor3 = Color3.new(1, 1, 1)
	Icon6.BackgroundTransparency = 1
	Icon6.BorderSizePixel = 0
	Icon6.BorderColor3 = Color3.new(0, 0, 0)
	Icon6.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon6.LayoutOrder = -1
	Icon6.Image = "rbxassetid://86630809584442"
	Icon6.ImageColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Icon6.Parent = IconHolder3

	local UICorner10 = Instance.new("UICorner")
	UICorner10.Name = "UICorner"
	UICorner10.CornerRadius = UDim.new(0, 15)
	UICorner10.Parent = IconHolder3

	local Text3 = Instance.new("Frame")
	Text3.Name = "Text"
	Text3.Position = UDim2.new(0.178094, -6, 0, 0)
	Text3.Size = UDim2.new(0.279671, 0, 1, 0)
	Text3.BackgroundColor3 = Color3.new(1, 1, 1)
	Text3.BackgroundTransparency = 1
	Text3.BorderSizePixel = 0
	Text3.BorderColor3 = Color3.new(0, 0, 0)
	Text3.AutomaticSize = Enum.AutomaticSize.X
	Text3.LayoutOrder = 2
	Text3.Parent = Displays3

	local UIListLayout18 = Instance.new("UIListLayout")
	UIListLayout18.Name = "UIListLayout"
	UIListLayout18.Padding = UDim.new(0, 5)
	UIListLayout18.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout18.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout18.Wraps = true
	UIListLayout18.Parent = Text3

	local Display5 = Instance.new("TextLabel")
	Display5.Name = "Display"
	Display5.Position = UDim2.new(0, 0, 0.148148, 0)
	Display5.Size = UDim2.new(0, 318, 0, 17)
	Display5.BackgroundColor3 = Color3.new(1, 1, 1)
	Display5.BackgroundTransparency = 1
	Display5.BorderSizePixel = 0
	Display5.BorderColor3 = Color3.new(0, 0, 0)
	Display5.TextTransparency = 0
	Display5.Text = "Work.Ink"
	Display5.TextColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Display5.TextSize = 18
	Display5.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	Display5.TextXAlignment = Enum.TextXAlignment.Left
	Display5.Parent = Text3

	local Description3 = Instance.new("TextLabel")
	Description3.Name = "Description"
	Description3.Position = UDim2.new(0, 0, 0.5, 0)
	Description3.Size = UDim2.new(1, 0, 0, 0)
	Description3.BackgroundColor3 = Color3.new(1, 1, 1)
	Description3.BackgroundTransparency = 1
	Description3.BorderSizePixel = 0
	Description3.BorderColor3 = Color3.new(0, 0, 0)
	Description3.AutomaticSize = Enum.AutomaticSize.Y
	Description3.TextTransparency = 0
	Description3.Text = "Redirects you to Work.ink  to continue the keysystem"
	Description3.TextColor3 = Color3.new(0.705882, 0.705882, 0.705882)
	Description3.TextSize = 16
	Description3.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	Description3.TextWrapped = true
	Description3.TextXAlignment = Enum.TextXAlignment.Left
	Description3.TextYAlignment = Enum.TextYAlignment.Top
	Description3.Parent = Text3

	local UIListLayout19 = Instance.new("UIListLayout")
	UIListLayout19.Name = "UIListLayout"
	UIListLayout19.Padding = UDim.new(0, 10)
	UIListLayout19.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout19.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout19.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout19.Parent = Displays3

	local DropdownHolder2 = Instance.new("Frame")
	DropdownHolder2.Name = "DropdownHolder"
	DropdownHolder2.Position = UDim2.new(0.931027, 0, 0, 0)
	DropdownHolder2.Size = UDim2.new(0, 24, 0, 54)
	DropdownHolder2.BackgroundColor3 = Color3.new(1, 1, 1)
	DropdownHolder2.BackgroundTransparency = 1
	DropdownHolder2.BorderSizePixel = 0
	DropdownHolder2.BorderColor3 = Color3.new(0, 0, 0)
	DropdownHolder2.LayoutOrder = 1
	DropdownHolder2.Parent = Join_Button2

	local UIListLayout20 = Instance.new("UIListLayout")
	UIListLayout20.Name = "UIListLayout"
	UIListLayout20.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout20.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout20.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout20.Parent = DropdownHolder2

	local Button2 = Instance.new("ImageButton")
	Button2.Name = "Button"
	Button2.Size = UDim2.new(0, 29, 0, 29)
	Button2.BackgroundColor3 = Color3.new(1, 1, 1)
	Button2.BackgroundTransparency = 1
	Button2.BorderSizePixel = 0
	Button2.BorderColor3 = Color3.new(0, 0, 0)
	Button2.Image = "rbxassetid://10709791437"
	Button2.ImageColor3 = Color3.new(0.705882, 0.705882, 0.705882)
	Button2.Parent = DropdownHolder2

	local UIStroke8 = Instance.new("UIStroke")
	UIStroke8.Name = "UIStroke"
	UIStroke8.Color = Color3.new(1, 1, 1)
	UIStroke8.Transparency = 0.8999999761581421
	UIStroke8.Parent = Join_Button2

	local UICorner11 = Instance.new("UICorner")
	UICorner11.Name = "UICorner"
	UICorner11.CornerRadius = UDim.new(0, 20)
	UICorner11.Parent = Join_Button2

	local UIPadding10 = Instance.new("UIPadding")
	UIPadding10.Name = "UIPadding"
	UIPadding10.PaddingTop = UDim.new(0, 15)
	UIPadding10.PaddingBottom = UDim.new(0, 15)
	UIPadding10.PaddingLeft = UDim.new(0, 15)
	UIPadding10.PaddingRight = UDim.new(0, 15)
	UIPadding10.Parent = Join_Button2

	local UIListLayout21 = Instance.new("UIListLayout")
	UIListLayout21.Name = "UIListLayout"
	UIListLayout21.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout21.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout21.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout21.HorizontalFlex = Enum.UIFlexAlignment.Fill
	UIListLayout21.VerticalFlex = Enum.UIFlexAlignment.Fill
	UIListLayout21.Parent = Join_Button2

	local Join_Button3 = Instance.new("ImageButton")
	Join_Button3.Name = "Join Button"
	Join_Button3.Position = UDim2.new(0.0259434, 0, 0, 0)
	Join_Button3.Size = UDim2.new(0.93, 0, 0, 0)
	Join_Button3.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	Join_Button3.BackgroundTransparency = 0.4000000059604645
	Join_Button3.BorderSizePixel = 0
	Join_Button3.BorderColor3 = Color3.new(0, 0, 0)
	Join_Button3.AutomaticSize = Enum.AutomaticSize.Y
	Join_Button3.LayoutOrder = 1
	Join_Button3.Image = ""
	Join_Button3.Transparency = 0.4000000059604645
	Join_Button3.Parent = ElemContainer

	local Displays4 = Instance.new("Frame")
	Displays4.Name = "Displays"
	Displays4.Position = UDim2.new(0.0125523, -6, 0.5, 0)
	Displays4.Size = UDim2.new(0.763, 0, 0, 0)
	Displays4.BackgroundColor3 = Color3.new(1, 1, 1)
	Displays4.BackgroundTransparency = 1
	Displays4.BorderSizePixel = 0
	Displays4.BorderColor3 = Color3.new(0, 0, 0)
	Displays4.AnchorPoint = Vector2.new(0, 0.5)
	Displays4.AutomaticSize = Enum.AutomaticSize.Y
	Displays4.Parent = Join_Button3

	local IconHolder4 = Instance.new("Frame")
	IconHolder4.Name = "IconHolder"
	IconHolder4.Position = UDim2.new(0, 0, 0.5, 0)
	IconHolder4.Size = UDim2.new(0, 50, 0, 50)
	IconHolder4.BackgroundColor3 = Color3.new(1, 1, 1)
	IconHolder4.BorderSizePixel = 0
	IconHolder4.BorderColor3 = Color3.new(0, 0, 0)
	IconHolder4.AnchorPoint = Vector2.new(0, 0.5)
	IconHolder4.Parent = Displays4

	local Icon7 = Instance.new("ImageLabel")
	Icon7.Name = "Icon"
	Icon7.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon7.Size = UDim2.new(0, 45, 0, 45)
	Icon7.BackgroundColor3 = Color3.new(1, 1, 1)
	Icon7.BackgroundTransparency = 1
	Icon7.BorderSizePixel = 0
	Icon7.BorderColor3 = Color3.new(0, 0, 0)
	Icon7.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon7.LayoutOrder = -1
	Icon7.Image = "rbxassetid://93500707607506"
	Icon7.ImageColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Icon7.Parent = IconHolder4

	local UICorner12 = Instance.new("UICorner")
	UICorner12.Name = "UICorner"
	UICorner12.CornerRadius = UDim.new(0, 15)
	UICorner12.Parent = IconHolder4

	local Text4 = Instance.new("Frame")
	Text4.Name = "Text"
	Text4.Position = UDim2.new(0.178094, -6, 0, 0)
	Text4.Size = UDim2.new(0.279671, 0, 1, 0)
	Text4.BackgroundColor3 = Color3.new(1, 1, 1)
	Text4.BackgroundTransparency = 1
	Text4.BorderSizePixel = 0
	Text4.BorderColor3 = Color3.new(0, 0, 0)
	Text4.AutomaticSize = Enum.AutomaticSize.X
	Text4.LayoutOrder = 2
	Text4.Parent = Displays4

	local UIListLayout22 = Instance.new("UIListLayout")
	UIListLayout22.Name = "UIListLayout"
	UIListLayout22.Padding = UDim.new(0, 5)
	UIListLayout22.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout22.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout22.Wraps = true
	UIListLayout22.Parent = Text4

	local Display6 = Instance.new("TextLabel")
	Display6.Name = "Display"
	Display6.Position = UDim2.new(0, 0, 0.037037, 0)
	Display6.Size = UDim2.new(0, 318, 0, 17)
	Display6.BackgroundColor3 = Color3.new(1, 1, 1)
	Display6.BackgroundTransparency = 1
	Display6.BorderSizePixel = 0
	Display6.BorderColor3 = Color3.new(0, 0, 0)
	Display6.TextTransparency = 0
	Display6.Text = "Linkvertise"
	Display6.TextColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Display6.TextSize = 18
	Display6.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	Display6.TextXAlignment = Enum.TextXAlignment.Left
	Display6.Parent = Text4

	local Description4 = Instance.new("TextLabel")
	Description4.Name = "Description"
	Description4.Position = UDim2.new(0, 0, 0.5, 0)
	Description4.Size = UDim2.new(1, 0, 0, 0)
	Description4.BackgroundColor3 = Color3.new(1, 1, 1)
	Description4.BackgroundTransparency = 1
	Description4.BorderSizePixel = 0
	Description4.BorderColor3 = Color3.new(0, 0, 0)
	Description4.AutomaticSize = Enum.AutomaticSize.Y
	Description4.TextTransparency = 0
	Description4.Text = "Redirects you to linkvertise to continue the keysystem"
	Description4.TextColor3 = Color3.new(0.705882, 0.705882, 0.705882)
	Description4.TextSize = 16
	Description4.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	Description4.TextWrapped = true
	Description4.TextXAlignment = Enum.TextXAlignment.Left
	Description4.TextYAlignment = Enum.TextYAlignment.Top
	Description4.Parent = Text4

	local UIListLayout23 = Instance.new("UIListLayout")
	UIListLayout23.Name = "UIListLayout"
	UIListLayout23.Padding = UDim.new(0, 10)
	UIListLayout23.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout23.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout23.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout23.Parent = Displays4

	local DropdownHolder3 = Instance.new("Frame")
	DropdownHolder3.Name = "DropdownHolder"
	DropdownHolder3.Position = UDim2.new(0.931027, 0, 0, 0)
	DropdownHolder3.Size = UDim2.new(0, 24, 0, 54)
	DropdownHolder3.BackgroundColor3 = Color3.new(1, 1, 1)
	DropdownHolder3.BackgroundTransparency = 1
	DropdownHolder3.BorderSizePixel = 0
	DropdownHolder3.BorderColor3 = Color3.new(0, 0, 0)
	DropdownHolder3.LayoutOrder = 1
	DropdownHolder3.Parent = Join_Button3

	local UIListLayout24 = Instance.new("UIListLayout")
	UIListLayout24.Name = "UIListLayout"
	UIListLayout24.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout24.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout24.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout24.Parent = DropdownHolder3

	local Button3 = Instance.new("ImageButton")
	Button3.Name = "Button"
	Button3.Size = UDim2.new(0, 29, 0, 29)
	Button3.BackgroundColor3 = Color3.new(1, 1, 1)
	Button3.BackgroundTransparency = 1
	Button3.BorderSizePixel = 0
	Button3.BorderColor3 = Color3.new(0, 0, 0)
	Button3.Image = "rbxassetid://10709791437"
	Button3.ImageColor3 = Color3.new(0.705882, 0.705882, 0.705882)
	Button3.Parent = DropdownHolder3

	local UIStroke9 = Instance.new("UIStroke")
	UIStroke9.Name = "UIStroke"
	UIStroke9.Color = Color3.new(1, 1, 1)
	UIStroke9.Transparency = 0.8999999761581421
	UIStroke9.Parent = Join_Button3

	local UICorner13 = Instance.new("UICorner")
	UICorner13.Name = "UICorner"
	UICorner13.CornerRadius = UDim.new(0, 20)
	UICorner13.Parent = Join_Button3

	local UIPadding11 = Instance.new("UIPadding")
	UIPadding11.Name = "UIPadding"
	UIPadding11.PaddingTop = UDim.new(0, 15)
	UIPadding11.PaddingBottom = UDim.new(0, 15)
	UIPadding11.PaddingLeft = UDim.new(0, 15)
	UIPadding11.PaddingRight = UDim.new(0, 15)
	UIPadding11.Parent = Join_Button3

	local UIListLayout25 = Instance.new("UIListLayout")
	UIListLayout25.Name = "UIListLayout"
	UIListLayout25.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout25.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout25.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout25.HorizontalFlex = Enum.UIFlexAlignment.Fill
	UIListLayout25.VerticalFlex = Enum.UIFlexAlignment.Fill
	UIListLayout25.Parent = Join_Button3

	local Join_Button4 = Instance.new("ImageButton")
	Join_Button4.Name = "Join Button"
	Join_Button4.Position = UDim2.new(0.0259434, 0, 0, 0)
	Join_Button4.Size = UDim2.new(0.93, 0, 0, 0)
	Join_Button4.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	Join_Button4.BackgroundTransparency = 0.4000000059604645
	Join_Button4.BorderSizePixel = 0
	Join_Button4.BorderColor3 = Color3.new(0, 0, 0)
	Join_Button4.AutomaticSize = Enum.AutomaticSize.Y
	Join_Button4.LayoutOrder = 1
	Join_Button4.Image = ""
	Join_Button4.Transparency = 0.4000000059604645
	Join_Button4.Parent = ElemContainer

	local Displays5 = Instance.new("Frame")
	Displays5.Name = "Displays"
	Displays5.Position = UDim2.new(0.0125523, -6, 0.5, 0)
	Displays5.Size = UDim2.new(0.763, 0, 0, 0)
	Displays5.BackgroundColor3 = Color3.new(1, 1, 1)
	Displays5.BackgroundTransparency = 1
	Displays5.BorderSizePixel = 0
	Displays5.BorderColor3 = Color3.new(0, 0, 0)
	Displays5.AnchorPoint = Vector2.new(0, 0.5)
	Displays5.AutomaticSize = Enum.AutomaticSize.Y
	Displays5.Parent = Join_Button4

	local IconHolder5 = Instance.new("Frame")
	IconHolder5.Name = "IconHolder"
	IconHolder5.Position = UDim2.new(0, 0, 0.5, 0)
	IconHolder5.Size = UDim2.new(0, 50, 0, 50)
	IconHolder5.BackgroundColor3 = Color3.new(1, 1, 1)
	IconHolder5.BorderSizePixel = 0
	IconHolder5.BorderColor3 = Color3.new(0, 0, 0)
	IconHolder5.AnchorPoint = Vector2.new(0, 0.5)
	IconHolder5.Parent = Displays5

	local Icon8 = Instance.new("ImageLabel")
	Icon8.Name = "Icon"
	Icon8.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon8.Size = UDim2.new(0, 40, 0, 40)
	Icon8.BackgroundColor3 = Color3.new(1, 1, 1)
	Icon8.BackgroundTransparency = 1
	Icon8.BorderSizePixel = 0
	Icon8.BorderColor3 = Color3.new(0, 0, 0)
	Icon8.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon8.LayoutOrder = -1
	Icon8.Image = "rbxassetid://138612751192615"
	Icon8.ImageColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Icon8.Parent = IconHolder5

	local UICorner14 = Instance.new("UICorner")
	UICorner14.Name = "UICorner"
	UICorner14.CornerRadius = UDim.new(0, 15)
	UICorner14.Parent = IconHolder5

	local Text5 = Instance.new("Frame")
	Text5.Name = "Text"
	Text5.Position = UDim2.new(0.178094, -6, 0, 0)
	Text5.Size = UDim2.new(0.279671, 0, 1, 0)
	Text5.BackgroundColor3 = Color3.new(1, 1, 1)
	Text5.BackgroundTransparency = 1
	Text5.BorderSizePixel = 0
	Text5.BorderColor3 = Color3.new(0, 0, 0)
	Text5.AutomaticSize = Enum.AutomaticSize.X
	Text5.LayoutOrder = 2
	Text5.Parent = Displays5

	local UIListLayout26 = Instance.new("UIListLayout")
	UIListLayout26.Name = "UIListLayout"
	UIListLayout26.Padding = UDim.new(0, 5)
	UIListLayout26.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout26.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout26.Wraps = true
	UIListLayout26.Parent = Text5

	local Display7 = Instance.new("TextLabel")
	Display7.Name = "Display"
	Display7.Position = UDim2.new(0, 0, 0.037037, 0)
	Display7.Size = UDim2.new(0, 318, 0, 17)
	Display7.BackgroundColor3 = Color3.new(1, 1, 1)
	Display7.BackgroundTransparency = 1
	Display7.BorderSizePixel = 0
	Display7.BorderColor3 = Color3.new(0, 0, 0)
	Display7.TextTransparency = 0
	Display7.Text = "Lootlabs"
	Display7.TextColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Display7.TextSize = 18
	Display7.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
	Display7.TextXAlignment = Enum.TextXAlignment.Left
	Display7.Parent = Text5

	local Description5 = Instance.new("TextLabel")
	Description5.Name = "Description"
	Description5.Position = UDim2.new(0, 0, 0.5, 0)
	Description5.Size = UDim2.new(1, 0, 0, 0)
	Description5.BackgroundColor3 = Color3.new(1, 1, 1)
	Description5.BackgroundTransparency = 1
	Description5.BorderSizePixel = 0
	Description5.BorderColor3 = Color3.new(0, 0, 0)
	Description5.AutomaticSize = Enum.AutomaticSize.Y
	Description5.TextTransparency = 0
	Description5.Text = "Redirects you to LootLabs  to continue the keysystem"
	Description5.TextColor3 = Color3.new(0.705882, 0.705882, 0.705882)
	Description5.TextSize = 16
	Description5.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	Description5.TextWrapped = true
	Description5.TextXAlignment = Enum.TextXAlignment.Left
	Description5.TextYAlignment = Enum.TextYAlignment.Top
	Description5.Parent = Text5

	local UIListLayout27 = Instance.new("UIListLayout")
	UIListLayout27.Name = "UIListLayout"
	UIListLayout27.Padding = UDim.new(0, 10)
	UIListLayout27.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout27.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout27.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout27.Parent = Displays5

	local DropdownHolder4 = Instance.new("Frame")
	DropdownHolder4.Name = "DropdownHolder"
	DropdownHolder4.Position = UDim2.new(0.931027, 0, 0, 0)
	DropdownHolder4.Size = UDim2.new(0, 24, 0, 54)
	DropdownHolder4.BackgroundColor3 = Color3.new(1, 1, 1)
	DropdownHolder4.BackgroundTransparency = 1
	DropdownHolder4.BorderSizePixel = 0
	DropdownHolder4.BorderColor3 = Color3.new(0, 0, 0)
	DropdownHolder4.LayoutOrder = 1
	DropdownHolder4.Parent = Join_Button4

	local UIListLayout28 = Instance.new("UIListLayout")
	UIListLayout28.Name = "UIListLayout"
	UIListLayout28.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout28.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout28.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout28.Parent = DropdownHolder4

	local Button4 = Instance.new("ImageButton")
	Button4.Name = "Button"
	Button4.Size = UDim2.new(0, 29, 0, 29)
	Button4.BackgroundColor3 = Color3.new(1, 1, 1)
	Button4.BackgroundTransparency = 1
	Button4.BorderSizePixel = 0
	Button4.BorderColor3 = Color3.new(0, 0, 0)
	Button4.Image = "rbxassetid://10709791437"
	Button4.ImageColor3 = Color3.new(0.705882, 0.705882, 0.705882)
	Button4.Parent = DropdownHolder4

	local UIStroke10 = Instance.new("UIStroke")
	UIStroke10.Name = "UIStroke"
	UIStroke10.Color = Color3.new(1, 1, 1)
	UIStroke10.Transparency = 0.8999999761581421
	UIStroke10.Parent = Join_Button4

	local UICorner15 = Instance.new("UICorner")
	UICorner15.Name = "UICorner"
	UICorner15.CornerRadius = UDim.new(0, 20)
	UICorner15.Parent = Join_Button4

	local UIPadding12 = Instance.new("UIPadding")
	UIPadding12.Name = "UIPadding"
	UIPadding12.PaddingTop = UDim.new(0, 15)
	UIPadding12.PaddingBottom = UDim.new(0, 15)
	UIPadding12.PaddingLeft = UDim.new(0, 15)
	UIPadding12.PaddingRight = UDim.new(0, 15)
	UIPadding12.Parent = Join_Button4

	local UIListLayout29 = Instance.new("UIListLayout")
	UIListLayout29.Name = "UIListLayout"
	UIListLayout29.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout29.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout29.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout29.HorizontalFlex = Enum.UIFlexAlignment.Fill
	UIListLayout29.VerticalFlex = Enum.UIFlexAlignment.Fill
	UIListLayout29.Parent = Join_Button4

	local UIListLayout30 = Instance.new("UIListLayout")
	UIListLayout30.Name = "UIListLayout"
	UIListLayout30.Padding = UDim.new(0, 5)
	UIListLayout30.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout30.HorizontalFlex = Enum.UIFlexAlignment.Fill
	UIListLayout30.VerticalFlex = Enum.UIFlexAlignment.Fill
	UIListLayout30.Parent = KeySystem

	local KeyBar = Instance.new("Frame")
	KeyBar.Name = "KeyBar"
	KeyBar.Size = UDim2.new(1, 0, 0, 71)
	KeyBar.BackgroundColor3 = Color3.new(1, 1, 1)
	KeyBar.BackgroundTransparency = 1
	KeyBar.BorderSizePixel = 0
	KeyBar.BorderColor3 = Color3.new(0, 0, 0)
	KeyBar.Parent = KeySystem

	local Header2 = Instance.new("Frame")
	Header2.Name = "Header"
	Header2.Size = UDim2.new(0.5, 0, 1, 0)
	Header2.BackgroundColor3 = Color3.new(1, 1, 1)
	Header2.BackgroundTransparency = 1
	Header2.BorderSizePixel = 0
	Header2.BorderColor3 = Color3.new(0, 0, 0)
	Header2.Parent = KeyBar

	local KeyBox = Instance.new("ImageButton")
	KeyBox.Name = "KeyBox"
	KeyBox.Position = UDim2.new(0.477379, 0, 0.5, 0)
	KeyBox.Size = UDim2.new(0, 306, 0, 45)
	KeyBox.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	KeyBox.BackgroundTransparency = 0.6000000238418579
	KeyBox.BorderSizePixel = 0
	KeyBox.BorderColor3 = Color3.new(0, 0, 0)
	KeyBox.AnchorPoint = Vector2.new(0.5, 0.5)
	KeyBox.AutomaticSize = Enum.AutomaticSize.X
	KeyBox.Transparency = 0.6000000238418579
	KeyBox.Image = "rbxassetid://16255699706"
	KeyBox.ImageTransparency = 0.949999988079071
	KeyBox.ScaleType = Enum.ScaleType.Crop
	KeyBox.Parent = Header2

	local UICorner16 = Instance.new("UICorner")
	UICorner16.Name = "UICorner"
	UICorner16.CornerRadius = UDim.new(1, 0)
	UICorner16.Parent = KeyBox

	local UIListLayout31 = Instance.new("UIListLayout")
	UIListLayout31.Name = "UIListLayout"
	UIListLayout31.Padding = UDim.new(0, 7)
	UIListLayout31.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout31.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout31.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout31.Parent = KeyBox

	local UIPadding13 = Instance.new("UIPadding")
	UIPadding13.Name = "UIPadding"
	UIPadding13.PaddingLeft = UDim.new(0, 12)
	UIPadding13.PaddingRight = UDim.new(0, 12)
	UIPadding13.Parent = KeyBox

	local UIStroke11 = Instance.new("UIStroke")
	UIStroke11.Name = "UIStroke"
	UIStroke11.Color = Color3.new(1, 1, 1)
	UIStroke11.Transparency = 0.8500000238418579
	UIStroke11.Parent = KeyBox

	local Icon9 = Instance.new("ImageLabel")
	Icon9.Name = "Icon"
	Icon9.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon9.Size = UDim2.new(0, 22, 0, 22)
	Icon9.BackgroundColor3 = Color3.new(1, 1, 1)
	Icon9.BackgroundTransparency = 1
	Icon9.BorderSizePixel = 0
	Icon9.BorderColor3 = Color3.new(0, 0, 0)
	Icon9.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon9.Image = "rbxassetid://10723416652"
	Icon9.ImageTransparency = 0.30000001192092896
	Icon9.Parent = KeyBox

	local Title3 = Instance.new("TextBox")
	Title3.Name = "Title"
	Title3.Size = UDim2.new(0, 0, 1, 0)
	Title3.BackgroundColor3 = Color3.new(1, 1, 1)
	Title3.BackgroundTransparency = 1.0099999904632568
	Title3.BorderSizePixel = 0
	Title3.BorderColor3 = Color3.new(0, 0, 0)
	Title3.AutomaticSize = Enum.AutomaticSize.X
	Title3.LayoutOrder = 1
	Title3.TextTransparency = 0.0099999904632568
	Title3.PlaceholderColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Title3.PlaceholderText = "Input Key..."
	Title3.TextColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Title3.Text = ""
	Title3.TextSize = 15
	Title3.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	Title3.Parent = KeyBox

	local UIListLayout32 = Instance.new("UIListLayout")
	UIListLayout32.Name = "UIListLayout"
	UIListLayout32.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout32.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout32.Parent = Header2

	local UIPadding14 = Instance.new("UIPadding")
	UIPadding14.Name = "UIPadding"
	UIPadding14.PaddingLeft = UDim.new(0, 10)
	UIPadding14.Parent = Header2

	local UIListLayout33 = Instance.new("UIListLayout")
	UIListLayout33.Name = "UIListLayout"
	UIListLayout33.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout33.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout33.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout33.HorizontalFlex = Enum.UIFlexAlignment.Fill
	UIListLayout33.Parent = KeyBar

	local ButtonZones2 = Instance.new("Frame")
	ButtonZones2.Name = "ButtonZones"
	ButtonZones2.Position = UDim2.new(0.811508, 0, 0, 0)
	ButtonZones2.Size = UDim2.new(0.188492, 0, 1, 0)
	ButtonZones2.BackgroundColor3 = Color3.new(1, 1, 1)
	ButtonZones2.BackgroundTransparency = 1
	ButtonZones2.BorderSizePixel = 0
	ButtonZones2.BorderColor3 = Color3.new(0, 0, 0)
	ButtonZones2.Parent = KeyBar

	local GetLink = Instance.new("ImageButton")
	GetLink.Name = "GetLink"
	GetLink.Position = UDim2.new(0.226392, 0, 0.447589, 0)
	GetLink.Size = UDim2.new(0, 35, 0, 35)
	GetLink.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	GetLink.BackgroundTransparency = 0.10000000149011612
	GetLink.BorderSizePixel = 0
	GetLink.BorderColor3 = Color3.new(0, 0, 0)
	GetLink.AnchorPoint = Vector2.new(0.5, 0.5)
	GetLink.AutomaticSize = Enum.AutomaticSize.X
	GetLink.LayoutOrder = 1
	GetLink.Transparency = 0.10000000149011612
	GetLink.Image = "rbxassetid://16255699706"
	GetLink.ImageTransparency = 0.949999988079071
	GetLink.ScaleType = Enum.ScaleType.Crop
	GetLink.Parent = ButtonZones2

	local UICorner17 = Instance.new("UICorner")
	UICorner17.Name = "UICorner"
	UICorner17.CornerRadius = UDim.new(1, 0)
	UICorner17.Parent = GetLink

	local UIListLayout34 = Instance.new("UIListLayout")
	UIListLayout34.Name = "UIListLayout"
	UIListLayout34.Padding = UDim.new(0, 7)
	UIListLayout34.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout34.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout34.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout34.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout34.Parent = GetLink

	local UIPadding15 = Instance.new("UIPadding")
	UIPadding15.Name = "UIPadding"
	UIPadding15.PaddingLeft = UDim.new(0, 7)
	UIPadding15.PaddingRight = UDim.new(0, 7)
	UIPadding15.Parent = GetLink

	local UIStroke12 = Instance.new("UIStroke")
	UIStroke12.Name = "UIStroke"
	UIStroke12.Color = Color3.new(1, 1, 1)
	UIStroke12.Transparency = 0.8399999737739563
	UIStroke12.Parent = GetLink

	local Icon10 = Instance.new("ImageLabel")
	Icon10.Name = "Icon"
	Icon10.Position = UDim2.new(0.5, 0, 0.5, 0)
	Icon10.Size = UDim2.new(0, 22, 0, 22)
	Icon10.BackgroundColor3 = Color3.new(1, 1, 1)
	Icon10.BackgroundTransparency = 1
	Icon10.BorderSizePixel = 0
	Icon10.BorderColor3 = Color3.new(0, 0, 0)
	Icon10.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon10.Image = "rbxassetid://10723426722"
	Icon10.ImageTransparency = 0.30000001192092896
	Icon10.Parent = GetLink

	local UIPadding16 = Instance.new("UIPadding")
	UIPadding16.Name = "UIPadding"
	UIPadding16.PaddingRight = UDim.new(0, 15)
	UIPadding16.Parent = ButtonZones2

	local UIListLayout35 = Instance.new("UIListLayout")
	UIListLayout35.Name = "UIListLayout"
	UIListLayout35.Padding = UDim.new(0, 8)
	UIListLayout35.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout35.HorizontalAlignment = Enum.HorizontalAlignment.Right
	UIListLayout35.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout35.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout35.Parent = ButtonZones2

	local CheckKey = Instance.new("ImageButton")
	CheckKey.Name = "CheckKey"
	CheckKey.Position = UDim2.new(0.343849, 0, 0.5, 0)
	CheckKey.Size = UDim2.new(0, 120, 0, 45)
	CheckKey.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
	CheckKey.BackgroundTransparency = 0.10000000149011612
	CheckKey.BorderSizePixel = 0
	CheckKey.BorderColor3 = Color3.new(0, 0, 0)
	CheckKey.AnchorPoint = Vector2.new(0.5, 0.5)
	CheckKey.AutomaticSize = Enum.AutomaticSize.X
	CheckKey.Transparency = 0.10000000149011612
	CheckKey.Image = "rbxassetid://16255699706"
	CheckKey.ImageTransparency = 0.949999988079071
	CheckKey.ScaleType = Enum.ScaleType.Crop
	CheckKey.Parent = ButtonZones2

	local UICorner18 = Instance.new("UICorner")
	UICorner18.Name = "UICorner"
	UICorner18.CornerRadius = UDim.new(1, 0)
	UICorner18.Parent = CheckKey

	local UIListLayout36 = Instance.new("UIListLayout")
	UIListLayout36.Name = "UIListLayout"
	UIListLayout36.Padding = UDim.new(0, 7)
	UIListLayout36.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout36.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout36.VerticalAlignment = Enum.VerticalAlignment.Center
	UIListLayout36.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout36.Parent = CheckKey

	local UIPadding17 = Instance.new("UIPadding")
	UIPadding17.Name = "UIPadding"
	UIPadding17.PaddingLeft = UDim.new(0, 7)
	UIPadding17.PaddingRight = UDim.new(0, 7)
	UIPadding17.Parent = CheckKey

	local UIStroke13 = Instance.new("UIStroke")
	UIStroke13.Name = "UIStroke"
	UIStroke13.Color = Color3.new(1, 1, 1)
	UIStroke13.Transparency = 0.8399999737739563
	UIStroke13.Parent = CheckKey

	local Title4 = Instance.new("TextLabel")
	Title4.Name = "Title"
	Title4.Position = UDim2.new(0.0377358, 0, 0, 0)
	Title4.Size = UDim2.new(0, 0, 1, 0)
	Title4.BackgroundColor3 = Color3.new(1, 1, 1)
	Title4.BackgroundTransparency = 1.0099999904632568
	Title4.BorderSizePixel = 0
	Title4.BorderColor3 = Color3.new(0, 0, 0)
	Title4.AutomaticSize = Enum.AutomaticSize.X
	Title4.LayoutOrder = -1
	Title4.TextTransparency = 0.0099999904632568
	Title4.Text = "Check Key"
	Title4.TextColor3 = Color3.new(0.862745, 0.862745, 0.862745)
	Title4.TextSize = 15
	Title4.FontFace =
		Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	Title4.Parent = CheckKey

	local Icon11 = Instance.new("ImageLabel")
	Icon11.Name = "Icon"
	Icon11.Position = UDim2.new(0.849057, 0, 0.5, 0)
	Icon11.Size = UDim2.new(0, 22, 0, 22)
	Icon11.BackgroundColor3 = Color3.new(1, 1, 1)
	Icon11.BackgroundTransparency = 1
	Icon11.BorderSizePixel = 0
	Icon11.BorderColor3 = Color3.new(0, 0, 0)
	Icon11.AnchorPoint = Vector2.new(0.5, 0.5)
	Icon11.Image = "rbxassetid://10709790387"
	Icon11.ImageTransparency = 0.30000001192092896
	Icon11.Parent = CheckKey

	local Folder2 = Instance.new("Folder")
	Folder2.Name = "Folder"

	Folder2.Parent = KeyBar

	local Border = Instance.new("Frame")
	Border.Name = "Border"
	Border.Size = UDim2.new(1, 0, 0, 1)
	Border.BackgroundColor3 = Color3.new(1, 1, 1)
	Border.BackgroundTransparency = 0.8999999761581421
	Border.BorderSizePixel = 0
	Border.BorderColor3 = Color3.new(0, 0, 0)
	Border.Transparency = 0.8999999761581421
	Border.Parent = Folder2

	local KeyInput = Key
	local Minimized = false
	local FullScreened = false

	local function Load()
		local Success, Error = pcall(function()
			loadstring(game:HttpGet(Url))()
		end)

		if not Success then
			warn("failed to import / error: ", Error)
			Title3.Text = "FTLS (contact support)"
			return
		end

		if Success then
			shared.StarfallKey = true
		end

		task.wait(1.5)
		Ui:Destroy()
	end

	local function Check()
		local Input = Title3.Text

		if Input == Key then
			Title3.Text = "Valid Key"
			Load()
		elseif Input ~= Key then
			Title3.Text = "Invalid Key"

			task.delay(2, function()
				Title3.Text = ""
			end)
		end
	end

	for _, ButtonInst in pairs(ButtonZones:GetChildren()) do
		if ButtonInst:IsA("ImageButton") then
			ButtonInst.MouseEnter:Connect(function()
				TweenService:Create(
					Button,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ BackgroundColor3 = Color3.fromRGB(70, 70, 70) }
				):Play()

				TweenService:Create(
					Button:FindFirstChild("UIStroke"),
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ Transparency = 0.75 }
				):Play()
			end)

			ButtonInst.MouseLeave:Connect(function()
				TweenService:Create(
					Button,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ BackgroundColor3 = Color3.fromRGB(40, 40, 40) }
				):Play()

				TweenService:Create(
					Button:FindFirstChild("UIStroke"),
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ Transparency = 0.85 }
				):Play()
			end)
		end
	end

	for _, ButtonInst in pairs(ButtonZones2:GetChildren()) do
		if ButtonInst:IsA("ImageButton") then
			ButtonInst.MouseEnter:Connect(function()
				TweenService:Create(
					Button,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ BackgroundColor3 = Color3.fromRGB(70, 70, 70) }
				):Play()

				TweenService:Create(
					Button:FindFirstChild("UIStroke"),
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ Transparency = 0.75 }
				):Play()
			end)

			ButtonInst.MouseLeave:Connect(function()
				TweenService:Create(
					Button,
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ BackgroundColor3 = Color3.fromRGB(40, 40, 40) }
				):Play()

				TweenService:Create(
					Button:FindFirstChild("UIStroke"),
					TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{ Transparency = 0.85 }
				):Play()
			end)
		end
	end

	Join_Button.MouseButton1Click:Connect(function()
		setclipboard("https://discord.gg/fuSftZfu")
	end)

	Join_Button2.MouseButton1Click:Connect(function()
		setclipboard("https://workink.net/23sx/gso5fmzb")
	end)

	Join_Button3.MouseButton1Click:Connect(function()
		setclipboard("https://link-target.net/1388250/VAkIDYseg8Pt")
	end)

	Join_Button4.MouseButton1Click:Connect(function()
		setclipboard("https://loot-link.com/s?52XhNJuP")
	end)

	CheckKey.MouseButton1Click:Connect(function()
		Check()
	end)

	Close.MouseButton1Click:Connect(function()
		Ui:Destroy()
	end)

	Minimize.MouseButton1Click:Connect(function()
		TweenService:Create(
			KeySystem,
			TweenInfo.new(0.6, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
			{ Size = UDim2.new(0, 504, 0, 0) }
		):Play()
	end)

	FullScreen.MouseButton1Click:Connect(function()
		FullScreened = not FullScreened
		if FullScreened then
			TweenService:Create(
				KeySystem,
				TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
				{ Size = UDim2.new(1, 0, 1, 0) }
			):Play()
		else
			TweenService:Create(
				KeySystem,
				TweenInfo.new(0.6, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
				{ Size = UDim2.new(0, 504, 0, 372) }
			):Play()
		end
	end)

	GetLink.MouseButton1Click:Connect(function()
		Title3.Text = "Copied Discord Link"
		setclipboard("https://discord.gg/fuSftZfu")
	end)
end
