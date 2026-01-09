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
	local ToggleButton = Instance.new("TextButton")
	local LockButton = Instance.new("TextButton")
	
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

	ToggleButton.Name = "ToggleButton"
	ToggleButton.Parent = HeadFrame
	ToggleButton.AnchorPoint = Vector2.new(1, 0.5)
	ToggleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToggleButton.BackgroundTransparency = 1.000
	ToggleButton.BorderSizePixel = 0
	ToggleButton.Position = UDim2.new(0.97, 0, 0.5, 0)
	ToggleButton.Size = UDim2.new(0.05, 0, 0.05, 0)
	ToggleButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
	ToggleButton.ZIndex = 5
	ToggleButton.Font = Enum.Font.Code
	ToggleButton.Text = "—"
	ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	ToggleButton.TextScaled = true

	LockButton.Name = "LockButton"
	LockButton.Parent = HeadFrame
	LockButton.AnchorPoint = Vector2.new(1, 0.5)
	LockButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	LockButton.BackgroundTransparency = 1.000
	LockButton.BorderSizePixel = 0
	LockButton.Position = UDim2.new(0.91, 0, 0.5, 0)
	LockButton.Size = UDim2.new(0.05, 0, 0.05, 0)
	LockButton.SizeConstraint = Enum.SizeConstraint.RelativeXX
	LockButton.ZIndex = 5
	LockButton.Font = Enum.Font.Code
	LockButton.Text = "Lock"
	LockButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	LockButton.TextScaled = true

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

	ToggleButton.MouseButton1Click:Connect(function()
		isVisible = not isVisible
		if isVisible then
			TweenService:Create(MainFrame, TweenInfo.new(0.3), {Size = UDim2.new(0.949999988, 0, 0.887907445, 0)}):Play()
			ToggleButton.Text = "ON"
		else
			TweenService:Create(MainFrame, TweenInfo.new(0.3), {Size = UDim2.new(0.949999988, 0, 0, 0)}):Play()
			ToggleButton.Text = "OFF"
		end
	end)

	LockButton.MouseButton1Click:Connect(function()
		isLocked = not isLocked
		if isLocked then
			LockButton.Text = "Lock"
			LockButton.TextColor3 = LEAK.MainColor
		else
			LockButton.Text = "Lock"
			LockButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		end
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
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
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

			function SectionFunctions:NewLabel(LabenName)
				local Functions = {}


				local Label = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local TextLabel = Instance.new("TextLabel")

				Label.Name = "Label"
				Label.Parent = SectionCollection
				Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency = 1.000
				Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Label.BorderSizePixel = 0
				Label.Size = UDim2.new(1, 0, 0.5, 0)
				Label.ZIndex = 15

				UIAspectRatioConstraint.Parent = Label
				UIAspectRatioConstraint.AspectRatio = 8.500
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				TextLabel.Parent = Label
				TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(1.00955427, 0, 0.500000834, 0)
				TextLabel.Size = UDim2.new(1.77510858, 0, 0.649999976, 0)
				TextLabel.ZIndex = 16
				TextLabel.Font = Enum.Font.Code
				TextLabel.Text = LabenName or "TextLabel"
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextScaled = true
				TextLabel.TextSize = 14.000
				TextLabel.TextWrapped = true
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				function Functions:Text(tr)
					TextLabel.Text = tostring(tr)
				end

				function Functions:Destroy()
					Label:Destroy()
					Update()
				end

				task.spawn(function()
					task.wait(0.1)
					Update()
				end)

				return Functions
			end

			function SectionFunctions:NewToggle(ToggleName:string,default:boolean,callback)
				callback = callback or binfunction

				local Toggle = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local TextLabel = Instance.new("TextLabel")
				local System = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local SystemUI = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")

				Toggle.Name = "Toggle"
				Toggle.Parent = SectionCollection
				Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Toggle.BackgroundTransparency = 1.000
				Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Toggle.BorderSizePixel = 0
				Toggle.Size = UDim2.new(1, 0, 0.5, 0)
				Toggle.ZIndex = 15

				UIAspectRatioConstraint.Parent = Toggle
				UIAspectRatioConstraint.AspectRatio = 8.500
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				TextLabel.Parent = Toggle
				TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(1.00955427, 0, 0.500000834, 0)
				TextLabel.Size = UDim2.new(1.77510858, 0, 0.649999976, 0)
				TextLabel.ZIndex = 16
				TextLabel.Font = Enum.Font.Code
				TextLabel.Text = ToggleName or "TextLabel"
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextScaled = true
				TextLabel.TextSize = 14.000
				TextLabel.TextWrapped = true
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				System.Name = "System"
				System.Parent = Toggle
				System.AnchorPoint = Vector2.new(0, 0.5)
				System.BackgroundColor3 = LEAK.MainColor
				System.BackgroundTransparency = 1.000
				System.BorderColor3 = Color3.fromRGB(0, 0, 0)
				System.BorderSizePixel = 0
				System.Position = UDim2.new(0.0199999996, 0, 0.5, 0)
				System.Size = UDim2.new(0.0700000003, 0, 0.0700000003, 0)
				System.SizeConstraint = Enum.SizeConstraint.RelativeXX
				System.ZIndex = 17

				UICorner.CornerRadius = UDim.new(0, 1)
				UICorner.Parent = System

				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke.Parent = System

				SystemUI.Name = "SystemUI"
				SystemUI.Parent = System
				SystemUI.AnchorPoint = Vector2.new(0.5, 0.5)
				SystemUI.BackgroundColor3 = LEAK.MainColor
				SystemUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SystemUI.BorderSizePixel = 0
				SystemUI.Position = UDim2.new(0.5, 0, 0.5, 0)
				SystemUI.ZIndex = 16

				UICorner_2.CornerRadius = UDim.new(0, 1)
				UICorner_2.Parent = SystemUI
				local ImageLabel = Instance.new('ImageLabel',SystemUI)
				ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageLabel.BackgroundTransparency = 1.000
				ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ImageLabel.BorderSizePixel = 0
				ImageLabel.Size = UDim2.new(1, 0, 1, 0)
				ImageLabel.ZIndex = 18
				ImageLabel.Image = "rbxassetid://4576475446"

				local function ToggleUIV(val)
					if val then
						TweenService:Create(SystemUI,TweenInfo.new(0.1),{Size = UDim2.new(1,0,1,0)}):Play()
						TweenService:Create(TextLabel,TweenInfo.new(0.4),{TextTransparency = 0}):Play()
					else
						TweenService:Create(SystemUI,TweenInfo.new(0.1),{Size = UDim2.new(0,0,0,0)}):Play()
						TweenService:Create(TextLabel,TweenInfo.new(0.4),{TextTransparency = 0.25}):Play()
					end
				end

				ToggleUIV(default)

				cretate_button(Toggle).MouseButton1Click:Connect(function()
					default = not default
					Update()
					ToggleUIV(default)
					callback(default)

				end)

				task.spawn(function()
					task.wait(0.1)
					Update()
				end)

				local ToggleFunxtion = {}

				function ToggleFunxtion:Value(d,...)
					default = d
					ToggleUIV(default)
					callback(...)
				end

				function ToggleFunxtion:Text(d)
					TextLabel.Text = tostring(d)
				end

				function ToggleFunxtion:GetValue(d)
					return default
				end

				return ToggleFunxtion
			end

			function SectionFunctions:NewButton(ButtonBame,calback)
				calback = calback or binfunction

				local Button = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local TextLabel = Instance.new("TextLabel")
				local UIGradient = Instance.new("UIGradient")
				local UIStroke = Instance.new("UIStroke")
				local UICorner = Instance.new("UICorner")

				Button.Name = "Button"
				Button.Parent = SectionCollection
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Button.BorderSizePixel = 0
				Button.Size = UDim2.new(0.800000012, 0, 0.5, 0)
				Button.ZIndex = 15

				UIAspectRatioConstraint.Parent = Button
				UIAspectRatioConstraint.AspectRatio = 8.500
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				TextLabel.Parent = Button
				TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
				TextLabel.Size = UDim2.new(0.959999979, 0, 0.649999976, 0)
				TextLabel.ZIndex = 16
				TextLabel.Font = Enum.Font.Code
				TextLabel.Text = ButtonBame or "TextLabel"
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextScaled = true
				TextLabel.TextSize = 14.000
				TextLabel.TextWrapped = true
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left
				TextLabel.TextTransparency = 0.25

				UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(22, 22, 22)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(18, 18, 18))}
				UIGradient.Rotation = 90
				UIGradient.Parent = Button

				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke.Parent = Button

				UICorner.CornerRadius = UDim.new(0, 1)
				UICorner.Parent = Button

				cretate_button(Button).MouseButton1Click:Connect(function()
					Update()
					calback()
				end)

				TextLabel.MouseEnter:Connect(function()
					TweenService:Create(TextLabel,TweenInfo.new(0.1),{TextTransparency = 0,TextColor3 = LEAK.MainColor}):Play()
				end)

				TextLabel.MouseLeave:Connect(function()
					TweenService:Create(TextLabel,TweenInfo.new(0.1),{TextTransparency = 0.25,TextColor3 = Color3.fromRGB(255,255,255)}):Play()
				end)

				local Funcxtion = {}

				function Funcxtion:Fire(...)
					return calback(...)
				end

				function Funcxtion:Text(t)
					TextLabel.Text = t
				end

				task.spawn(function()
					task.wait(0.1)
					Update()
				end)
				return Funcxtion
			end

			function SectionFunctions:NewKeybind(LabelT:string,default:Enum.KeyCode,callback)
				callback =callback or binfunction
				local Keybind = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local Frame = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local KeyName = Instance.new("TextLabel")
				local UIListLayout = Instance.new("UIListLayout")
				local TextLabel = Instance.new("TextLabel")

				Keybind.Name = "Keybind"
				Keybind.Parent = SectionCollection
				Keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Keybind.BackgroundTransparency = 1.000
				Keybind.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Keybind.BorderSizePixel = 0
				Keybind.Size = UDim2.new(0.949999988, 0, 0.5, 0)
				Keybind.ZIndex = 15

				UIAspectRatioConstraint.Parent = Keybind
				UIAspectRatioConstraint.AspectRatio = 8.500
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				Frame.Parent = Keybind
				Frame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
				Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Frame.BorderSizePixel = 0
				Frame.Size = UDim2.new(0, 20, 0.649999976, 0)
				Frame.ZIndex = 18

				UICorner.CornerRadius = UDim.new(0, 1)
				UICorner.Parent = Frame

				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke.Parent = Frame

				KeyName.Name = "KeyName"
				KeyName.Parent = Frame
				KeyName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				KeyName.BackgroundTransparency = 1.000
				KeyName.BorderColor3 = Color3.fromRGB(0, 0, 0)
				KeyName.BorderSizePixel = 0
				KeyName.Size = UDim2.new(1, 0, 1, 0)
				KeyName.ZIndex = 18
				KeyName.Font = Enum.Font.Code
				KeyName.TextColor3 = Color3.fromRGB(255, 255, 255)
				KeyName.TextScaled = true
				KeyName.TextSize = 14.000
				KeyName.TextWrapped = true
				KeyName.TextXAlignment = Enum.TextXAlignment.Center
				KeyName.Text = (default and default.Name) or 'NONE'
				UIListLayout.Parent = Keybind
				UIListLayout.FillDirection = Enum.FillDirection.Horizontal
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
				UIListLayout.Padding = UDim.new(0, 5)

				TextLabel.Parent = Keybind
				TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(1.00999999, 0, 0.5, 0)
				TextLabel.Size = UDim2.new(1.77499998, 0, 0.699999988, 0)
				TextLabel.ZIndex = 16
				TextLabel.Font = Enum.Font.Code
				TextLabel.Text = LabelT or "TextLabel"
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextScaled = true
				TextLabel.TextSize = 14.000
				TextLabel.TextWrapped = true
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				task.spawn(function()
					task.wait(0.1)
					Update()
				end)

				local function UpdateText()
					local size = TextService:GetTextSize(KeyName.Text,KeyName.TextSize,KeyName.Font,Vector2.new(math.huge,math.huge))
					TweenService:Create(Frame,TweenInfo.new(0.4),{Size=UDim2.new(0,size.X + 1,0.65,0)}):Play()

				end

				local key = default
				UpdateText()
				local isBind = false
				local function Dex()
					if isBind then
						return

					end

					local spofer
					isBind = true
					local keycal = InputService.InputBegan:Connect(function(t)
						if t.KeyCode and t.KeyCode ~= Enum.KeyCode.Unknown then
							spofer = t.KeyCode
						end
					end)
					KeyName.Text = '...'
					UpdateText()
					Update()
					repeat task.wait() until spofer
					isBind = false
					keycal:Disconnect()
					if spofer then
						key = spofer
						KeyName.Text = spofer.Name
						UpdateText()
						Update()
						callback(spofer)
					end
				end
				cretate_button(TextLabel).MouseButton1Click:Connect(Dex)
				cretate_button(Frame).MouseButton1Click:Connect(Dex)

				local Funcxtion = {}

				function Funcxtion:Fire(...)
					return callback(...)
				end

				function Funcxtion:GetValue(...)
					return key
				end

				function Funcxtion:Text(t)
					TextLabel.Text = t
				end

				task.spawn(function()
					task.wait(0.1)
					Update()
				end)

				return Funcxtion
			end

			function SectionFunctions:NewSlider(SliderName,min,max,default,callback)
				min = min or 5
				max = max or 10
				default = default or min
				callback = callback or binfunction

				local Slider = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local TextLabel = Instance.new("TextLabel")
				local SliderFrame = Instance.new("Frame")
				local UIStroke = Instance.new("UIStroke")
				local UICorner = Instance.new("UICorner")
				local UIGradient = Instance.new("UIGradient")
				local SliderBlock = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local ImageLabel = Instance.new("ImageLabel")
				local Value = Instance.new("TextLabel")

				Slider.Name = "Slider"
				Slider.Parent = SectionCollection
				Slider.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Slider.BackgroundTransparency = 1.000
				Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Slider.BorderSizePixel = 0
				Slider.Size = UDim2.new(0.949999988, 0, 0.5, 0)
				Slider.ZIndex = 15

				UIAspectRatioConstraint.Parent = Slider
				UIAspectRatioConstraint.AspectRatio = 4.250
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				TextLabel.Parent = Slider
				TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(1.00999999, 0, 0.100000001, 0)
				TextLabel.Size = UDim2.new(1.77499998, 0, 0.349999994, 0)
				TextLabel.ZIndex = 16
				TextLabel.Font = Enum.Font.Code
				TextLabel.Text = SliderName or "TextLabel"
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextScaled = true
				TextLabel.TextSize = 14.000
				TextLabel.TextWrapped = true
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left

				SliderFrame.Name = "SliderFrame"
				SliderFrame.Parent = Slider
				SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				SliderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				SliderFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SliderFrame.BorderSizePixel = 0
				SliderFrame.Position = UDim2.new(0.512000024, 0, 0.600000024, 0)
				SliderFrame.Size = UDim2.new(0.818947077, 0, 0.425000012, 0)
				SliderFrame.ZIndex = 17

				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke.Parent = SliderFrame

				UICorner.CornerRadius = UDim.new(0, 1)
				UICorner.Parent = SliderFrame

				UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(22, 22, 22)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(18, 18, 18))}
				UIGradient.Rotation = 90
				UIGradient.Parent = SliderFrame

				SliderBlock.Name = "SliderBlock"
				SliderBlock.Parent = SliderFrame
				SliderBlock.AnchorPoint = Vector2.new(0, 0.5)
				SliderBlock.BackgroundColor3 = LEAK.MainColor
				SliderBlock.BorderColor3 = Color3.fromRGB(0, 0, 0)
				SliderBlock.BorderSizePixel = 0
				SliderBlock.Position = UDim2.new(0, 0, 0.5, 0)
				SliderBlock.Size = UDim2.new(1, 0, 0.75, 0)
				SliderBlock.ZIndex = 17

				UICorner_2.CornerRadius = UDim.new(0, 1)
				UICorner_2.Parent = SliderBlock

				ImageLabel.Parent = SliderFrame
				ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ImageLabel.BackgroundTransparency = 1.000
				ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ImageLabel.BorderSizePixel = 0
				ImageLabel.Size = UDim2.new(1, 0, 1, 0)
				ImageLabel.ZIndex = 18
				ImageLabel.Image = "rbxassetid://4576475446"

				Value.Name = "Value"
				Value.Parent = SliderFrame
				Value.AnchorPoint = Vector2.new(0.5, 0.5)
				Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Value.BackgroundTransparency = 1.000
				Value.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Value.BorderSizePixel = 0
				Value.Position = UDim2.new(0.5, 0, 0.5, 0)
				Value.Size = UDim2.new(1, 0, 0.75, 0)
				Value.ZIndex = 19
				Value.Font = Enum.Font.Code
				Value.Text = tostring(default)..'/'..tostring(max)..''
				Value.TextColor3 = Color3.fromRGB(255, 255, 255)
				Value.TextScaled = true
				Value.TextSize = 14.000
				Value.TextWrapped = true

				local function getsize(d)
					local v = (d / max)
					return v
				end

				SliderBlock.Size = UDim2.new(getsize(default), 0, 0.75, 0)

				local last = default
				local danger = false

				Update()

				local function update(Input)
					local SizeScale = math.clamp((((Input.Position.X) - SliderFrame.AbsolutePosition.X) / SliderFrame.AbsoluteSize.X), 0, 1)
					local Valuea = math.floor(((max - min) * SizeScale) + min)
					local Size = UDim2.fromScale(math.clamp(SizeScale,0,1), 0.75)
					Value.Text = tostring(Valuea)..'/'..tostring(max)..''
					TweenService:Create(SliderBlock,TweenInfo.new(0.1),{Size = Size}):Play()
					last = Valuea
					Update()
					callback(Valuea)
				end

				SliderFrame.InputBegan:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						danger = true
						update(Input)
						TweenService:Create(TextLabel,TweenInfo.new(0.1),{TextTransparency=0}):Play()
					end
				end)

				SliderFrame.InputEnded:Connect(function(Input)
					if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
						danger = false
						TweenService:Create(TextLabel,TweenInfo.new(0.1),{TextTransparency=0.3}):Play()
					end
				end)

				InputService.InputChanged:Connect(function(Input)
					if danger then
						if (Input.UserInputType==Enum.UserInputType.MouseMovement or Input.UserInputType==Enum.UserInputType.Touch)  then
							update(Input)
						end
					end
				end)

				local Funcxtion = {}

				function Funcxtion:Fire(...)
					return callback(...)
				end

				function Funcxtion:GetValue(...)
					return last
				end

				function Funcxtion:Text(t)
					TextLabel.Text = t
				end

				task.spawn(function()
					task.wait(0.1)
					Update()
				end)

				return Funcxtion
			end

			function SectionFunctions:NewDropdown(DropdownName:string,data:{string},calback)
				data = data or {}
				calback = calback or binfunction

				local Dropdown = Instance.new("Frame")
				local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
				local TextLabel = Instance.new("TextLabel")
				local DropFrame = Instance.new("Frame")
				local UIStroke = Instance.new("UIStroke")
				local UICorner = Instance.new("UICorner")
				local UIGradient = Instance.new("UIGradient")
				local ItemName = Instance.new("TextLabel")
				local TextLabel_2 = Instance.new("TextLabel")


				Dropdown.Name = "Dropdown"
				Dropdown.Parent = SectionCollection
				Dropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Dropdown.BackgroundTransparency = 1.000
				Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Dropdown.BorderSizePixel = 0
				Dropdown.Size = UDim2.new(0.949999988, 0, 0.5, 0)
				Dropdown.ZIndex = 15

				UIAspectRatioConstraint.Parent = Dropdown
				UIAspectRatioConstraint.AspectRatio = 4.250
				UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

				TextLabel.Parent = Dropdown
				TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
				TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.BackgroundTransparency = 1.000
				TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextLabel.BorderSizePixel = 0
				TextLabel.Position = UDim2.new(1.00999999, 0, 0.100000001, 0)
				TextLabel.Size = UDim2.new(1.77499998, 0, 0.349999994, 0)
				TextLabel.ZIndex = 16
				TextLabel.Font = Enum.Font.Code
				TextLabel.Text = DropdownName or "TextLabel"
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextScaled = true
				TextLabel.TextSize = 14.000
				TextLabel.TextWrapped = true
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left
				local gsub = TextLabel

				DropFrame.Name = "DropFrame"
				DropFrame.Parent = Dropdown
				DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
				DropFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				DropFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DropFrame.BorderSizePixel = 0
				DropFrame.Position = UDim2.new(0.512000024, 0, 0.600000024, 0)
				DropFrame.Size = UDim2.new(0.818947077, 0, 0.425000012, 0)
				DropFrame.ZIndex = 17

				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke.Parent = DropFrame

				UICorner.CornerRadius = UDim.new(0, 1)
				UICorner.Parent = DropFrame

				UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(22, 22, 22)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(18, 18, 18))}
				UIGradient.Rotation = 90
				UIGradient.Parent = DropFrame

				ItemName.Name = "ItemName"
				ItemName.Parent = DropFrame
				ItemName.AnchorPoint = Vector2.new(0.5, 0.5)
				ItemName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ItemName.BackgroundTransparency = 1.000
				ItemName.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ItemName.BorderSizePixel = 0
				ItemName.Position = UDim2.new(0.451445967, 0, 0.500000477, 0)
				ItemName.Size = UDim2.new(0.852892101, 0, 0.800000131, 0)
				ItemName.ZIndex = 18
				ItemName.Font = Enum.Font.Code
				ItemName.Text = (data[1] and tostring(data[1])) or 'NONE'
				ItemName.TextColor3 = Color3.fromRGB(255, 255, 255)
				ItemName.TextScaled = true
				ItemName.TextSize = 14.000
				ItemName.TextWrapped = true
				ItemName.TextXAlignment = Enum.TextXAlignment.Left
				
				TextLabel_2.Parent = DropFrame
				TextLabel_2.AnchorPoint = Vector2.new(1, 0)
				TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_2.BackgroundTransparency = 1.000
				TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextLabel_2.BorderSizePixel = 0
				TextLabel_2.Position = UDim2.new(1, 0, 0, 0)
				TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
				TextLabel_2.SizeConstraint = Enum.SizeConstraint.RelativeYY
				TextLabel_2.ZIndex = 18
				TextLabel_2.Font = Enum.Font.Code
				TextLabel_2.Text = "</>"
				TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel_2.TextScaled = true
				TextLabel_2.TextSize = 14.000
				TextLabel_2.TextWrapped = true

				local positionlist = {
					UDim2.new(0.732, 0,0.175, 0),
					UDim2.new(0.3, 0,0.175, 0),
					UDim2.new(0.1, 0,0.175, 0),
					UDim2.new(0.5, 0,0.175, 0),
					UDim2.new(0.6, 0,0.175, 0),
					UDim2.new(0.8, 0,0.175, 0),
					UDim2.new(0.5, 0,0.175, 0),
					UDim2.new(0.6, 0,0.175, 0)
				}

				local DropDownFrameItems = Instance.new("Frame")
				local UICorner = Instance.new("UICorner")
				local UIStroke = Instance.new("UIStroke")
				local HeadFrame = Instance.new("Frame")
				local UICorner_2 = Instance.new("UICorner")
				local TextLabel = Instance.new("TextLabel")
				local ScrollingFrame = Instance.new("ScrollingFrame")
				local UIListLayout = Instance.new("UIListLayout")

				DropDownFrameItems.Name = "DropDownFrameItems"
				DropDownFrameItems.Parent = Index
				DropDownFrameItems.Active = true
				DropDownFrameItems.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
				DropDownFrameItems.BorderColor3 = Color3.fromRGB(0, 0, 0)
				DropDownFrameItems.BorderSizePixel = 0
				DropDownFrameItems.ClipsDescendants = true
				DropDownFrameItems.Position = positionlist[math.random(1,#positionlist)]
				DropDownFrameItems.Size = UDim2.new(0.200000003, 0, 0.5, 0)
				DropDownFrameItems.ZIndex = 33
				DropDownFrameItems.ClipsDescendants = true

				DropDownFrameItems:GetPropertyChangedSignal('BackgroundTransparency'):Connect(function()
					if DropDownFrameItems.BackgroundTransparency <= 0.98 then
						DropDownFrameItems.Visible = true
					else
						DropDownFrameItems.Visible = false
					end
				end)

				local function SizeToggle(va)
					if va then
						TweenService:Create(gsub,TweenInfo.new(0.1),{TextTransparency = 0}):Play()
						TweenService:Create(DropDownFrameItems,TweenInfo.new(0.5),{Size = UDim2.new(0.200000003, 0, 0.5, 0),BackgroundTransparency = 0}):Play()
						TweenService:Create(HeadFrame,TweenInfo.new(0.5),{BackgroundTransparency = 0}):Play()
						TweenService:Create(TextLabel,TweenInfo.new(0.1),{TextTransparency = 0}):Play()
						TweenService:Create(UIStroke,TweenInfo.new(0.9),{Transparency = 0}):Play()
						TweenService:Create(ScrollingFrame,TweenInfo.new(0.1),{Position = UDim2.new(0, 0, 0.0797503516, 0)}):Play()
					else
						TweenService:Create(gsub,TweenInfo.new(0.1),{TextTransparency = 0.25}):Play()
						TweenService:Create(DropDownFrameItems,TweenInfo.new(0.5),{Size = UDim2.new(0.200000003, 0, 0, 0),BackgroundTransparency = 1}):Play()
						TweenService:Create(TextLabel,TweenInfo.new(0.1),{TextTransparency = 1}):Play()
						TweenService:Create(UIStroke,TweenInfo.new(0.1),{Transparency = 1}):Play()
						TweenService:Create(HeadFrame,TweenInfo.new(0.5),{BackgroundTransparency = 1}):Play()
						TweenService:Create(ScrollingFrame,TweenInfo.new(0.1),{Position = UDim2.new(0, 0,1.5, 0)}):Play()
					end
				end

				UICorner.CornerRadius = UDim.new(0, 1)
				UICorner.Parent = DropDownFrameItems

				UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
				UIStroke.Parent = DropDownFrameItems

				HeadFrame.Name = "HeadFrame"
				HeadFrame.Parent = DropDownFrameItems
				HeadFrame.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
				HeadFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				HeadFrame.BorderSizePixel = 0
				HeadFrame.Size = UDim2.new(1, 0, 0.0573114008, 0)
				HeadFrame.ZIndex = 34

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
				TextLabel.ZIndex = 45
				TextLabel.Font = Enum.Font.Code
				TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextLabel.TextScaled = true
				TextLabel.TextSize = 14.000
				TextLabel.TextWrapped = true
				TextLabel.TextXAlignment = Enum.TextXAlignment.Left
				TextLabel.Text = DropdownName or "TextLabel"

				ScrollingFrame.Parent = DropDownFrameItems
				ScrollingFrame.Active = true
				ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				ScrollingFrame.BackgroundTransparency = 1.000
				ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
				ScrollingFrame.BorderSizePixel = 0
				ScrollingFrame.ClipsDescendants = false
				ScrollingFrame.Position = UDim2.new(0, 0, 0.0797503516, 0)
				ScrollingFrame.Size = UDim2.new(0.99999994, 0, 0.892510533, 0)
				ScrollingFrame.ZIndex = 34
				ScrollingFrame.BottomImage = ""
				ScrollingFrame.ScrollBarThickness = 1
				ScrollingFrame.TopImage = ""
				scrolling_connect(ScrollingFrame)
				UIListLayout.Parent = ScrollingFrame
				UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
				UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
				UIListLayout.Padding = UDim.new(0,10)
				task.spawn(function()
					local dragToggle = nil
					local dragSpeed = 0.05
					local dragStart = nil
					local startPos = nil

					local function updateInput(input)
						local delta = input.Position - dragStart
						local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
							startPos.Y.Scale, startPos.Y.Offset + delta.Y)
						game:GetService('TweenService'):Create(DropDownFrameItems, TweenInfo.new(dragSpeed), {Position = position}):Play()
					end

					TextLabel.InputBegan:Connect(function(input)
						if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
							dragToggle = true
							dragStart = input.Position
							startPos = DropDownFrameItems.Position
							input.Changed:Connect(function()
								if input.UserInputState == Enum.UserInputState.End then
									dragToggle = false
								end
							end)
						end
					end)

					InputService.InputChanged:Connect(function(input)
						if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
							if dragToggle then
								updateInput(input)
							end
						end
					end)
				end)

				local valuenow = data[1] or nil
				local UIHasToggle = false
				SizeToggle(UIHasToggle)

				local function Refresh(new)
					data = new or data

					for i,v in ipairs(ScrollingFrame:GetChildren()) do
						if v:IsA('TextLabel') then
							v:Destroy()
						end
					end

					for i,v in ipairs(data) do

						local TextLabel = Instance.new("TextLabel")
						local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
						local UICorner = Instance.new("UICorner")

						TextLabel.Parent = ScrollingFrame
						TextLabel.Active = true
						TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
						TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.BackgroundTransparency = 1.000
						TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
						TextLabel.BorderSizePixel = 0
						TextLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
						TextLabel.Size = UDim2.new(0.949999988, 0, 0.649999976, 0)
						TextLabel.ZIndex = 33
						TextLabel.Font = Enum.Font.Code
						TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
						TextLabel.TextScaled = true
						TextLabel.TextSize = 14.000
						TextLabel.TextWrapped = true
						TextLabel.Text = tostring(v)

						TextLabel.MouseEnter:Connect(function()
							TweenService:Create(TextLabel,TweenInfo.new(0.1),{TextColor3 = LEAK.MainColor}):Play()
						end)

						TextLabel.MouseLeave:Connect(function()
							TweenService:Create(TextLabel,TweenInfo.new(0.1),{TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
						end)

						UIAspectRatioConstraint.Parent = TextLabel
						UIAspectRatioConstraint.AspectRatio = 15.000
						UIAspectRatioConstraint.AspectType = Enum.AspectType.ScaleWithParentSize

						UICorner.CornerRadius = UDim.new(0, 1)
						UICorner.Parent = TextLabel
						cretate_button(TextLabel).MouseButton1Click:Connect(function()
							valuenow = v
							ItemName.Text = tostring(v)
							calback(v)
						end)
					end
				end

				cretate_button(DropFrame).MouseButton1Click:Connect(function()
					UIHasToggle = not UIHasToggle
					Update()
					SizeToggle(UIHasToggle)
				end)

				Update()
				Refresh()

				local Funcxtion = {}

				function Funcxtion:Fire(...)
					return calback(...)
				end

				function Funcxtion:GetValue(...)
					return valuenow
				end

				function Funcxtion:Text(t)
					gsub.Text = t
				end

				function Funcxtion:Refresh(d)
					Refresh(d)
				end

				task.spawn(function()
					task.wait(0.4)
					Update()
				end)

				return Funcxtion
			end

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
	end

	function WindowsFunctions:ToggleUI(visible:boolean|nil)
		if visible == nil then
			isVisible = not isVisible
		else
			isVisible = visible
		end
		
		if isVisible then
			TweenService:Create(MainFrame, TweenInfo.new(0.3), {Size = UDim2.new(0.949999988, 0, 0.887907445, 0)}):Play()
			ToggleButton.Text = "—"
		else
			TweenService:Create(MainFrame, TweenInfo.new(0.3), {Size = UDim2.new(0.949999988, 0, 0, 0)}):Play()
			ToggleButton.Text = "+"
		end
	end

	function WindowsFunctions:LockUI(locked:boolean|nil)
		if locked == nil then
			isLocked = not isLocked
		else
			isLocked = locked
		end
		
		if isLocked then
			LockButton.Text = "Lock"
			LockButton.TextColor3 = LEAK.MainColor
		else
			LockButton.Text = "Lock"
			LockButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		end
	end

	local dragToggle = nil
	local dragSpeed = 0.05
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		if isLocked then return end
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(UIFrame, TweenInfo.new(dragSpeed), {Position = position}):Play()
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


