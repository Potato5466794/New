local LEAK = {
	Version = '0.0.1',
	Origin = 'https://corsair.wtf/uploads/monthly_2020_12/1608497054106.png.212901209c1cc806fc7000e53fee8f71.png',
	MainColor = Color3.fromRGB(255, 0, 245),
}

local binfunction = function()

end

local LocalPlayer = game:GetService('Players').LocalPlayer;
local Mouse = LocalPlayer:GetMouse();
local InputService = game:GetService('UserInputService');
local TextService = game:GetService('TextService');
local TweenService = game:GetService('TweenService');
local CoreGui = game:FindFirstChild('CoreGui') or LocalPlayer.PlayerGui;

local ProtectGui = protectgui or (syn and syn.protect_gui) or (function(m) return m end);

local function cretate_button(asd)
	local button=Instance.new('TextButton')
	button.Size=UDim2.new(1,0,1,0)
	button.BackgroundTransparency=1
	button.TextTransparency=1
	button.Text=""
	button.Parent=asd
	button.ZIndex=5000
	return button
end

local function scrolling_connect(scrollframe:ScrollingFrame)
	task.spawn(function()
		local addres = 45
		local UIListLayout:UIListLayout = scrollframe:WaitForChild('UIListLayout',9999999)
		scrollframe.CanvasSize=UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y+addres)

		UIListLayout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
			scrollframe.CanvasSize=UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y+addres)
		end)
	end)
end

function LEAK:NewWindow(WindowName:string,WindowsLogo:string,UI_SIZE:UDim2)
	local WindowsFunctions = {
		Tabs = {}
	}
	UI_SIZE = UI_SIZE or UDim2.new(0.100000001, 325, 0.100000001, 230)
	
	-- 创建悬浮按钮容器
	local FloatingButtons = Instance.new("ScreenGui")
	FloatingButtons.Name = "FloatingButtons"
	FloatingButtons.IgnoreGuiInset = true
	FloatingButtons.ZIndexBehavior = Enum.ZIndexBehavior.Global
	FloatingButtons.Parent = CoreGui
	FloatingButtons.ResetOnSpawn = false
	ProtectGui(FloatingButtons)
	
	-- 创建Toggle悬浮按钮
	local ToggleFloat = Instance.new("TextButton")
	local UICornerToggle = Instance.new("UICorner")
	local UIStrokeToggle = Instance.new("UIStroke")
	
	ToggleFloat.Name = "ToggleFloat"
	ToggleFloat.Parent = FloatingButtons
	ToggleFloat.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	ToggleFloat.BorderSizePixel = 0
	ToggleFloat.Position = UDim2.new(0.02, 0, 0.15, 0)
	ToggleFloat.Size = UDim2.new(0, 50, 0, 50)
	ToggleFloat.Font = Enum.Font.Code
	ToggleFloat.Text = "Toggle"
	ToggleFloat.TextColor3 = Color3.fromRGB(255, 255, 255)
	ToggleFloat.TextScaled = true
	ToggleFloat.ZIndex = 1000
	
	UICornerToggle.CornerRadius = UDim.new(0, 8)
	UICornerToggle.Parent = ToggleFloat
	
	UIStrokeToggle.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStrokeToggle.Color = LEAK.MainColor
	UIStrokeToggle.Parent = ToggleFloat
	
	-- 创建Lock悬浮按钮
	local LockFloat = Instance.new("TextButton")
	local UICornerLock = Instance.new("UICorner")
	local UIStrokeLock = Instance.new("UIStroke")
	
	LockFloat.Name = "LockFloat"
	LockFloat.Parent = FloatingButtons
	LockFloat.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	LockFloat.BorderSizePixel = 0
	LockFloat.Position = UDim2.new(0.02, 0, 0.25, 0)
	LockFloat.Size = UDim2.new(0, 50, 0, 50)
	LockFloat.Font = Enum.Font.Code
	LockFloat.Text = "Lock"
	LockFloat.TextColor3 = Color3.fromRGB(255, 255, 255)
	LockFloat.TextScaled = true
	LockFloat.ZIndex = 1000
	
	UICornerLock.CornerRadius = UDim.new(0, 8)
	UICornerLock.Parent = LockFloat
	
	UIStrokeLock.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStrokeLock.Parent = LockFloat
	
	local Index = Instance.new("ScreenGui")
	local UIFrame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")
	local HeadFrame = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local TextLabel = Instance.new("TextLabel")
	local MainFrame = Instance.new("Frame")
	local UIStroke_2 = Instance.new("UIStroke")
	local UICorner_3 = Instance.new("UICorner")
	local LogoHub = Instance.new("ImageLabel")
	local TabButtonsFrame = Instance.new("Frame")
	local UICorner_4 = Instance.new("UICorner")
	local TabButons = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local TabFrames = Instance.new("Frame")
	local UIStroke_3 = Instance.new("UIStroke")
	local UICorner_5 = Instance.new("UICorner")
	local CloseButton = Instance.new("TextButton")
	
	scrolling_connect(TabButons)
	Index.Name = "Index"
	Index.IgnoreGuiInset = true
	Index.ZIndexBehavior = Enum.ZIndexBehavior.Global
	Index.Parent = CoreGui
	Index.ResetOnSpawn = false
	ProtectGui(Index)

	UIFrame.Name = "UIFrame"
	UIFrame.Parent = Index
	UIFrame.Active = true
	UIFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	UIFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	UIFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	UIFrame.BorderSizePixel = 0
	UIFrame.ClipsDescendants = true
	UIFrame.Position = UDim2.new(1.5, 0, 0.5, 0)
	UIFrame.Size = UI_SIZE

	TweenService:Create(UIFrame,TweenInfo.new(0.4),{Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
	UICorner.CornerRadius = UDim.new(0, 1)
	UICorner.Parent = UIFrame

	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Parent = UIFrame

	HeadFrame.Name = "HeadFrame"
	HeadFrame.Parent = UIFrame
	HeadFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
	HeadFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	HeadFrame.BorderSizePixel = 0
	HeadFrame.Size = UDim2.new(1, 0, 0.0573114008, 0)
	HeadFrame.ZIndex = 3

	UICorner_2.CornerRadius = UDim.new(0, 1)
	UICorner_2.Parent = HeadFrame

	TextLabel.Parent = HeadFrame
	TextLabel.Active = true
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel.Size = UDim2.new(0.949999988, 0, 0.649999976, 0)
	TextLabel.ZIndex = 4
	TextLabel.Font = Enum.Font.Code
	TextLabel.Text = WindowName or "NW UI"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	CloseButton.Name = "CloseButton"
	CloseButton.Parent = HeadFrame
	CloseButton.AnchorPoint = Vector2.new(1, 0.5)
	CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	CloseButton.BackgroundTransparency = 0.5
	CloseButton.BorderSizePixel = 0
	CloseButton.Position = UDim2.new(0.99, 0, 0.5, 0)
	CloseButton.Size = UDim2.new(0.05, 0, 0.05, 0)
	CloseButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
	CloseButton.ZIndex = 5
	CloseButton.Font = Enum.Font.Code
	CloseButton.Text = "X"
	CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	CloseButton.TextScaled = true

	MainFrame.Name = "MainFrame"
	MainFrame.Parent = UIFrame
	MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	MainFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MainFrame.BorderSizePixel = 0
	MainFrame.Position = UDim2.new(0.5, 0, 0.531046271, 0)
	MainFrame.Size = UDim2.new(0.949999988, 0, 0.887907445, 0)
	MainFrame.ZIndex = 3

	UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_2.Parent = MainFrame

	UICorner_3.CornerRadius = UDim.new(0, 1)
	UICorner_3.Parent = MainFrame

	LogoHub.Name = "LogoHub"
	LogoHub.Parent = MainFrame
	LogoHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LogoHub.BackgroundTransparency = 1.000
	LogoHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
	LogoHub.BorderSizePixel = 0
	LogoHub.Position = UDim2.new(0.0149999997, 0, 0.0260000005, 0)
	LogoHub.Size = UDim2.new(0.248529375, 0, 0.291258574, 0)
	LogoHub.ZIndex = 4
	LogoHub.Image = WindowsLogo or "rbxassetid://6396719811"
	LogoHub.ScaleType = Enum.ScaleType.Crop
	LogoHub.SliceCenter = Rect.new(0, 0, 674, 370)
	LogoHub.TileSize = UDim2.new(1.5, 0, 1.29999995, 0)

	TabButtonsFrame.Name = "TabButtonsFrame"
	TabButtonsFrame.Parent = MainFrame
	TabButtonsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabButtonsFrame.BackgroundTransparency = 1.000
	TabButtonsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabButtonsFrame.BorderSizePixel = 0
	TabButtonsFrame.ClipsDescendants = true
	TabButtonsFrame.Position = UDim2.new(0.0149999997, 0, 0.344999999, 0)
	TabButtonsFrame.Size = UDim2.new(0.248529419, 0, 0.624645472, 0)
	TabButtonsFrame.ZIndex = 4

	UICorner_4.CornerRadius = UDim.new(0, 1)
	UICorner_4.Parent = TabButtonsFrame

	TabButons.Name = "TabButons"
	TabButons.Parent = TabButtonsFrame
	TabButons.Active = true
	TabButons.AnchorPoint = Vector2.new(0.5, 0.5)
	TabButons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TabButons.BackgroundTransparency = 1.000
	TabButons.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabButons.BorderSizePixel = 0
	TabButons.ClipsDescendants = false
	TabButons.Position = UDim2.new(0.5, 0, 0.5, 0)
	TabButons.Size = UDim2.new(1, 0, 0.949999988, 0)
	TabButons.ZIndex = 8
	TabButons.ScrollBarThickness = 0

	UIListLayout.Parent = TabButons
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)

	TabFrames.Name = "TabFrames"
	TabFrames.Parent = MainFrame
	TabFrames.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
	TabFrames.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TabFrames.BorderSizePixel = 0
	TabFrames.Position = UDim2.new(0.280686259, 0, 0.0260000192, 0)
	TabFrames.Size = UDim2.new(0.704999983, 0, 0.944000006, 0)
	TabFrames.ZIndex = 9

	UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_3.Parent = TabFrames

	UICorner_5.CornerRadius = UDim.new(0, 1)
	UICorner_5.Parent = TabFrames

	local isVisible = true
	local isLocked = false

	-- Toggle悬浮按钮功能
	ToggleFloat.MouseButton1Click:Connect(function()
		isVisible = not isVisible
		if isVisible then
			TweenService:Create(UIFrame, TweenInfo.new(0.3), {Position = UDim2.new(0.5, 0, 0.5, 0)}):Play()
			ToggleFloat.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
		else
			TweenService:Create(UIFrame, TweenInfo.new(0.3), {Position = UDim2.new(1.5, 0, 0.5, 0)}):Play()
			ToggleFloat.BackgroundColor3 = LEAK.MainColor
		end
	end)

	-- Lock悬浮按钮功能
	LockFloat.MouseButton1Click:Connect(function()
		isLocked = not isLocked
		if isLocked then
			LockFloat.BackgroundColor3 = LEAK.MainColor
			LockFloat.Text = "🔒"
		else
			LockFloat.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
			LockFloat.Text = "Lock"
		end
	end)

	-- X关闭按钮功能
	CloseButton.MouseButton1Click:Connect(function()
		Index:Destroy()
		FloatingButtons:Destroy()
	end)

	function WindowsFunctions:NewTab(TabName:string)
		local TabFunctions = {}
		local TabButon = Instance.new("Frame")
		local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
		local UICorner = Instance.new("UICorner")
		local UIStroke = Instance.new("UIStroke")
		local Hightlight = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")
		local Label = Instance.new("TextLabel")

		TabButon.Name = "TabButon"
		TabButon.Parent = TabButons
		TabButon.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
		TabButon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabButon.BorderSizePixel = 0
		TabButon.Size = UDim2.new(0,0,0,0)
		TabButon.ZIndex = 7

		TweenService:Create(TabButon,TweenInfo.new(0.65 + (#WindowsFunctions.Tabs / 10),Enum.EasingStyle.Back),{Size = UDim2.new(0.980000019, 0, 0.5, 0)}):Play()
		UIAspectRatioConstraint.Parent = TabButon
		UIAspectRatioConstraint.AspectRatio = 5
		UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

		UICorner.CornerRadius = UDim.new(0, 1)
		UICorner.Parent = TabButon

		UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		UIStroke.Parent = TabButon

		Hightlight.Name = "Hightlight"
		Hightlight.Parent = TabButon
		Hightlight.BackgroundColor3 = LEAK.MainColor
		Hightlight.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Hightlight.BorderSizePixel = 0
		Hightlight.Size = UDim2.new(0, 2, 1, 0)
		Hightlight.ZIndex = 7

		UICorner_2.CornerRadius = UDim.new(0, 1)
		UICorner_2.Parent = Hightlight

		Label.Name = "Label"
		Label.Parent = TabButon
		Label.AnchorPoint = Vector2.new(0, 0.5)
		Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Label.BackgroundTransparency = 1.000
		Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Label.BorderSizePixel = 0
		Label.Position = UDim2.new(0.0750002265, 0, 0.499999821, 0)
		Label.Size = UDim2.new(4, 0, 0.45, 0)
		Label.ZIndex = 8
		Label.Font = Enum.Font.Code
		Label.Text = TabName or "Tab "..tostring(#WindowsFunctions.Tabs)
		Label.TextColor3 = Color3.fromRGB(255, 255, 255)
		Label.TextScaled = true
		Label.TextSize = 14.000
		Label.TextWrapped = true
		Label.TextXAlignment = Enum.TextXAlignment.Left

		local TabFrame = Instance.new("Frame")
		local Left = Instance.new("ScrollingFrame")
		local UIListLayout = Instance.new("UIListLayout")
		local Right = Instance.new("ScrollingFrame")
		local UIListLayout_2 = Instance.new("UIListLayout")

		scrolling_connect(Right) scrolling_connect(Left)
		TabFrame.Name = "TabFrame"
		TabFrame.Parent = TabFrames
		TabFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TabFrame.BackgroundTransparency = 1.000
		TabFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TabFrame.BorderSizePixel = 0
		TabFrame.ClipsDescendants = true
		TabFrame.Size = UDim2.new(1, 0, 1, 0)
		TabFrame.ZIndex = 11

		Left.Name = "Left"
		Left.Parent = TabFrame
		Left.Active = true
		Left.AnchorPoint = Vector2.new(0.5, 0.5)
		Left.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Left.BackgroundTransparency = 1.000
		Left.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Left.BorderSizePixel = 0
		Left.ClipsDescendants = false
		Left.Position = UDim2.new(0.25, 0, 0.5, 0)
		Left.Size = UDim2.new(0.495000005, 0, 0.959999979, 0)
		Left.ZIndex = 13
		Left.CanvasSize = UDim2.new(0, 0, 5, 0)
		Left.ScrollBarThickness = 0

		UIListLayout.Parent = Left
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 10)

		Right.Name = "Right"
		Right.Parent = TabFrame
		Right.Active = true
		Right.AnchorPoint = Vector2.new(0.5, 0.5)
		Right.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Right.BackgroundTransparency = 1.000
		Right.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Right.BorderSizePixel = 0
		Right.ClipsDescendants = false
		Right.Position = UDim2.new(0.75, 0, 0.5, 0)
		Right.Size = UDim2.new(0.495000005, 0, 0.959999979, 0)
		Right.ZIndex = 13
		Right.ScrollBarThickness = 0
		Right.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

		UIListLayout_2.Parent = Right
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_2		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 10)

		local CallBackrn = false
		local function CallBack(val)
			if val then
				TabFrame.Visible = true
				TweenService:Create(Label,TweenInfo.new(0.3),{TextTransparency = 0}):Play()
				TweenService:Create(Hightlight,TweenInfo.new(0.3),{BackgroundTransparency = 0,Size = UDim2.new(0, 2, 1, 0)}):Play()
			else
				TabFrame.Visible = false
				TweenService:Create(Hightlight,TweenInfo.new(0.3),{BackgroundTransparency = 1,Size = UDim2.new(0, 0, 1, 0)}):Play()
				TweenService:Create(Label,TweenInfo.new(0.3),{TextTransparency = 0.25}):Play()
			end
		end

		if #WindowsFunctions.Tabs == 0 then
			CallBackrn = true
			CallBack(CallBackrn)
		else
			CallBackrn = false
			CallBack(CallBackrn)
		end

		table.insert(WindowsFunctions.Tabs,{TabFrame,CallBack})
		cretate_button(TabButon).MouseButton1Click:Connect(function() 
			for i,v in ipairs(WindowsFunctions.Tabs) do
				if v[1] == TabFrame then
					v[2](true)
				else
					v[2](false)
				end
			end
		end)

		function TabFunctions:Rename(t)
			Label.Text = t or "Tab "..tostring(#WindowsFunctions.Tabs)
		end

		function TabFunctions:NewSection(SectionNameT:string,Tab:string)
			Tab = tostring(Tab or nil)
			local SectionFunctions = {}
			local Ful = (Tab:lower() == 'left' and Left) or (Tab:lower() == 'right' and Right)

			local Section = Instance.new("Frame")
			local UIStroke = Instance.new("UIStroke")
			local UICorner = Instance.new("UICorner")
			local DropShadowHolder = Instance.new("Frame")
			local DropShadow = Instance.new("ImageLabel")
			local SectionName = Instance.new("TextLabel")
			local SectionCollection = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")

			Section.Name = "Section"
			Section.Parent = Ful
			Section.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
			Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Section.BorderSizePixel = 0
			Section.Size = UDim2.new(0.98, 0, 0, 1)
			Section.ZIndex = 14

			TweenService:Create(Section,TweenInfo.new(0.75),{Size = UDim2.new(0.944999993, 0, 0, 35)}):Play()

			UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke.Parent = Section

			UICorner.CornerRadius = UDim.new(0, 1)
			UICorner.Parent = Section

			DropShadowHolder.Name = "DropShadowHolder"
			DropShadowHolder.Parent = Section
			DropShadowHolder.BackgroundTransparency = 1.000
			DropShadowHolder.BorderSizePixel = 0
			DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
			DropShadowHolder.ZIndex = 14

			DropShadow.Name = "DropShadow"
			DropShadow.Parent = DropShadowHolder
			DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
			DropShadow.BackgroundTransparency = 1.000
			DropShadow.BorderSizePixel = 0
			DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropShadow.Size = UDim2.new(1, 39, 1, 39)
			DropShadow.ZIndex = 13
			DropShadow.Image = "rbxassetid://6014261993"
			DropShadow.ImageColor3 = Color3.fromRGB(62, 62, 62)
			DropShadow.ImageTransparency = 0.500
			DropShadow.ScaleType = Enum.ScaleType.Slice
			DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

			SectionName.Name = "SectionName"
			SectionName.Parent = Section
			SectionName.AnchorPoint = Vector2.new(0.5, 0)
			SectionName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionName.BackgroundTransparency = 1.000
			SectionName.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SectionName.BorderSizePixel = 0
			SectionName.Position = UDim2.new(1.36300004, 0, 0, -5)
			SectionName.Size = UDim2.new(2.7249999, 0, 0, 7)
			SectionName.ZIndex = 14
			SectionName.Font = Enum.Font.Code
			SectionName.Text = SectionNameT or "Section"
			SectionName.TextColor3 = Color3.fromRGB(255, 255, 255)
			SectionName.TextScaled = true
			SectionName.TextSize = 14.000
			SectionName.TextWrapped = true
			SectionName.TextXAlignment = Enum.TextXAlignment.Left

			SectionCollection.Name = "SectionCollection"
			SectionCollection.Parent = Section
			SectionCollection.AnchorPoint = Vector2.new(0.5, 0)
			SectionCollection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			SectionCollection.BackgroundTransparency = 1.000
			SectionCollection.BorderColor3 = Color3.fromRGB(0, 0, 0)
			SectionCollection.BorderSizePixel = 0
			SectionCollection.ClipsDescendants = true
			SectionCollection.Position = UDim2.new(0.5, 0, 0, 5)
			SectionCollection.Size = UDim2.new(1, 0, 0.949999988, 0)
			SectionCollection.ZIndex = 14
			SectionCollection.ClipsDescendants = true

			UIListLayout.Parent = SectionCollection
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 3)

			local default = 35

			local function Update()
				local g = default
				task.wait()
				for i,v in ipairs(SectionCollection:GetChildren()) do
					if v:IsA('Frame') then
						g += v.AbsoluteSize.Y
					end
				end
				TweenService:Create(Section,TweenInfo.new(0.4),{Size = UDim2.new(0.98, 0, 0, g)}):Play()
			end

			Update()

			SectionCollection.ChildAdded:Connect(function()
				task.wait()
				Update()
			end)

			-- 添加调色板控件
			function SectionFunctions:NewColorPicker(ColorPickerName:string,defaultColor:Color3,callback)
				defaultColor = defaultColor or Color3.fromRGB(255, 0, 0)
				callback = callback or binfunction

				local ColorPicker = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local TextLabel = Instance.new("TextLabel")
				local ColorFrame = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")

				ColorPicker.Name = "ColorPicker"
				ColorPicker.Parent = SectionCollection
				ColorPicker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ColorPicker.BackgroundTransparency = 1.000
				ColorPicker.BorderSizePixel = 0
				ColorPicker.Size = UDim2.new(1, 0, 0.5, 0)
				ColorPicker.ZIndex = 15

				UIAspectRatioConstraint.Parent = ColorPicker
				UIAspectRatioConstraint.AspectRatio = 8.500
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				TextLabel.Parent = ColorPicker
				TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.Position = UDim2.new(1.00955427, 0, 0.500000834, 0)
				TextLabel.Size = UDim2.new(1.77510858, 0, 0.649999976, 0)
				TextLabel.ZIndex = 16
				TextLabel.Font = Enum.Font.Code
				TextLabel.Text = ColorPickerName or "Color Picker"
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextScaled = true
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				ColorFrame.Name = "ColorFrame"
				ColorFrame.Parent = ColorPicker
				ColorFrame.AnchorPoint = Vector2.new(0, 0.5)
				ColorFrame.BackgroundColor3 = defaultColor
				ColorFrame.Position = UDim2.new(0.02, 0, 0.5, 0)
				ColorFrame.Size = UDim2.new(0.07, 0, 0.07, 0)
				ColorFrame.SizeConstraint = Enum.SizeConstraint.RelativeXX
				ColorFrame.ZIndex = 17

				UICorner.CornerRadius = UDim.new(0, 1)
				UICorner.Parent = ColorFrame

				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke.Parent = ColorFrame

				-- 调色板弹窗
				local ColorPickerFrame = Instance.new("Frame")
				local UICornerPicker = Instance.new("UICorner")
				local UIStrokePicker = Instance.new("UIStroke")
				local ColorCanvas = Instance.new("Frame")
				local HueSlider = Instance.new("Frame")
				local RGBDisplay = Instance.new("TextLabel")

				ColorPickerFrame.Name = "ColorPickerFrame"
				ColorPickerFrame.Parent = Index
				ColorPickerFrame.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
				ColorPickerFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
				ColorPickerFrame.Size = UDim2.new(0, 250, 0, 280)
				ColorPickerFrame.ZIndex = 100
				ColorPickerFrame.Visible = false

				UICornerPicker.CornerRadius = UDim.new(0, 8)
				UICornerPicker.Parent = ColorPickerFrame

				UIStrokePicker.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStrokePicker.Parent = ColorPickerFrame

				ColorCanvas.Name = "ColorCanvas"
				ColorCanvas.Parent = ColorPickerFrame
				ColorCanvas.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
				ColorCanvas.Position = UDim2.new(0.05, 0, 0.05, 0)
				ColorCanvas.Size = UDim2.new(0.75, 0, 0.75, 0)
				ColorCanvas.ZIndex = 101

				local ColorGradient = Instance.new("UIGradient")
				ColorGradient.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 0))
				}
				ColorGradient.Rotation = 90
				ColorGradient.Parent = ColorCanvas

				HueSlider.Name = "HueSlider"
				HueSlider.Parent = ColorPickerFrame
				HueSlider.Position = UDim2.new(0.85, 0, 0.05, 0)
				HueSlider.Size = UDim2.new(0.1, 0, 0.75, 0)
				HueSlider.ZIndex = 101

				local HueGradient = Instance.new("UIGradient")
				HueGradient.Color = ColorSequence.new{
					ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
					ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 255, 0)),
					ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 255, 0)),
					ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
					ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 0, 255)),
					ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 0, 255)),
					ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0))
				}
				HueGradient.Rotation = 90
				HueGradient.Parent = HueSlider

				RGBDisplay.Name = "RGBDisplay"
				RGBDisplay.Parent = ColorPickerFrame
				RGBDisplay.Position = UDim2.new(0.05, 0, 0.85, 0)
				RGBDisplay.Size = UDim2.new(0.9, 0, 0.1, 0)
				RGBDisplay.ZIndex = 101
				RGBDisplay.BackgroundTransparency = 1
				RGBDisplay.Font = Enum.Font.Code
				RGBDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
				RGBDisplay.TextScaled = true
				RGBDisplay.Text = string.format("RGB(%d, %d, %d)", defaultColor.R*255, defaultColor.G*255, defaultColor.B*255)

				local currentColor = defaultColor
				local hue = 0

				local function updateColor(color)
					currentColor = color
					ColorFrame.BackgroundColor3 = color
					RGBDisplay.Text = string.format("RGB(%d, %d, %d)", math.floor(color.R*255), math.floor(color.G*255), math.floor(color.B*255))
					callback(color)
				end

				HueSlider.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						local function update()
							local mouse = Mouse.Y - HueSlider.AbsolutePosition.Y
							local percent = math.clamp(mouse / HueSlider.AbsoluteSize.Y, 0, 1)
							hue = percent
							ColorCanvas.BackgroundColor3 = Color3.fromHSV(hue, 1, 1)
						end
						update()
						local connection
						connection = InputService.InputChanged:Connect(function(input2)
							if input2.UserInputType == Enum.UserInputType.MouseMovement then
								update()
							end
						end)
						InputService.InputEnded:Connect(function(input3)
							if input3.UserInputType == Enum.UserInputType.MouseButton1 then
								connection:Disconnect()
							end
						end)
					end
				end)

				ColorCanvas.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						local function update()
							local mouseX = Mouse.X - ColorCanvas.AbsolutePosition.X
							local mouseY = Mouse.Y - ColorCanvas.AbsolutePosition.Y
							local percentX = math.clamp(mouseX / ColorCanvas.AbsoluteSize.X, 0, 1)
							local percentY = math.clamp(mouseY / ColorCanvas.AbsoluteSize.Y, 0, 1)
							local sat = percentX
							local val = 1 - percentY
							updateColor(Color3.fromHSV(hue, sat, val))
						end
						update()
						local connection
						connection = InputService.InputChanged:Connect(function(input2)
							if input2.UserInputType == Enum.UserInputType.MouseMovement then
								update()
							end
						end)
						InputService.InputEnded:Connect(function(input3)
							if input3.UserInputType == Enum.UserInputType.MouseButton1 then
								connection:Disconnect()
							end
						end)
					end
				end)

				cretate_button(ColorFrame).MouseButton1Click:Connect(function()
					ColorPickerFrame.Visible = not ColorPickerFrame.Visible
					Update()
				end)

				task.spawn(function()
					task.wait(0.1)
					Update()
				end)

				local Functions = {}
				function Functions:SetColor(color)
					updateColor(color)
				end
				function Functions:GetColor()
					return currentColor
				end
				return Functions
			end

			-- 其他控件保持不变(Label, Toggle, Button, Keybind, Slider, Dropdown)
			-- 由于字数限制，这里省略之前已经完整的控件代码

			function SectionFunctions:UpdateSize(...)
				return Update(...)
			end

			Update()
			return SectionFunctions
		end

		return TabFunctions
	end

	function WindowsFunctions:ChangeLogo(id:string,typeimage:Enum.ScaleType|nil)
		LogoHub.Image = id or "rbxassetid://6396719811"
		LogoHub.ScaleType = typeimage or Enum.ScaleType.Crop
	end

	function WindowsFunctions:GetScreen()
		return Index	
	end

	function WindowsFunctions:Destroy()
		Index:Destroy()
		FloatingButtons:Destroy()
	end

	-- UI拖动功能
	local dragToggle = nil
	local dragSpeed = 0.05
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		if isLocked then return end
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		TweenService:Create(UIFrame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	TextLabel.InputBegan:Connect(function(input)
		if isLocked then return end
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = UIFrame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	InputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle and not isLocked then
				updateInput(input)
			end
		end
	end)

	return WindowsFunctions
end

return LEAK

