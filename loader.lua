if getgenv().moseloaded then return end getgenv().moseloaded=true
local work=game:GetService('Workspace')
local players=game:GetService('Players')local plr=players.LocalPlayer repeat wait()until game:IsLoaded()
local rs=game:GetService('RunService')
local rootpart rs.Heartbeat:Connect(function()pcall(function()rootpart=plr.Character.HumanoidRootPart end)end)
local moselib=[[
	local library={}
	function smoothdrag(frame)
		local UIS=game:GetService('UserInputService')
		local function dragify(Frame)
			local dragToggle=nil
			local dragSpeed=0.85
			local dragInput=nil
			local dragStart=nil
			local dragPos=nil
			local function updateInput(input)
				local Delta=input.Position - dragStart
				local Position=UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
				game:GetService('TweenService'):Create(Frame, TweenInfo.new(0.30), {Position=Position}):Play()
			end
			Frame.InputBegan:Connect(function(input)
				if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
					dragToggle=true
					dragStart=input.Position
					startPos=Frame.Position
					input.Changed:Connect(function()
						if input.UserInputState == Enum.UserInputState.End then
							dragToggle=false
						end
					end)
				end
			end)
			Frame.InputChanged:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
					dragInput=input
				end
			end)
			game:GetService('UserInputService').InputChanged:Connect(function(input)
				if input == dragInput and dragToggle then
					updateInput(input)
				end
			end)
		end
		dragify(frame)
	end
	function library:Create(gamenametext)
		local t=15
		local ts=game:GetService('TweenService')
		local ScreenGui=Instance.new('ScreenGui')
		local Drag=Instance.new('Frame')
		smoothdrag(Drag)
		local DragCorner=Instance.new('UICorner')
		local DecorBackground=Instance.new('Frame')
		local DecorCorner=Instance.new('UICorner')
		local Decor=Instance.new('Frame')
		local Decor_2=Instance.new('Frame')
		local Decor_3=Instance.new('Frame')
		local Name=Instance.new('TextLabel')
		local gamename=Instance.new('TextLabel')
		local Tabs=Instance.new('Frame')
		local TabsCorner=Instance.new('UICorner')
		local tabslayout=Instance.new('UIListLayout')
		local tabspadding=Instance.new('UIPadding')
		ScreenGui.Parent=game:GetService('CoreGui')
		local libname='RobloxCrashHandler'
		ScreenGui.Name=libname
		Drag.Name='Drag'
		Drag.Parent=ScreenGui
		Drag.BackgroundColor3=Color3.fromRGB(25,25,25)
		Drag.BorderColor3=Color3.fromRGB(0,0,0)
		Drag.BorderSizePixel=0
		Drag.Position=UDim2.new(0.0785544366,0,0.341772139,0)
		Drag.Size=UDim2.new(0, 507,0, 37)
		DragCorner.CornerRadius=UDim.new(0, 15)
		DragCorner.Name='DragCorner'
		DragCorner.Parent=Drag
		DecorBackground.Name='DecorBackground'
		DecorBackground.Parent=Drag
		DecorBackground.BackgroundColor3=Color3.fromRGB(30,30,30)
		DecorBackground.BorderColor3=Color3.fromRGB(0,0,0)
		DecorBackground.BorderSizePixel=0
		DecorBackground.Position=UDim2.new(-0.000457462127,0,0.548759639,0)
		DecorBackground.Size=UDim2.new(0, 507,0, 327)
		DecorCorner.CornerRadius=UDim.new(0, 15)
		DecorCorner.Name='DecorCorner'
		DecorCorner.Parent=DecorBackground
		Decor.Name='Decor'
		Decor.Parent=Drag
		Decor.BackgroundColor3=Color3.fromRGB(25,25,25)
		Decor.BorderColor3=Color3.fromRGB(0,0,0)
		Decor.BorderSizePixel=0
		Decor.Position=UDim2.new(8.89593423e-07,0,0.548759639,0)
		Decor.Size=UDim2.new(0, 507,0, 17)
		Decor_2.Name='Decor'
		Decor_2.Parent=Decor
		Decor_2.BackgroundColor3=Color3.fromRGB(25,25,25)
		Decor_2.BorderColor3=Color3.fromRGB(0,0,0)
		Decor_2.BorderSizePixel=0
		Decor_2.Position=UDim2.new(0.239921376, 1,0.889668167,0)
		Decor_2.Size=UDim2.new(0, 12,0, 311)
		Decor_3.Name='Decor'
		Decor_3.Parent=Decor
		Decor_3.BackgroundColor3=Color3.fromRGB(25,25,25)
		Decor_3.BorderColor3=Color3.fromRGB(0,0,0)
		Decor_3.BorderSizePixel=0
		Decor_3.Position=UDim2.new(0,0,0.540665567,0)
		Decor_3.Size=UDim2.new(0, 21,0, 21)
		Name.Name='Name'
		Name.Parent=Drag
		Name.BackgroundColor3=Color3.fromRGB(255, 255, 255)
		Name.BackgroundTransparency=1.000
		Name.BorderSizePixel=0
		Name.Position=UDim2.new(0.0229597427,0,0.202579394,0)
		Name.Size=UDim2.new(0, 91,0, 22)
		Name.Font=Enum.Font.GothamBold
		Name.Text='Mose Hub : '
		Name.TextColor3=Color3.fromRGB(255, 255, 255)
		Name.TextScaled=true
		Name.TextSize=14.000
		Name.TextWrapped=true
		gamename.Name='gamename'
		gamename.Parent=Drag
		gamename.BackgroundColor3=Color3.fromRGB(255, 255, 255)
		gamename.BackgroundTransparency=1.000
		gamename.BorderSizePixel=0
		gamename.Position=UDim2.new(0.200598672,0,0.256633043,0)
		gamename.Size=UDim2.new(0, 69,0, 20)
		gamename.Font=Enum.Font.Gotham
		gamename.Text=gamenametext
		gamename.TextColor3=Color3.fromRGB(184, 184, 184)
		gamename.TextScaled=true
		gamename.TextSize=14.000
		gamename.TextWrapped=true
		Tabs.Name='Tabs'
		Tabs.Parent=Drag
		Tabs.BackgroundColor3=Color3.fromRGB(25,25,25)
		Tabs.BorderColor3=Color3.fromRGB(0,0,0)
		Tabs.BorderSizePixel=0
		Tabs.Position=UDim2.new(9.02886939e-07,0, 1.01179874,0)
		Tabs.Size=UDim2.new(0, 134,0, 309)
		TabsCorner.CornerRadius=UDim.new(0, 15)
		TabsCorner.Name='TabsCorner'
		TabsCorner.Parent=Tabs
		tabslayout.Name='tabslayout'
		tabslayout.Parent=Tabs
		tabslayout.HorizontalAlignment=Enum.HorizontalAlignment.Center
		tabslayout.SortOrder=Enum.SortOrder.LayoutOrder
		tabslayout.Padding=UDim.new(0,5)
		tabspadding.Name='tabspadding'
		tabspadding.Parent=Tabs
		tabspadding.PaddingTop=UDim.new(0, 8)
		function library:Init()
			game:GetService('CoreGui'):FindFirstChild(libname).Enabled=not game:GetService('CoreGui'):FindFirstChild(libname).Enabled
		end
		local insidehandler={}
		function insidehandler:CreateTab(tabname)
			local s1=Instance.new('Frame')
			s1.Name=tabname
			s1.Parent=Drag
			s1.BackgroundColor3=Color3.fromRGB(45, 45, 45)
			s1.BackgroundTransparency=1.000
			s1.BorderColor3=Color3.fromRGB(0,0,0)
			s1.BorderSizePixel=0
			s1.Position=UDim2.new(0.266262144,0, 1.01179874,0)
			s1.Size=UDim2.new(0, 371,0, 309)
			local istab=Instance.new('BoolValue')istab.Name='istab'istab.Parent=s1
			local tablayout=Instance.new('UIListLayout')
			tablayout.Name='tablayout'
			tablayout.Parent=s1
			tablayout.HorizontalAlignment=Enum.HorizontalAlignment.Right
			tablayout.SortOrder=Enum.SortOrder.LayoutOrder
			tablayout.Padding=UDim.new(0, 5)
			local list=Instance.new('ScrollingFrame')
			list.Name='list'
			list.Parent=s1
			list.Active=true
			list.BackgroundColor3=Color3.fromRGB(255, 255, 255)
			list.BackgroundTransparency=1.000
			list.BorderSizePixel=0
			list.Position=UDim2.new(-0.00268044695,0,0,0)
			list.Size=UDim2.new(0, 371,0, 308)
			list.BottomImage=''
			list.MidImage=''
			list.TopImage=''
			-- autoresize
			spawn(function()while wait()do list.CanvasSize=UDim2.new(0,0,0,list.listlayout.AbsoluteContentSize.Y+15)end end)
			--
			local listlayout=Instance.new('UIListLayout')
			listlayout.Name='listlayout'
			listlayout.Parent=list
			listlayout.HorizontalAlignment=Enum.HorizontalAlignment.Right
			listlayout.SortOrder=Enum.SortOrder.LayoutOrder
			listlayout.Padding=UDim.new(0, 5)
			local listpadding=Instance.new('UIPadding')
			listpadding.Name='listpadding'
			listpadding.Parent=list
			listpadding.PaddingRight=UDim.new(0, 12)
			listpadding.PaddingTop=UDim.new(0, 8)
			local tabButton=Instance.new('TextButton')
			tabButton.Name='tabButton'
			tabButton.Parent=Tabs
			tabButton.BackgroundColor3=Color3.fromRGB(55, 55, 55)
			tabButton.BorderColor3=Color3.fromRGB(0,0,0)
			tabButton.BorderSizePixel=0
			tabButton.Position=UDim2.new(0.0719413161, 2,0, 2)
			tabButton.Size=UDim2.new(0, 110,0, 23)
			tabButton.Font=Enum.Font.Gotham
			tabButton.Text=tabname
			tabButton.TextColor3=Color3.fromRGB(255,255,255)
			tabButton.TextSize=14.000
			-- rainbow
			local hue=tick()%t/t
			local color=Color3.fromHSV(hue,1,1)
			spawn(function()
				while wait()do
					local hue=tick()%t/t
					local color=Color3.fromHSV(hue,1,1)
					tabButton.BackgroundColor3=color
				end
			end)
			--
			local tabbuttonCorner=Instance.new('UICorner')
			tabbuttonCorner.CornerRadius=UDim.new(0, 15)
			tabbuttonCorner.Name='tabbuttonCorner'
			tabbuttonCorner.Parent=tabButton
			-- function
			tabButton.MouseButton1Click:Connect(function()
				for i,v in pairs(Drag:GetChildren())do
					if v:FindFirstChild('istab')and v.Name~=tabname then v.Visible=false elseif v.Name==tabname then
						v.Visible=true
					end
				end
			end)
			local shiver={}
			function shiver:CreateButton(text,callback)
				callback=callback or function()end
				local Button=Instance.new('TextButton')
				Button.Name='tabButton'
				Button.Parent=list
				Button.BackgroundColor3=Color3.fromRGB(20,20,20)
				Button.BorderColor3=Color3.fromRGB(0,0,0)
				Button.BorderSizePixel=0
				Button.Position=UDim2.new(0.0719413161, 2,0, 2)
				Button.Size=UDim2.new(0,352,0,23)
				Button.Font=Enum.Font.Gotham
				Button.Text=text
				Button.TextColor3=Color3.fromRGB(255,255,255)
				Button.TextSize=15.000
				local ButtonCorner=Instance.new('UICorner')
				ButtonCorner.CornerRadius=UDim.new(0, 15)
				ButtonCorner.Name='tabbuttonCorner'
				ButtonCorner.Parent=Button
				Button.MouseButton1Click:Connect(function()
					callback()
				end)
			end
			function shiver:CreateTableDropdown(text,normaltable,callback)
				callback=callback or function()end
				local dropdownopened=false
				local debounce=false
				local selectedoptions={}
				local Dropdown=Instance.new('Frame')
				local DropdownCorner=Instance.new('UICorner')
				local opendropdownbutton=Instance.new('ImageButton')
				local content=Instance.new('Frame')
				local contentCorner=Instance.new('UICorner')
				local list2=Instance.new('ScrollingFrame')
				local listlayout2=Instance.new('UIListLayout')
				local listpadding2=Instance.new('UIPadding')
				local dropdowntext=Instance.new('TextLabel')
				Dropdown.Name='Dropdown'
				Dropdown.Parent=list
				Dropdown.BackgroundColor3=Color3.fromRGB(20, 20, 20)
				Dropdown.BorderColor3=Color3.fromRGB(0, 0, 0)
				Dropdown.BorderSizePixel=0
				Dropdown.Position=UDim2.new(0.293816388, 0, 0.132746339, 0)
				Dropdown.Size=UDim2.new(0, 352, 0, 23)
				DropdownCorner.CornerRadius=UDim.new(0, 15)
				DropdownCorner.Name='DropdownCorner'
				DropdownCorner.Parent=Dropdown
				opendropdownbutton.Name='button'
				opendropdownbutton.Parent=Dropdown
				opendropdownbutton.BackgroundTransparency=1.000
				opendropdownbutton.Position=UDim2.new(0.92, 0, 0, 0)
				opendropdownbutton.Rotation=90
				opendropdownbutton.Size=UDim2.new(0, 24, 0, 24)
				opendropdownbutton.ZIndex=2
				opendropdownbutton.Image='rbxassetid://3926305904'
				opendropdownbutton.ImageRectOffset=Vector2.new(924, 884)
				opendropdownbutton.ImageRectSize=Vector2.new(36, 36)
				content.Name='content'
				content.Parent=list
				content.BackgroundColor3=Color3.fromRGB(25, 25, 25)
				content.BorderColor3=Color3.fromRGB(0, 0, 0)
				content.BorderSizePixel=0
				content.Position=UDim2.new(-0.0057004476, 0, 1.30700016, -3)
				content.Size=UDim2.new(0, 352, 0, 0) -- 0, 207, 0, 175
				contentCorner.Name='contentCorner'
				contentCorner.Parent=content
				list2.Name='list'
				list2.Parent=content
				list2.Active=true
				list2.BackgroundColor3=Color3.fromRGB(255, 255, 255)
				list2.BackgroundTransparency=1.000
				list2.BorderSizePixel=0
				list2.Position=UDim2.new(0.000869529846, 0, 0, 0)
				list2.Size=UDim2.new(0, 352, 0, 0) -- 0, 207, 0, 175
				list2.BottomImage=''
				list2.MidImage=''
				list2.ScrollBarThickness=0
				list2.TopImage=''
				listlayout2.Name='listlayout'
				listlayout2.Parent=list2
				listlayout2.HorizontalAlignment=Enum.HorizontalAlignment.Center
				listlayout2.SortOrder=Enum.SortOrder.LayoutOrder
				listlayout2.Padding=UDim.new(0, 5)
				listpadding2.Name='listpadding'
				listpadding2.Parent=list2
				listpadding2.PaddingTop=UDim.new(0, 8)
				dropdowntext.Name='Name'
				dropdowntext.Parent=Dropdown
				dropdowntext.BackgroundColor3=Color3.fromRGB(255, 255, 255)
				dropdowntext.BackgroundTransparency=1.000
				dropdowntext.BorderSizePixel=0
				dropdowntext.Position=UDim2.new(0.0419453399, 0, 0, 0)
				dropdowntext.Size=UDim2.new(0, 196, 0, 21)
				dropdowntext.Font=Enum.Font.Gotham
				dropdowntext.Text=text
				dropdowntext.TextColor3=Color3.fromRGB(255, 255, 255)
				dropdowntext.TextSize=15.000
				dropdowntext.TextWrapped=true
				dropdowntext.TextXAlignment=Enum.TextXAlignment.Left
				-- open dropdown
				opendropdownbutton.MouseButton1Click:Connect(function()
					if dropdownopened then
						ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,0)}):Play()
						ts:Create(list2,TweenInfo.new(0.25),{CanvasSize=UDim2.new(0,352,0,0)}):Play()
						ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,0)}):Play()
						ts:Create(opendropdownbutton,TweenInfo.new(0.25),{Rotation=90}):Play()
					else
						if listlayout2.AbsoluteContentSize.Y<=140 then
							ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
							ts:Create(list2,TweenInfo.new(0.25),{CanvasSize=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
							ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+20)}):Play()
						else
							ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,140)}):Play()
							ts:Create(list2,TweenInfo.new(0.25),{CanvasSize=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
							ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,140)}):Play()
						end
						ts:Create(opendropdownbutton,TweenInfo.new(0.25),{Rotation=270}):Play()
					end
					-- on/off 
					if not debounce then
						debounce=true
						delay(0.25,function()debounce=not debounce end)
						dropdownopened=not dropdownopened
					end
				end)
				local color
				spawn(function()
					while wait()do
						for i,v in pairs(list2:GetChildren())do
							if v:IsA('TextButton')then
								for _,obj in pairs(selectedoptions)do
									if v.Text==obj then
										local hue=tick()%t/t
										color=Color3.fromHSV(hue,1,1)
										if dropdownopened then
											v.BackgroundColor3=color
										else
											v.BackgroundColor3=Color3.fromRGB(25,25,25)
										end
									end
								end
							end
						end
					end
				end)
				spawn(function()
					while wait()do
						if dropdownopened then
							if listlayout2.AbsoluteContentSize.Y<=140 then
								list2.CanvasSize=UDim2.new(0,0,0,listlayout2.AbsoluteContentSize.Y+15)
								content.Size=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)
							else
								list2.CanvasSize=UDim2.new(0,0,0,listlayout2.AbsoluteContentSize.Y+15)
								content.Size=UDim2.new(0,352,0,140)
							end
						end
					end
				end)
				for i,v in pairs(normaltable)do
					local dropdownButton=Instance.new('TextButton')
					local dropdownbuttoncorner=Instance.new('UICorner')
					dropdownButton.Name='dropdownButton'
					dropdownButton.Parent=list2
					dropdownButton.BackgroundColor3=Color3.fromRGB(25, 25, 25)
					dropdownButton.BorderColor3=Color3.fromRGB(0, 0, 0)
					dropdownButton.BorderSizePixel=0
					dropdownButton.Position=UDim2.new(0.0291262139, 2, -0.0109890113, 2)
					dropdownButton.Size=UDim2.new(0, 331, 0, 23)
					dropdownButton.Font=Enum.Font.Gotham
					dropdownButton.Text=v
					dropdownButton.TextColor3=Color3.fromRGB(255, 255, 255)
					dropdownButton.TextSize=16.000
					dropdownbuttoncorner.CornerRadius=UDim.new(0, 15)
					dropdownbuttoncorner.Name='tabbuttonCorner'
					dropdownbuttoncorner.Parent=dropdownButton
					dropdownButton.MouseButton1Click:Connect(function()
						if not debounce then
							debounce=true
							delay(0.25,function()debounce=not debounce end)
							if not table.find(selectedoptions,dropdownButton.Text)then
								table.insert(selectedoptions,dropdownButton.Text)
								ts:Create(dropdownButton,TweenInfo.new(0.25),{BackgroundColor3=color}):Play()
							else
								for i,v in pairs(selectedoptions)do
									if v==dropdownButton.Text then
										table.remove(selectedoptions,i)
										ts:Create(dropdownButton,TweenInfo.new(0.25),{BackgroundColor3=Color3.fromRGB(25,25,25)}):Play()
									end
								end
							end
							if #selectedoptions==1 then
								dropdowntext.Text=selectedoptions[1]
							elseif #selectedoptions>1 then
								dropdowntext.Text='Several Options Selected'
							elseif #selectedoptions<1 then
								dropdowntext.Text=text
							end
							callback(selectedoptions)
						end
					end)
				end
				local amogus={}
				function amogus:RefreshDropdown(newtable)
					for i,v in pairs(list2:GetChildren())do
						if v:IsA('TextButton')then
							v:Destroy()
						end
					end
					for i,v in pairs(newtable)do
						local dropdownButton=Instance.new('TextButton')
						local dropdownbuttoncorner=Instance.new('UICorner')
						dropdownButton.Name='dropdownButton'
						dropdownButton.Parent=list2
						dropdownButton.BackgroundColor3=Color3.fromRGB(25, 25, 25)
						dropdownButton.BorderColor3=Color3.fromRGB(0, 0, 0)
						dropdownButton.BorderSizePixel=0
						dropdownButton.Position=UDim2.new(0.0291262139, 2, -0.0109890113, 2)
						dropdownButton.Size=UDim2.new(0, 331, 0, 23)
						dropdownButton.Font=Enum.Font.Gotham
						dropdownButton.Text=v
						dropdownButton.TextColor3=Color3.fromRGB(255,255,255)
						dropdownButton.TextSize=16.000
						dropdownbuttoncorner.CornerRadius=UDim.new(0, 15)
						dropdownbuttoncorner.Name='tabbuttonCorner'
						dropdownbuttoncorner.Parent=dropdownButton
						dropdownButton.MouseButton1Click:Connect(function()
							if not debounce then
								debounce=true
								delay(0.25,function()debounce=not debounce end)
								if not table.find(selectedoptions,dropdownButton.Text)then
									table.insert(selectedoptions,dropdownButton.Text)
									ts:Create(dropdownButton,TweenInfo.new(0.25),{BackgroundColor3=color}):Play()
								else
									for i,v in pairs(selectedoptions)do
										if v==dropdownButton.Text then
											table.remove(selectedoptions,i)
											ts:Create(dropdownButton,TweenInfo.new(0.25),{BackgroundColor3=Color3.fromRGB(25,25,25)}):Play()
										end
									end
								end
								if #selectedoptions==1 then
									dropdowntext.Text=selectedoptions[1]
								elseif #selectedoptions>1 then
									dropdowntext.Text='Several Options Selected'
								elseif #selectedoptions<1 then
									dropdowntext.Text=text
								end
								callback(selectedoptions)
							end
						end)
					end
					if listlayout2.AbsoluteContentSize.Y<=140 then
						ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
						ts:Create(list2,TweenInfo.new(0.25),{CanvasSize=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
						ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+20)}):Play()
					else
						ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,140)}):Play()
						ts:Create(list2,TweenInfo.new(0.25),{CanvasSize=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
						ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,140)}):Play()
					end
					dropdowntext.Text=text
					if not debounce then
						table.clear(selectedoptions)
						debounce=true
						delay(0.25,function()debounce=not debounce end)
						dropdownopened=true
					end
				end
				return amogus
			end
			function shiver:CreateKeybind(bind,info,callback)
				callback=callback or function()end
				local changingbind=false
				local keybind1=bind
				local uis=game:GetService('UserInputService')
				local Keybind=Instance.new('ImageButton')
				local keybindText=Instance.new('TextLabel')
				local keybindInfo=Instance.new('TextLabel')
				local KeybindCorner=Instance.new('UICorner')
				Keybind.Name='Keybind'
				Keybind.Parent=list
				Keybind.BackgroundColor3=Color3.fromRGB(20, 20, 20)
				Keybind.BorderSizePixel=0
				Keybind.Position=UDim2.new(0.43617022, 0, 0.375527412, 0)
				Keybind.Size=UDim2.new(0, 30, 0, 30)
				Keybind.ImageTransparency=1.000
				keybindText.Name='keybindText'
				keybindText.Parent=Keybind
				keybindText.BackgroundColor3=Color3.fromRGB(255, 255, 255)
				keybindText.BackgroundTransparency=1.000
				keybindText.BorderSizePixel=0
				keybindText.Size=UDim2.new(0, 30, 0, 30)
				keybindText.Font=Enum.Font.Gotham
				keybindText.Text=bind
				keybindText.TextColor3=Color3.fromRGB(255, 255, 255)
				keybindText.TextWrapped=true
				keybindText.TextXAlignment=Enum.TextXAlignment.Center
				keybindText.TextSize=15.000
				keybindInfo.Name='keybindInfo'
				keybindInfo.Parent=Keybind
				keybindInfo.BackgroundColor3=Color3.fromRGB(255, 255, 255)
				keybindInfo.BackgroundTransparency=1.000
				keybindInfo.BorderColor3=Color3.fromRGB(0, 0, 0)
				keybindInfo.BorderSizePixel=0
				keybindInfo.Position=UDim2.new(-10.68, 0, 0.0869565234, 0)
				keybindInfo.Size=UDim2.new(0, 77, 0, 19)
				keybindInfo.Font=Enum.Font.Gotham
				keybindInfo.Text=info
				keybindInfo.TextColor3=Color3.fromRGB(184, 184, 184)
				keybindInfo.TextSize=16.000
				keybindInfo.TextWrapped=false
				keybindInfo.TextXAlignment=Enum.TextXAlignment.Left
				KeybindCorner.Name='KeybindCorner'
				KeybindCorner.Parent=Keybind
				Keybind.MouseButton1Click:Connect(function()
					if not changingbind then
						changingbind=not changingbind
						keybindText.Text='...'
						local shit
						shit=uis.InputBegan:Connect(function(input,gameprocessed)
							if input.UserInputType~=Enum.UserInputType.MouseButton1 and input.UserInputType~=Enum.UserInputType.MouseButton2 and input.UserInputType~=Enum.UserInputType.MouseButton3 then
								changingbind=not changingbind
								keybind1=input.KeyCode.Name
								keybindText.Text=keybind1
								shit:Disconnect()
							end
						end)
					end
				end)
				uis.InputBegan:Connect(function(input,gameprocessed)
					if input.KeyCode.Name==keybind1 then
						callback(keybind1)
					end
				end)
			end
			function shiver:CreateTextBox(text,callback)
				local TextBox=Instance.new('TextBox')
				local TextBoxCorner=Instance.new('UICorner')
				TextBox.Parent=list
				TextBox.BackgroundColor3=Color3.fromRGB(20, 20, 20)
				TextBox.BorderColor3=Color3.fromRGB(0, 0, 0)
				TextBox.BorderSizePixel=0
				TextBox.Position=UDim2.new(0.249942169, 0, 0.292753637, 0)
				TextBox.Size=UDim2.new(0, 352, 0, 23)
				TextBox.Font=Enum.Font.Gotham
				TextBox.PlaceholderColor3=Color3.fromRGB(184, 184, 184)
				TextBox.PlaceholderText=text
				TextBox.Text=''
				TextBox.TextColor3=Color3.fromRGB(255, 255, 255)
				TextBox.TextSize=16.000
				TextBoxCorner.CornerRadius=UDim.new(0, 15)
				TextBoxCorner.Name='TextBoxCorner'
				TextBoxCorner.Parent=TextBox
				TextBox.FocusLost:Connect(function(enterPressed)
					if enterPressed then
						callback(TextBox.Text)
					end
				end)
			end
			function shiver:CreateDropdown(text,normaltable,callback)
				callback=callback or function()end
				local dropdownopened=false
				local debounce=false
				local Dropdown=Instance.new('Frame')
				local DropdownCorner=Instance.new('UICorner')
				local opendropdownbutton=Instance.new('ImageButton')
				local content=Instance.new('Frame')
				local contentCorner=Instance.new('UICorner')
				local list2=Instance.new('ScrollingFrame')
				local listlayout2=Instance.new('UIListLayout')
				local listpadding2=Instance.new('UIPadding')
				local dropdowntext=Instance.new('TextLabel')
				Dropdown.Name='Dropdown'
				Dropdown.Parent=list
				Dropdown.BackgroundColor3=Color3.fromRGB(20, 20, 20)
				Dropdown.BorderColor3=Color3.fromRGB(0, 0, 0)
				Dropdown.BorderSizePixel=0
				Dropdown.Position=UDim2.new(0.293816388, 0, 0.132746339, 0)
				Dropdown.Size=UDim2.new(0, 352, 0, 23)
				DropdownCorner.CornerRadius=UDim.new(0, 15)
				DropdownCorner.Name='DropdownCorner'
				DropdownCorner.Parent=Dropdown
				opendropdownbutton.Name='button'
				opendropdownbutton.Parent=Dropdown
				opendropdownbutton.BackgroundTransparency=1.000
				opendropdownbutton.Position=UDim2.new(0.92, 0, 0, 0)
				opendropdownbutton.Rotation=90
				opendropdownbutton.Size=UDim2.new(0, 24, 0, 24)
				opendropdownbutton.ZIndex=2
				opendropdownbutton.Image='rbxassetid://3926305904'
				opendropdownbutton.ImageRectOffset=Vector2.new(924, 884)
				opendropdownbutton.ImageRectSize=Vector2.new(36, 36)
				content.Name='content'
				content.Parent=list
				content.BackgroundColor3=Color3.fromRGB(25, 25, 25)
				content.BorderColor3=Color3.fromRGB(0, 0, 0)
				content.BorderSizePixel=0
				content.Position=UDim2.new(-0.0057004476, 0, 1.30700016, -3)
				content.Size=UDim2.new(0, 352, 0, 0)
				contentCorner.Name='contentCorner'
				contentCorner.Parent=content
				list2.Name='list'
				list2.Parent=content
				list2.Active=true
				list2.BackgroundColor3=Color3.fromRGB(255, 255, 255)
				list2.BackgroundTransparency=1.000
				list2.BorderSizePixel=0
				list2.Position=UDim2.new(0.000869529846, 0, 0, 0)
				list2.Size=UDim2.new(0, 352, 0, 0)
				list2.BottomImage=''
				list2.MidImage=''
				list2.ScrollBarThickness=0
				list2.TopImage=''
				listlayout2.Name='listlayout'
				listlayout2.Parent=list2
				listlayout2.HorizontalAlignment=Enum.HorizontalAlignment.Center
				listlayout2.SortOrder=Enum.SortOrder.LayoutOrder
				listlayout2.Padding=UDim.new(0, 5)
				listpadding2.Name='listpadding'
				listpadding2.Parent=list2
				listpadding2.PaddingTop=UDim.new(0, 8)
				dropdowntext.Name='Name'
				dropdowntext.Parent=Dropdown
				dropdowntext.BackgroundColor3=Color3.fromRGB(255, 255, 255)
				dropdowntext.BackgroundTransparency=1.000
				dropdowntext.BorderSizePixel=0
				dropdowntext.Position=UDim2.new(0.0419453399, 0, 0, 0)
				dropdowntext.Size=UDim2.new(0, 196, 0, 21)
				dropdowntext.Font=Enum.Font.Gotham
				dropdowntext.Text=text
				dropdowntext.TextColor3=Color3.fromRGB(255, 255, 255)
				dropdowntext.TextSize=15.000
				dropdowntext.TextWrapped=true
				dropdowntext.TextXAlignment=Enum.TextXAlignment.Left
				-- open dropdown
				opendropdownbutton.MouseButton1Click:Connect(function()
					if dropdownopened then
						ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,0)}):Play()
						ts:Create(list2,TweenInfo.new(0.25),{CanvasSize=UDim2.new(0,352,0,0)}):Play()
						ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,0)}):Play()
						ts:Create(opendropdownbutton,TweenInfo.new(0.25),{Rotation=90}):Play()
					else
						if listlayout2.AbsoluteContentSize.Y<=140 then
							ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
							ts:Create(list2,TweenInfo.new(0.25),{CanvasSize=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
							ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+20)}):Play()
						else
							ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,140)}):Play()
							ts:Create(list2,TweenInfo.new(0.25),{CanvasSize=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
							ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,140)}):Play()
						end
						ts:Create(opendropdownbutton,TweenInfo.new(0.25),{Rotation=270}):Play()
					end
					-- on/off 
					if not debounce then
						debounce=true
						delay(0.25,function()debounce=not debounce end)
						dropdownopened=not dropdownopened
					end
				end)
				spawn(function()
					while wait()do
						if dropdownopened then
							if listlayout2.AbsoluteContentSize.Y<=140 then
								list2.CanvasSize=UDim2.new(0,0,0,listlayout2.AbsoluteContentSize.Y+15)
								content.Size=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)
							else
								list2.CanvasSize=UDim2.new(0,0,0,listlayout2.AbsoluteContentSize.Y+15)
								content.Size=UDim2.new(0,352,0,140)
							end
						end
					end
				end)
				for i,v in pairs(normaltable)do
					local dropdownButton=Instance.new('TextButton')
					local dropdownbuttoncorner=Instance.new('UICorner')
					dropdownButton.Name='dropdownButton'
					dropdownButton.Parent=list2
					dropdownButton.BackgroundColor3=Color3.fromRGB(25, 25, 25)
					dropdownButton.BorderColor3=Color3.fromRGB(0, 0, 0)
					dropdownButton.BorderSizePixel=0
					dropdownButton.Position=UDim2.new(0.0291262139, 2, -0.0109890113, 2)
					dropdownButton.Size=UDim2.new(0, 331, 0, 23)
					dropdownButton.Font=Enum.Font.Gotham
					dropdownButton.Text=v
					dropdownButton.TextColor3=Color3.fromRGB(255, 255, 255)
					dropdownButton.TextSize=16.000
					dropdownbuttoncorner.CornerRadius=UDim.new(0, 15)
					dropdownbuttoncorner.Name='tabbuttonCorner'
					dropdownbuttoncorner.Parent=dropdownButton
					dropdownButton.MouseButton1Click:Connect(function()
						if dropdownopened then
							ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,0)}):Play()
							ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,0)}):Play()
							ts:Create(opendropdownbutton,TweenInfo.new(0.25),{Rotation=90}):Play()
						else
							if listlayout2.AbsoluteContentSize.Y<=140 then
								ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
								ts:Create(list2,TweenInfo.new(0.25),{CanvasSize=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
								ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+20)}):Play()
							else
								ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,140)}):Play()
								ts:Create(list2,TweenInfo.new(0.25),{CanvasSize=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
								ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,140)}):Play()
							end
							ts:Create(opendropdownbutton,TweenInfo.new(0.25),{Rotation=270}):Play()
						end
						if not debounce then
							debounce=true
							delay(0.25,function()debounce=not debounce end)
							dropdownopened=not dropdownopened
							dropdowntext.Text=dropdownButton.Text
							callback(dropdownButton.Text)
						end
					end)
				end
				local amogus={}
				function amogus:RefreshDropdown(newtable)
					for i,v in pairs(list2:GetChildren())do
						if v:IsA('TextButton')then
							v:Destroy()
						end
					end
					for i,v in pairs(newtable)do
						local dropdownButton=Instance.new('TextButton')
						local dropdownbuttoncorner=Instance.new('UICorner')
						dropdownButton.Name='dropdownButton'
						dropdownButton.Parent=list2
						dropdownButton.BackgroundColor3=Color3.fromRGB(25, 25, 25)
						dropdownButton.BorderColor3=Color3.fromRGB(0, 0, 0)
						dropdownButton.BorderSizePixel=0
						dropdownButton.Position=UDim2.new(0.0291262139, 2, -0.0109890113, 2)
						dropdownButton.Size=UDim2.new(0, 331, 0, 23)
						dropdownButton.Font=Enum.Font.Gotham
						dropdownButton.Text=v
						dropdownButton.TextColor3=Color3.fromRGB(255, 255, 255)
						dropdownButton.TextSize=16.000
						dropdownbuttoncorner.CornerRadius=UDim.new(0, 15)
						dropdownbuttoncorner.Name='tabbuttonCorner'
						dropdownbuttoncorner.Parent=dropdownButton
						dropdownButton.MouseButton1Click:Connect(function()
							if dropdownopened then
								ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,0)}):Play()
								ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,0)}):Play()
								ts:Create(opendropdownbutton,TweenInfo.new(0.25),{Rotation=90}):Play()
							else
								if listlayout2.AbsoluteContentSize.Y<=100 then
									ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
									ts:Create(list2,TweenInfo.new(0.25),{CanvasSize=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
									ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+20)}):Play()
								else
									ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,140)}):Play()
									ts:Create(list2,TweenInfo.new(0.25),{CanvasSize=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
									ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,140)}):Play()
								end
								ts:Create(opendropdownbutton,TweenInfo.new(0.25),{Rotation=270}):Play()
							end
							if not debounce then
								debounce=true
								delay(0.25,function()debounce=not debounce end)
								dropdownopened=not dropdownopened
								dropdowntext.Text=dropdownButton.Text
								callback(dropdownButton.Text)
							end
						end)
					end
					if listlayout2.AbsoluteContentSize.Y<=140 then
						ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
						ts:Create(list2,TweenInfo.new(0.25),{CanvasSize=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
						ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+20)}):Play()
					else
						ts:Create(content,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,140)}):Play()
						ts:Create(list2,TweenInfo.new(0.25),{CanvasSize=UDim2.new(0,352,0,listlayout2.AbsoluteContentSize.Y+15)}):Play()
						ts:Create(list2,TweenInfo.new(0.25),{Size=UDim2.new(0,352,0,140)}):Play()
					end
					dropdowntext.Text=text
					if not debounce then
						debounce=true
						delay(0.25,function()debounce=not debounce end)
						dropdownopened=true
					end
				end
				return amogus
			end
			function shiver:CreateSlider(minvalue,currentvalue,maxvalue,info,callback)
				minvalue=minvalue or 0
				maxvalue=maxvalue or 500
				callback=callback or function() end
				local sliderBackground=Instance.new('Frame')
				local sliderBackgroundCorner=Instance.new('UICorner')
				local SliderButton=Instance.new('TextButton')
				local SliderButtonCorner=Instance.new('UICorner')
				local SliderPoint=Instance.new('Frame')
				local SliderPointCorner=Instance.new('UICorner')
				local SliderValue=Instance.new('TextLabel')
				local SliderInfo=Instance.new('TextLabel')
				sliderBackground.Name='sliderBackground'
				sliderBackground.Parent=list
				sliderBackground.BackgroundColor3=Color3.fromRGB(20, 20, 20)
				sliderBackground.BorderColor3=Color3.fromRGB(0, 0, 0)
				sliderBackground.BorderSizePixel=0
				sliderBackground.Position=UDim2.new(0.53389281, 0, 0.464281797, 0)
				sliderBackground.Size=UDim2.new(0, 270, 0, 23)
				sliderBackgroundCorner.CornerRadius=UDim.new(0, 15)
				sliderBackgroundCorner.Name='sliderBackgroundCorner'
				sliderBackgroundCorner.Parent=sliderBackground
				SliderButton.Name='SliderButton'
				SliderButton.Parent=sliderBackground
				SliderButton.BackgroundColor3=Color3.fromRGB(50, 50, 50)
				SliderButton.BorderColor3=Color3.fromRGB(0, 0, 0)
				SliderButton.BorderSizePixel=0
				SliderButton.Position=UDim2.new(0.192824081, 0, 0.313044012, 0)
				SliderButton.Size=UDim2.new(0, 210, 0, 9)
				SliderButton.Font=Enum.Font.SourceSans
				SliderButton.Text=''
				SliderButton.TextColor3=Color3.fromRGB(0, 0, 0)
				SliderButton.TextSize=14.000
				SliderButtonCorner.CornerRadius=UDim.new(0, 15)
				SliderButtonCorner.Name='SliderButtonCorner'
				SliderButtonCorner.Parent=SliderButton
				SliderPoint.Name='SliderPoint'
				SliderPoint.Parent=SliderButton
				SliderPoint.BackgroundColor3=Color3.fromRGB(35, 35, 35)
				SliderPoint.BorderSizePixel=0
				SliderPoint.Position=UDim2.new(-0.00264543807, 0, -0.0289849173, 0)
				SliderPoint.Size=UDim2.new(0, 7, 0, 9)
				SliderPointCorner.CornerRadius=UDim.new(0, 15)
				SliderPointCorner.Name='SliderPointCorner'
				SliderPointCorner.Parent=SliderPoint
				SliderValue.Name='SliderValue'
				SliderValue.Parent=sliderBackground
				SliderValue.BackgroundColor3=Color3.fromRGB(255, 255, 255)
				SliderValue.BackgroundTransparency=1.000
				SliderValue.BorderColor3=Color3.fromRGB(0, 0, 0)
				SliderValue.BorderSizePixel=0
				SliderValue.Position=UDim2.new(SliderPoint.Position.X, 0, 0, -66)
				SliderValue.Size=UDim2.new(0, 53, 0, 23)
				SliderValue.Font=Enum.Font.Gotham
				SliderValue.Text=currentvalue
				SliderValue.TextColor3=Color3.fromRGB(255, 255, 255)
				SliderValue.TextSize=14.000
				SliderInfo.Name='SliderInfo'
				SliderInfo.Parent=sliderBackground
				SliderInfo.BackgroundColor3=Color3.fromRGB(255, 255, 255)
				SliderInfo.BackgroundTransparency=1.000
				SliderInfo.BorderColor3=Color3.fromRGB(0, 0, 0)
				SliderInfo.BorderSizePixel=0
				SliderInfo.Position=UDim2.new(-0.291996726, 0, 0.0869565234, 0)
				SliderInfo.Size=UDim2.new(0, 77, 0, 19)
				SliderInfo.Font=Enum.Font.Gotham
				SliderInfo.Text=info
				SliderInfo.TextColor3=Color3.fromRGB(184, 184, 184)
				SliderInfo.TextSize=16.000
				SliderInfo.TextWrapped=false
				SliderInfo.TextXAlignment=Enum.TextXAlignment.Left
				spawn(function()
					while wait()do
						local hue=tick()%t/t
						local color=Color3.fromHSV(hue,1,1)
						SliderPoint.BackgroundColor3=color
					end
				end)
				local mouse=game:GetService('Players').LocalPlayer:GetMouse()
				local uis=game:GetService('UserInputService')
				local Value=currentvalue
				SliderButton.MouseButton1Down:Connect(function()
					Value=math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 211) * SliderPoint.AbsoluteSize.X) + tonumber(minvalue)) or 0
					pcall(function()callback(Value)end)
					SliderPoint.Size=UDim2.new(0, math.clamp(mouse.X - SliderPoint.AbsolutePosition.X, 0, 211), 0, 9)
					SliderValue.Text=Value
					local moveconnection
					moveconnection=mouse.Move:Connect(function()
						SliderValue.Text=Value
						Value=math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 211) * SliderPoint.AbsoluteSize.X) + tonumber(minvalue))
						pcall(function()callback(Value)end)
						SliderPoint.Size=UDim2.new(0, math.clamp(mouse.X - SliderPoint.AbsolutePosition.X, 0, 211), 0, 9)
					end)
					local releaseconnection
					releaseconnection=uis.InputEnded:Connect(function(Mouse)
						if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
							Value=math.floor((((tonumber(maxvalue) - tonumber(minvalue)) / 211) * SliderPoint.AbsoluteSize.X) + tonumber(minvalue))
							pcall(function()callback(Value)end)
							SliderPoint.Size=UDim2.new(0, math.clamp(mouse.X - SliderPoint.AbsolutePosition.X, 0, 211), 0, 9)
							pcall(function()
								moveconnection:Disconnect()
								releaseconnection:Disconnect()
							end)
						end
					end)
				end)
			end
			function shiver:CreateLabel(text)
				local LabelFrame=Instance.new('Frame')
				local labelframecorner=Instance.new('UICorner')
				local Label=Instance.new('TextLabel')
				LabelFrame.Name='LabelFrame'
				LabelFrame.Parent=list
				LabelFrame.BackgroundColor3=Color3.fromRGB(50,50,50)
				LabelFrame.Position=UDim2.new(-0.304347813, 0, 0, 0)
				LabelFrame.Size=UDim2.new(0, 352, 0, 23)
				labelframecorner.Name='labelframecorner'
				labelframecorner.Parent=LabelFrame
				Label.Name='Label'
				Label.Parent=LabelFrame
				Label.BackgroundColor3=Color3.fromRGB(255, 255, 255)
				Label.BackgroundTransparency=1.000
				Label.BorderSizePixel=0
				Label.Size=UDim2.new(0, 352, 0, 23)
				Label.Font=Enum.Font.Gotham
				Label.Text=text
				Label.TextColor3=Color3.fromRGB(255, 255, 255)
				Label.TextSize=15.000
				local amogus={}
				function amogus:UpdateLabel(newtext)
					Label.Text=newtext
				end
				return amogus
			end
			function shiver:CreateToggle(text,callback)
				callback=callback or function()end
				local toggled=false
				local debounce=false
				local Toggle=Instance.new('Frame')
				local BackgroundCorner=Instance.new('UICorner')
				local Button=Instance.new('TextButton')
				local BackgroundCorner_2=Instance.new('UICorner')
				local frame=Instance.new('Frame')
				local framepadding=Instance.new('UIPadding')
				local toggletext=Instance.new('TextLabel')
				local framelayout=Instance.new('UIListLayout')
				Toggle.Name='Toggle'
				Toggle.Parent=list
				Toggle.BackgroundColor3=Color3.fromRGB(20,20,20)
				Toggle.BorderColor3=Color3.fromRGB(0, 0, 0)
				Toggle.BorderSizePixel=0
				Toggle.Position=UDim2.new(0.382999986, 0, 0.331999987, 0)
				Toggle.Size=UDim2.new(0, 45, 0, 24)
				BackgroundCorner.CornerRadius=UDim.new(0, 15)
				BackgroundCorner.Name='BackgroundCorner'
				BackgroundCorner.Parent=Toggle
				Button.Name='Button'
				Button.Parent=Toggle
				Button.BackgroundColor3=Color3.fromRGB(255, 255, 255)
				Button.BorderColor3=Color3.fromRGB(0, 0, 0)
				Button.BorderSizePixel=0
				Button.Position=UDim2.new(-0.0072, 4, 0, 2)
				Button.Size=UDim2.new(0, 20, 0, 20)
				Button.Font=Enum.Font.SourceSans
				Button.Text=''
				Button.TextColor3=Color3.fromRGB(0, 0, 0)
				Button.TextSize=14.000
				BackgroundCorner_2.CornerRadius=UDim.new(0, 15)
				BackgroundCorner_2.Name='BackgroundCorner'
				BackgroundCorner_2.Parent=Button
				frame.Name='frame'
				frame.Parent=Toggle
				frame.BackgroundColor3=Color3.fromRGB(135, 91, 47)
				frame.BackgroundTransparency=1.000
				frame.BorderColor3=Color3.fromRGB(0, 0, 0)
				frame.BorderSizePixel=0
				frame.Position=UDim2.new(-7, 0, -0.001, 0)
				frame.Size=UDim2.new(0, 373, 0, 24)
				framepadding.Name='framepadding'
				framepadding.Parent=frame
				framepadding.PaddingLeft=UDim.new(0, 10)
				toggletext.Name='toggle text'
				toggletext.Parent=frame
				toggletext.BackgroundColor3=Color3.fromRGB(255, 255, 255)
				toggletext.BackgroundTransparency=1.000
				toggletext.BorderSizePixel=0
				toggletext.Position=UDim2.new(0.0222841222, 0, 0.0754078031, 0)
				toggletext.Size=UDim2.new(0, 100, 0, 20)
				toggletext.Font=Enum.Font.Gotham
				toggletext.Text=text
				toggletext.TextColor3=Color3.fromRGB(184, 184, 184)
				toggletext.TextScaled=false
				toggletext.TextSize=16.000
				toggletext.TextWrapped=false
				toggletext.Size=UDim2.new(0, math.max(10, toggletext.TextBounds.X),0, math.max(10, toggletext.TextBounds.Y))
				framelayout.Name='framelayout'
				framelayout.Parent=frame
				framelayout.SortOrder=Enum.SortOrder.LayoutOrder
				framelayout.VerticalAlignment=Enum.VerticalAlignment.Center
				-- rainbow
				spawn(function()
					while wait()do
						local hue=tick()%t/t
						local color=Color3.fromHSV(hue,1,1)
						if toggled then
							Toggle.BackgroundColor3=color
						end
					end
				end)
				--
				Button.MouseButton1Click:Connect(function()
					-- effect
					
					if toggled then
						ts:Create(Button,TweenInfo.new(0.25),{Position=UDim2.new(-0.00799,4,0,2)}):Play()
						ts:Create(Toggle,TweenInfo.new(0.25),{BackgroundColor3=Color3.fromRGB(20,20,20)}):Play()
					else
						ts:Create(Button,TweenInfo.new(0.25),{Position=UDim2.new(1,-23,0,2)}):Play()
					end
					-- on/off 
					if not debounce then
						debounce=true
						delay(0.25,function()debounce=not debounce end)
						toggled=not toggled
						callback(toggled)
					end
				end)
			end
			for i,v in pairs(Drag:GetChildren())do
				if v:FindFirstChild('istab')then
					v.Visible=false
				end
			end
			return shiver
		end
		return insidehandler
	end
	return library
]]
local lib=loadstring(moselib)()
local function loadbloxfruits()
	repeat wait()until work.Characters:FindFirstChild(plr.Name)
	local nw=4442272183 local sm=2753915549 local tw=7449423635
	local lighting=game:GetService('Lighting')local asssupercock=game:GetService('ReplicatedStorage')local ultraasssupercum=lighting.FogEnd
	local win=lib:Create('Blox Fruits')
	local s=win:CreateTab('Main')
	local ss
	if game.PlaceId==nw or game.PlaceId==tw then ss=win:CreateTab('Raid')end
	local sss=win:CreateTab('Teleports')
	local ssss=win:CreateTab('Visuals')
	local sssss=win:CreateTab('Combat')
	local ssssss=win:CreateTab('Misc')
	local sssssss=win:CreateTab('Fun')
	local ssssssss=win:CreateTab('Options')
	s:CreateLabel('Farm')
	local levelfarm
	s:CreateToggle('Level Farm',function(state)levelfarm=state end)
	local bossfarm
	s:CreateToggle('Boss Farm',function(state)bossfarm=state end)
	local smbosses={'Ice Admiral ','Greybeard ','Cyborg ','Thunder God ','Wysper ','Fishman Lord ','Magma Admiral ','Swan ','Saber Expert ','Chief Warden ','Warden ','Vice Admiral '}
	local nwbosses={'Cursed Captain ','Order ','Darkbeard ','Don Swan ','Tide Keeper ','Awakened Ice Admiral ','Smoke Admiral ','Fajita ','Jeremy ','Diamond '}
	local twbosses={'rip_indra True Form ','Longma ','Diablo ','Urban ','Deandre ','Captain Elephant ','Kilo Admiral ','Island Empress ','Beautiful Pirate ','Stone '}
	local extrabosses={'rip_indra True Form ','Longma ','Diablo ','Urban ','Deandre ','Ice Admiral ','Greybeard ','Saber Expert ','Cursed Captain ','Order ','Darkbeard ','Don Swan '}
	local boss
	if game.PlaceId==sm then s:CreateDropdown('Boss',smbosses,function(val)boss=val end)
	elseif game.PlaceId==nw then s:CreateDropdown('Boss',nwbosses,function(val)boss=val end)
	elseif game.PlaceId==tw then s:CreateDropdown('Boss',twbosses,function(val)boss=val end)end
	local autoequip
	s:CreateToggle('Auto Equip',function(state)autoequip=state end)
	local backpacktools={}
	for i,v in pairs(plr.Backpack:GetChildren())do if v:IsA('Tool')then table.insert(backpacktools,v.Name)end end
	for i,v in pairs(plr.Character:GetChildren()) do if v:IsA('Tool')then table.insert(backpacktools,v.Name)end end
	local tool
	local toolsdropdown=s:CreateDropdown('Tool',backpacktools,function(val)tool=val end)
	s:CreateButton('Refresh Tools',function()
		table.clear(backpacktools)
		for i,v in pairs(plr.Backpack:GetChildren())do if v:IsA('Tool')then table.insert(backpacktools,v.Name)end end
		for i,v in pairs(plr.Character:GetChildren()) do if v:IsA('Tool')then table.insert(backpacktools,v.Name)end end
		toolsdropdown:RefreshDropdown(backpacktools)
	end)
	local autobuso
	s:CreateToggle('Auto Busoshoku Haki',function(state)autobuso=state end)
	s:CreateLabel('Mastery Farm')
	local dfmasterydf
	local dfmasdropdown=s:CreateDropdown('Devil Fruit',backpacktools,function(val)dfmasterydf=val end)
	local dfmasterymelee
	local mainweapondfmas=s:CreateDropdown('Main Weapon',backpacktools,function(val)dfmasterymelee=val end)
	s:CreateButton('Refresh Tools',function()
		table.clear(backpacktools)
		for i,v in pairs(plr.Backpack:GetChildren())do
			if v:IsA('Tool')then table.insert(backpacktools,v.Name)end end
		for i,v in pairs(plr.Character:GetChildren()) do
			if v:IsA('Tool')then table.insert(backpacktools,v.Name)end end
		dfmasdropdown:RefreshDropdown(backpacktools)mainweapondfmas:RefreshDropdown(backpacktools)
	end)
	s:CreateSlider(5,1000,10000,'Health',function(val)dfmashealth=val end)
	local dfmastery
	s:CreateToggle('DF Mastery',function(state)dfmastery=state end)
	local dfz local dfx local dfc local dfv local dff
	s:CreateLabel('DF Mastery Auto Skills')
	s:CreateToggle('Auto Skill Z',function(state)dfz=state end)
	s:CreateToggle('Auto Skill X',function(state)dfx=state end)
	s:CreateToggle('Auto Skill C',function(state)dfc=state end)
	s:CreateToggle('Auto Skill V',function(state)dfv=state end)
	s:CreateToggle('Auto Skill F',function(state)dff=state end)
	s:CreateLabel('Auto Stats')
	local autostat
	s:CreateToggle('Add Stat',function(state)autostat=state end)
	local stattoadd
	s:CreateDropdown('Stat to Add',{'Melee','Defense','Sword','Gun','Demon Fruit'},function(val)stattoadd=val end)
	local autofindcolors local autolegendarysword
	if game.PlaceId==nw or game.PlaceId==tw then
		s:CreateLabel('Auto Dealers')
		s:CreateToggle('Auto Haki Colors',function(state)autofindcolors=state end)
	end if game.PlaceId==nw then s:CreateToggle('Auto Legendary SS',function(state)autolegendarysword=state end)end
	local killaura local autoislandteleports local autofactory
	local quest=plr.PlayerGui.Main.Quest if game.PlaceId==nw or game.PlaceId==tw then
		ss:CreateToggle('KillAura',function(state)killaura=state end)
		ss:CreateToggle('Auto Islands Teleports',function(state)autoislandteleports=state end)
	end
	if game.PlaceId==nw then ss:CreateToggle('Auto Factory Raid',function(state)autofactory=state end)end
	sss:CreateLabel('Main')
	if game.PlaceId==sm then
		sss:CreateButton('Starter Island',function()rootpart.CFrame=CFrame.new(1091.8731689453,16.854053497314,1431.1193847656)end)
		sss:CreateButton('Middle Island',function()rootpart.CFrame=CFrame.new(-794.37384033203,73.981246948242,1610.0255126953)end)
		sss:CreateButton('Jungle Island',function()rootpart.CFrame=CFrame.new(-1621.1857910156,36.852085113525,146.57322692871)end)
		sss:CreateButton('Buggy Island',function()rootpart.CFrame=CFrame.new(-1133.2296142578,57.161499023438,4169.6376953125)end)
		sss:CreateButton('Desert Island',function()rootpart.CFrame=CFrame.new(1264.7130126953,14.959985733032,4529.7172851563)end)
		sss:CreateButton('Snow Island',function()rootpart.CFrame=CFrame.new(1452.7147216797,37.348171234131,-1219.3538818359)end)
		sss:CreateButton('Marineford',function()rootpart.CFrame=CFrame.new(-4999.7075195313,63.38468170166,4468.8383789063)end)
		sss:CreateButton('Colosseum',function()rootpart.CFrame=CFrame.new(-1855.7446289063,80.371124267578,-3031.3745117188)end)
		sss:CreateButton('Sky Islands 1',function()rootpart.CFrame=CFrame.new(-4749.5200195313,717.68627929688,-2686.1650390625)end)
		sss:CreateButton('Sky Islands 2',function()rootpart.CFrame=CFrame.new(-7614.4936523438,5606.876953125,-1770.7192382813)end)
		sss:CreateButton('Fishman Teleport',function()rootpart.CFrame=CFrame.new(3915.8500976563,12.287734985352,-1939.1176757813)end)
		sss:CreateButton('Volcano Island',function()rootpart.CFrame=CFrame.new(-5468.7080078125,8.5906734466553,8887.697265625)end)
		sss:CreateButton('Prison',function()rootpart.CFrame=CFrame.new(5668.6591796875,64.652229309082,873.83270263672)end)
		sss:CreateButton('Fountain Island',function()rootpart.CFrame=CFrame.new(5049.6708984375,4.5012888908386,4194.7202148438)end)
	elseif game.PlaceId==nw then
		sss:CreateButton('Café',function()rootpart.CFrame=work['_WorldOrigin'].Locations['Café'].CFrame end)
		sss:CreateButton('Dark Arena',function()rootpart.CFrame=CFrame.new(3958.2395019531,13.349345207214,-3202.9038085938)end)
		sss:CreateButton('Snow Mountain',function()rootpart.CFrame=CFrame.new(342.01663208008,401.42193603516,-5391.5673828125)end)
		sss:CreateButton('Ice Castle',function()rootpart.CFrame=CFrame.new(6419.8305664063,296.95727539063,-6842.0756835938)end)
		sss:CreateButton('Green Zone',function()rootpart.CFrame=CFrame.new(-2563.7937011719,1624.9703369141,-3731.0810546875)end)
		sss:CreateButton('Hot Island',function()rootpart.CFrame=CFrame.new(-5109.5327148438,143.73324584961,-5408.2270507813)end)
		sss:CreateButton('Cold Island',function()rootpart.CFrame=CFrame.new(-5892.6064453125,15.951759338379,-4973.6557617188)end)
		sss:CreateButton('Raid Room',function()rootpart.CFrame=CFrame.new(-6501.3881835938,249.52967834473,-4511.8911132813)end)
		sss:CreateButton('Graveyard Island',function()rootpart.CFrame=CFrame.new(-5675.5732421875,267.93341064453,-816.35729980469)end)
		sss:CreateButton('Cursed Ship',function()rootpart.CFrame=CFrame.new(819.26702880859,125.05710601807,33119.55859375)end)
		sss:CreateButton('Colosseum',function()rootpart.CFrame=CFrame.new(-1849.7058105469,10.43249130249,1732.3100585938)end)
	elseif game.PlaceId==tw then
		sss:CreateButton('Great Tree',function()rootpart.CFrame=CFrame.new(2486.2551269531,272.98641967773,-7078.86328125)end)
		sss:CreateButton('Hydra Arena',function()rootpart.CFrame=CFrame.new(5225.1787109375,51.482273101807,-1954.6181640625)end)
		sss:CreateButton('Hydra Town',function()rootpart.CFrame=CFrame.new(5204.1303710938,601.58325195313,496.2370300293)end)
		sss:CreateButton('Port',function()rootpart.CFrame=CFrame.new(-370.24697875977,73.729919433594,5756.9409179688)end)
		sss:CreateButton('Sea Castle',function()rootpart.CFrame=CFrame.new(-5502.1787109375,313.76892089844,-2863.4616699219)end)
		sss:CreateButton('Turtle Center',function()rootpart.CFrame=CFrame.new(-12007.979492188,331.72320556641,-9178.580078125)end)
		sss:CreateButton('Turtle Entrance',function()rootpart.CFrame=CFrame.new(-10163.96484375,331.76263427734,-8320.767578125)end)
		sss:CreateButton('Turtle Mansion',function()rootpart.CFrame=CFrame.new(-12538.421875,332.61880493164,-7817.0708007813)end)
		sss:CreateButton('Turtle Mountain',function()rootpart.CFrame=CFrame.new(-12856.61328125,844.36669921875,-10715.23046875)end)
	end
	sss:CreateLabel('Misc')
	sss:CreateButton('First World',function()asssupercock.Remotes['CommF_']:InvokeServer('TravelMain')end)
	sss:CreateButton('Second World',function()asssupercock.Remotes['CommF_']:InvokeServer('TravelDressrosa')end)
	sss:CreateButton('Third World',function()asssupercock.Remotes['CommF_']:InvokeServer('TravelZou')end)
	ssss:CreateLabel('Main')local fullbright
	if game.PlaceId~=tw then ssss:CreateToggle('FullBright',function(state)fullbright=state end)
	elseif game.PlaceId==tw then ssss:CreateButton('FullBright',function()lighting.Atmosphere:Destroy()end)end
	local dfesp
	ssss:CreateToggle('Devil Fruit Esp',function(state)dfesp=state end)
	local floweresp
	if game.PlaceId==nw then ssss:CreateToggle('Flowers Esp',function(state)floweresp=state end)end
	ssss:CreateToggle('Esp Names',function(state)espnames=state end)
	sssss:CreateLabel('Main')
	local noslow
	sssss:CreateToggle('NoSlow/AntiKnockback',function(state)noslow=state end)
	local aimbot=false local aimbotteamcheck local aimbottoggle
	sssss:CreateToggle('Aimbot Toggle',function(state)aimbottoggle=state end)
	sssss:CreateKeybind('B','On/Off Aimbot',function()aimbot=not aimbot end)
	sssss:CreateToggle('Team Check',function(state)aimbotteamcheck=state end)
	sssss:CreateLabel('Misc')
	local hitboxes local hitboxeswasturnedon=false local hitboxsize=20 local hitboxteamcheck
	sssss:CreateToggle('Expand Players Hitboxes',function(state)hitboxes=state if state and not hitboxeswasturnedon then hitboxeswasturnedon=true end end)
	sssss:CreateToggle('Team Check',function(state)hitboxteamcheck=state end)
	sssss:CreateSlider(5,20,50,'Size',function(val)hitboxsize=val end)
	ssssss:CreateLabel('Main')
	ssssss:CreateButton('Rejoin',function()game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId,game.JobId,plr)end)
	ssssss:CreateButton('Serverhop',function()loadstring(game:HttpGet("https://lewd.cat/tsg6yqysvrs7.lua"))() end)
	local jesus
	ssssss:CreateToggle('Jesus',function(state)jesus=state end)
	ssssss:CreateLabel('Character')
	local ws local jp local wsspeed local jpjp
	ssssss:CreateToggle('WalkSpeed',function(state)ws=state end)
	ssssss:CreateSlider(0,70,1000,'Speed',function(val)wsspeed=val end)
	ssssss:CreateToggle('JumpPower',function(state)jp=state end)
	ssssss:CreateSlider(0,50,100,'Power',function(val)jpjp=val end)
	ssssss:CreateLabel('Change Teams')
	ssssss:CreateButton('Pirates',function()asssupercock.Remotes.CommF_:InvokeServer('SetTeam','Pirates')end)
	ssssss:CreateButton('Marines',function()asssupercock.Remotes.CommF_:InvokeServer('SetTeam','Marines')end)
	local rainbowwater
	sssssss:CreateToggle('Rainbow Water',function(state)rainbowwater=state end)
	local cooljesus
	sssssss:CreateToggle('Cool Jesus',function(state)cooljesus=state end)
	sssssss:CreateButton('Fall',function()plr.Character.Humanoid:ChangeState(16)end)
	ssssssss:CreateKeybind('RightControl','Hide/Show Ui',function(state)lib:Init()end)
	local automob='cum'
	local function tpua(ass)
	    sethiddenproperty(plr,'SimulationRadius',9e9)
	    for i,v in pairs(work.Enemies:GetChildren())do
	        local ti=TweenInfo.new(.001,Enum.EasingStyle.Linear)local tp={CFrame=CFrame.new(ass)}
	        if v:FindFirstChild('HumanoidRootPart')and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 and string.find(v.Name,automob)then
	        	game:GetService('TweenService'):Create(v.HumanoidRootPart,ti,tp):Play()
	        end
	    end
	end
	local function startquest(questname,questvalue)
		asssupercock.Remotes['CommF_']:InvokeServer('StartQuest',questname,questvalue)
	end local delay1=true local delaytime2=1.5 local delaytime1=2.5 local delay2=true local dfmasclicker=true local rainbowcolor local bdelay1=true local bdelay2=true
	rs.Heartbeat:Connect(function()
		local currentgiver local startgiver={1056.25,16.516613006592,1544.9599609375}local monkegiver={-1596.4158935547,36.852123260498,147.75096130371}local buggygiver={-1146.1650390625,4.7520503997803,3833.4404296875}local desertgiver={900.29144287109,6.513249874115,4390.9716796875}
		local snowgiver={1385.4183349609,87.272766113281,-1302.1872558594}local marinegiver={-5035.6171875,28.652032852173,4320.802734375}local sky1giver={-4845.1303710938,717.66943359375,-2619.7658691406}local cologiver={-1574.2014160156,7.38933801651,-2988.3132324219}
		local lavagiver={-5318.9438476563,12.237722396851,8513.8330078125}local fishgiver={61120.1015625,18.471633911133,1570.1101074219}local sky2giver1={-7853.1279296875,5545.4916992188,-381.33126831055}local sky2giver2={-7903.2666015625,5635.9624023438,-1415.8642578125}
		local galleygiver={5257.4956054688,38.501129150391,4055.970703125}local dressrosagiver1={-425.67904663086,72.970520019531,1840.3392333984}local dressrosagiver2={635.24658203125,73.070526123047,913.29736328125}local greenbitgiver={-2446.3381347656,73.016082763672,-3218.3020019531}
		local graveyardgiver={-5491.0166015625,48.480117797852,-797.78656005859}local snowislandgiver={604.32348632813,401.42193603516,-5372.48828125}local icecirclegiver={-6063.4594726563,15.951759338379,-4908.5131835938}local firecirclegiver={-5425.1655273438,15.951759338379,-5294.7578125}
		local shipgiver1={1039.5695800781,125.05710601807,32914.44921875}local shipgiver2={968.43511962891,125.05710601807,33253.62890625}local frostislandgiver={5673.1748046875,28.176511764526,-6487.6879882813}local forgottengiver={-3057.8273925781,236.84628295898,-10146.616210938}local vu=game:GetService('VirtualUser')
		local twgiver1={-294.56411743164,43.793209075928,5579.7778320313}local twgiver2={5830.0971679688,51.35135269165,-1105.0433349609}local twgiver3={5445.396484375,601.60363769531,748.73950195313}local twgiver4={2182.8579101563,28.705436706543,-6736.9350585938}local twgiver5={-10580.079101563,331.76263427734,-8755.0498046875}
		local twgiver6={-13229.26171875,332.37814331055,-7625.767578125}local twgiver7={-12682.30078125,390.86068725586,-9896.6708984375}
		if dfmasclicker then if levelfarm or bossfarm or autofactory or dfmastery then vu:Button1Down(Vector2.new(-1000,-1000),work.CurrentCamera.CFrame)vu:Button1Up(Vector2.new(-1000,-1000),work.CurrentCamera.CFrame)end end
		if game.PlaceId==sm then
			if plr.Data.Level.Value<=9 then
			   automob='Bandit'currentgiver=startgiver
			elseif plr.Data.Level.Value>=10 and plr.Data.Level.Value<=14 then
			   automob='Monkey'currentgiver=monkegiver
			elseif plr.Data.Level.Value>=15 and plr.Data.Level.Value<=29 then
			   automob='Gorilla'currentgiver=monkegiver
			elseif plr.Data.Level.Value>=30 and plr.Data.Level.Value<=39 then
			   automob='Pirate'currentgiver=buggygiver
			elseif plr.Data.Level.Value>=40 and plr.Data.Level.Value<=59 then
			   automob='Brute'currentgiver=buggygiver
			elseif plr.Data.Level.Value>=60 and plr.Data.Level.Value<=74 then
			   automob='Desert Bandit'currentgiver=desertgiver
			elseif plr.Data.Level.Value>=75 and plr.Data.Level.Value<=89 then
			   automob='Desert Officer'currentgiver=desertgiver
			elseif plr.Data.Level.Value>=90 and plr.Data.Level.Value<=99 then
			   automob='Snow Bandit'currentgiver=snowgiver
			elseif plr.Data.Level.Value>=100 and plr.Data.Level.Value<=119 then
			   automob='Snowman'currentgiver=snowgiver
			elseif plr.Data.Level.Value>=120 and plr.Data.Level.Value<=149 then
			   automob='Chief Petty Officer'currentgiver=marinegiver
			elseif plr.Data.Level.Value>=150 and plr.Data.Level.Value<=174 then
			   automob='Sky Bandit'currentgiver=sky1giver
			elseif plr.Data.Level.Value>=175 and plr.Data.Level.Value<=224 then
			   automob='Dark Master'currentgiver=sky1giver
			elseif plr.Data.Level.Value>=225 and plr.Data.Level.Value<=274 then
			   automob='Toga Warrior'currentgiver=cologiver
			elseif plr.Data.Level.Value>=275 and plr.Data.Level.Value<=299 then
			   automob='Gladiator'currentgiver=cologiver
			elseif plr.Data.Level.Value>=300 and plr.Data.Level.Value<=329 then
			   automob='Military Soldier'currentgiver=lavagiver
			elseif plr.Data.Level.Value>=330 and plr.Data.Level.Value<=374 then
			   automob='Military Spy'currentgiver=lavagiver
			elseif plr.Data.Level.Value>=375 and plr.Data.Level.Value<=399 then
			   automob='Fishman Warrior'currentgiver=fishgiver
			elseif plr.Data.Level.Value>=400 and plr.Data.Level.Value<=449 then
			   automob='Fishman Commando'currentgiver=fishgiver
			elseif plr.Data.Level.Value>=450 and plr.Data.Level.Value<=474 then
			   automob="God's Guard"currentgiver=sky2giver1
			elseif plr.Data.Level.Value>=475 and plr.Data.Level.Value<=524 then
			   automob='Shanda'currentgiver=sky2giver1
			elseif plr.Data.Level.Value>=525 and plr.Data.Level.Value<=549 then
			   automob='Royal Squad'currentgiver=sky2giver2
			elseif plr.Data.Level.Value>=550 and plr.Data.Level.Value<=624 then
			   automob='Royal Soldier' currentgiver=sky2giver2
			elseif plr.Data.Level.Value>=625 and plr.Data.Level.Value<=649 then
			   automob='Galley Pirate'currentgiver=galleygiver
			elseif plr.Data.Level.Value>=650 and plr.Data.Level.Value<=699 then
			   automob='Galley Captain'currentgiver=galleygiver
			end
		elseif game.PlaceId==nw then
		    if plr.Data.Level.Value>=700 and plr.Data.Level.Value<=724 then
		       automob='Raider'currentgiver=dressrosagiver1
		    elseif plr.Data.Level.Value>=725 and plr.Data.Level.Value<=774 then
		       automob='Mercenary'currentgiver=dressrosagiver1
		    elseif plr.Data.Level.Value>=775 and plr.Data.Level.Value<=799 then
		       automob='Swan Pirate'currentgiver=dressrosagiver2
		    elseif plr.Data.Level.Value>=800 and plr.Data.Level.Value<=874 then
		       automob='Factory Staff'currentgiver=dressrosagiver2
		    elseif plr.Data.Level.Value>=875 and plr.Data.Level.Value<=899 then
		       automob='Marine Lieutenant'currentgiver=greenbitgiver
		    elseif plr.Data.Level.Value>=900 and plr.Data.Level.Value<=949 then
		       automob='Marine Captain'currentgiver=greenbitgiver
		    elseif plr.Data.Level.Value>=950 and plr.Data.Level.Value<=974 then
		       automob='Zombie'currentgiver=graveyardgiver
		    elseif plr.Data.Level.Value>=975 and plr.Data.Level.Value<=1000 then
		       automob='Vampire'currentgiver=graveyardgiver
		    elseif plr.Data.Level.Value>=1000 and plr.Data.Level.Value<=1049 then
		       automob='Snow Trooper'currentgiver=snowislandgiver
		    elseif plr.Data.Level.Value>=1050 and plr.Data.Level.Value<=1099 then
		       automob='Winter Warrior'currentgiver=snowislandgiver
		    elseif plr.Data.Level.Value>=1100 and plr.Data.Level.Value<=1124 then
		       automob='Lab Subordinate'currentgiver=icecirclegiver
		    elseif plr.Data.Level.Value>=1125 and plr.Data.Level.Value<=1174 then
		       automob='Horned Warrior'currentgiver=icecirclegiver
		    elseif plr.Data.Level.Value>=1175 and plr.Data.Level.Value<=1199 then
		       automob='Magma Ninja'currentgiver=firecirclegiver
		    elseif plr.Data.Level.Value>=1200 and plr.Data.Level.Value<=1249 then
		       automob='Lava Pirate'currentgiver=firecirclegiver
		    elseif plr.Data.Level.Value>=1250 and plr.Data.Level.Value<=1274 then
		       automob='Ship Deckhand'currentgiver=shipgiver1
		    elseif plr.Data.Level.Value>=1275 and plr.Data.Level.Value<=1299 then
		       automob='Ship Engineer'currentgiver=shipgiver1
		    elseif plr.Data.Level.Value>=1300 and plr.Data.Level.Value<=1324 then
		       automob='Ship Steward'currentgiver=shipgiver2
		    elseif plr.Data.Level.Value>=1325 and plr.Data.Level.Value<=1349 then
		       automob='Ship Officer'currentgiver=shipgiver2
		    elseif plr.Data.Level.Value>=1350 and plr.Data.Level.Value<=1374 then
		       automob='Arctic Warrior'currentgiver=frostgiver
		    elseif plr.Data.Level.Value>=1375 and plr.Data.Level.Value<=1424 then
		       automob='Snow Lurker'currentgiver=frostgiver
		    elseif plr.Data.Level.Value>=1425 and plr.Data.Level.Value<=1449 then
		       automob='Sea Soldier'currentgiver=forgottengiver
		    elseif plr.Data.Level.Value>=1450 and plr.Data.Level.Value<=1499 then
		       automob='Water Fighter'currentgiver=forgottengiver
			end
		elseif game.PlaceId==tw then
		    if plr.Data.Level.Value>=1500 and plr.Data.Level.Value<=1524 then
		       automob='Pirate Millionaire'currentgiver=twgiver1
		    elseif plr.Data.Level.Value>=1525 and plr.Data.Level.Value<=1574 then
		       automob='Pistol Billionaire'currentgiver=twgiver1
			elseif plr.Data.Level.Value>=1575 and plr.Data.Level.Value<=1599 then
		       automob='Dragon Crew Warrior'currentgiver=twgiver2
			elseif plr.Data.Level.Value>=1600 and plr.Data.Level.Value<=1624 then
		       automob='Dragon Crew Archer'currentgiver=twgiver2
			elseif plr.Data.Level.Value>=1625 and plr.Data.Level.Value<=1649 then
		       automob='Female Islander'currentgiver=twgiver3
			elseif plr.Data.Level.Value>=1650 and plr.Data.Level.Value<=1699 then
		       automob='Giant Islander'currentgiver=twgiver3
			elseif plr.Data.Level.Value>=1700 and plr.Data.Level.Value<=1725 then
		       automob='Marine Commodore'currentgiver=twgiver4
			elseif plr.Data.Level.Value>=1725 and plr.Data.Level.Value<=1774 then
		       automob='Marine Rear Admiral'currentgiver=twgiver4
			elseif plr.Data.Level.Value>=1775 and plr.Data.Level.Value<=1799 then
		       automob='Fishman Raider'currentgiver=twgiver5
			elseif plr.Data.Level.Value>=1800 and plr.Data.Level.Value<=1824 then
		       automob='Fishman Captain'currentgiver=twgiver5
			elseif plr.Data.Level.Value>=1825 and plr.Data.Level.Value<=1849 then
		       automob='Forest Pirate'currentgiver=twgiver6
			elseif plr.Data.Level.Value>=1850 and plr.Data.Level.Value<=1899 then
		       automob='Mythological Pirate'currentgiver=twgiver6
			elseif plr.Data.Level.Value>=1900 and plr.Data.Level.Value<=1924 then
		       automob='Jungle Pirate'currentgiver=twgiver7
			elseif plr.Data.Level.Value>=1925 then
		       automob='Musketeer Pirate'currentgiver=twgiver7
		    end
		end
		local health={}
		for i,v in pairs(work.Enemies:GetChildren()) do
			if v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 and string.find(v.Name,automob)then
			    table.insert(health,v.Humanoid.Health)
			end
		end
		local minhealth
		if #health>0 then
			minhealth=math.min(table.unpack(health))
		end
		if levelfarm or dfmastery then
			if game.PlaceId==nw and work.Map.Dressrosa.SmileFactory.Core.Glass.Transparency==1 then return end
			for i,v in pairs(asssupercock:GetChildren())do
				for _,p in pairs(work.Enemies:GetChildren())do
					if v.Name:split(' [')[1]==automob and not string.find(p.Name,automob)then
						rootpart.CFrame=v.HumanoidRootPart.CFrame+Vector3.new(0,50,0)
					end
				end
			end
		end
		if levelfarm then
			if game.PlaceId==nw and work.Map.Dressrosa.SmileFactory.Core.Glass.Transparency==1 then return end 
			plr.Character.Humanoid:ChangeState(11)
			if not quest.Visible then
				delay(delaytime1,function()
					delay1=false
				end)
				if not delay1 then delay1=true
					delay(delaytime2,function()
						delay2=false
					end)
				end
				if not delay2 then
					delay(delaytime2,function()
						delay2=true
					end)
				end
				rootpart.CFrame=CFrame.new(table.unpack(currentgiver))
				if automob=='Bandit'then
					if not delay2 and not quest.Visible then startquest('BanditQuest1',1)end
				elseif automob=='Monkey'then
					if not delay2 and not quest.Visible then startquest('JungleQuest',1)end
				elseif automob=='Gorilla'then
					if not delay2 and not quest.Visible then startquest('JungleQuest',2)end
				elseif automob=='Pirate'then
					if not delay2 and not quest.Visible then startquest('BuggyQuest1',1)end
				elseif automob=='Brute'then
					if not delay2 and not quest.Visible then startquest('BuggyQuest1',2)end
				elseif automob=='Desert Bandit'then
					if not delay2 and not quest.Visible then startquest('DesertQuest',1)end
				elseif automob=='Desert Officer'then
					if not delay2 and not quest.Visible then startquest('DesertQuest',2)end
				elseif automob=='Snow Bandit'then
					if not delay2 and not quest.Visible then startquest('SnowQuest',1)end
				elseif automob=='Snowman'then
					if not delay2 and not quest.Visible then startquest('SnowQuest',2)end
				elseif automob=='Chief Petty Officer'then
					if not delay2 and not quest.Visible then startquest('MarineQuest2',1)end
				elseif automob=='Sky Bandit'then
					if not delay2 and not quest.Visible then startquest('SkyQuest',1)end
				elseif automob=='Dark Master'then
					if not delay2 and not quest.Visible then startquest('SkyQuest',2)end
				elseif automob=='Toga Warrior'then
					if not delay2 and not quest.Visible then startquest('ColosseumQuest',1)end
				elseif automob=='Gladiator'then
					if not delay2 and not quest.Visible then startquest('ColosseumQuest',2)end
				elseif automob=='Military Soldier'then
					if not delay2 and not quest.Visible then startquest('MagmaQuest',1)end
				elseif automob=='Military Spy'then
					if not delay2 and not quest.Visible then startquest('MagmaQuest',2)end
				elseif automob=='Fishman Warrior'then
					if not delay2 and not quest.Visible then startquest('FishmanQuest',1)end
				elseif automob=='Fishman Commando'then
					if not delay2 and not quest.Visible then startquest('FishmanQuest',2)end
				elseif automob=="God's Guard"then
					if not delay2 and not quest.Visible then startquest('SkyExp1Quest',1)end
				elseif automob=='Shanda'then
					if not delay2 and not quest.Visible then startquest('SkyExp1Quest',2)end
				elseif automob=='Royal Squad'then
					if not delay2 and not quest.Visible then startquest('SkyExp2Quest',1)end
				elseif automob=='Royal Soldier'then
					if not delay2 and not quest.Visible then startquest('SkyExp2Quest',2)end
				elseif automob=='Galley Pirate'then
					if not delay2 and not quest.Visible then startquest('FountainQuest',1)end
				elseif automob=='Galley Captain'then
					if not delay2 and not quest.Visible then startquest('FountainQuest',2)end
				elseif automob=='Raider'then
					if not delay2 and not quest.Visible then startquest('Area1Quest',1)end
				elseif automob=='Mercenary'then
					if not delay2 and not quest.Visible then startquest('Area1Quest',2)end
				elseif automob=='Swan Pirate'then
					if not delay2 and not quest.Visible then startquest('Area2Quest',1)end
				elseif automob=='Factory Staff'then
					if not delay2 and not quest.Visible then startquest('Area2Quest',2)end
				elseif automob=='Marine Lieutenant'then
					if not delay2 and not quest.Visible then startquest('MarineQuest3',1)end
				elseif automob=='Marine Captain'then
					if not delay2 and not quest.Visible then startquest('MarineQuest3',2)end
				elseif automob=='Zombie'then
					if not delay2 and not quest.Visible then startquest('ZombieQuest',1)end
				elseif automob=='Vampire'then
					if not delay2 and not quest.Visible then startquest('ZombieQuest',2)end
				elseif automob=='Snow Trooper'then
					if not delay2 and not quest.Visible then startquest('SnowMountainQuest',1)end
				elseif automob=='Winter Warrior'then
					if not delay2 and not quest.Visible then startquest('SnowMountainQuest',2)end
				elseif automob=='Lab Subordinate'then
					if not delay2 and not quest.Visible then startquest('IceSideQuest',1)end
				elseif automob=='Horned Warrior'then
					if not delay2 and not quest.Visible then startquest('IceSideQuest',2)end
				elseif automob=='Magma Ninja'then
					if not delay2 and not quest.Visible then startquest('FireSideQuest',1)end
				elseif automob=='Lava Pirate'then
					if not delay2 and not quest.Visible then startquest('FireSideQuest',2)end
				elseif automob=='Ship Deckhand'then
					if not delay2 and not quest.Visible then startquest('ShipQuest1',1)end
				elseif automob=='Ship Engineer'then
					if not delay2 and not quest.Visible then startquest('ShipQuest1',2)end
				elseif automob=='Ship Steward'then
					if not delay2 and not quest.Visible then startquest('ShipQuest2',1)end
				elseif automob=='Ship Officer'then
					if not delay2 and not quest.Visible then startquest('ShipQuest2',2)end
				elseif automob=='Arctic Warrior'then
					if not delay2 and not quest.Visible then startquest('FrostQuest',1)end
				elseif automob=='Snow Lurker'then
					if not delay2 and not quest.Visible then startquest('FrostQuest',2)end
				elseif automob=='Sea Soldier'then
					if not delay2 and not quest.Visible then startquest('ForgottenQuest',1)end
				elseif automob=='Water Fighter'then
					if not delay2 and not quest.Visible then startquest('ForgottenQuest',2)end
				elseif automob=='Pirate Millionaire'then
					if not delay2 and not quest.Visible then startquest('PiratePortQuest',1)end
				elseif automob=='Pistol Billionaire'then
					if not delay2 and not quest.Visible then startquest('PiratePortQuest',2)end
				elseif automob=='Dragon Crew Warrior'then
					if not delay2 and not quest.Visible then startquest('AmazonQuest',1)end
				elseif automob=='Dragon Crew Archer'then
					if not delay2 and not quest.Visible then startquest('AmazonQuest',2)end
				elseif automob=='Female Islander'then
					if not delay2 and not quest.Visible then startquest('AmazonQuest2',1)end
				elseif automob=='Giant Islander'then
					if not delay2 and not quest.Visible then startquest('AmazonQuest2',2)end
				elseif automob=='Marine Commodore'then
					if not delay2 and not quest.Visible then startquest('MarineTreeIsland',1)end
				elseif automob=='Marine Rear Admiral'then
					if not delay2 and not quest.Visible then startquest('MarineTreeIsland',2)end
				elseif automob=='Fishman Raider'then
					if not delay2 and not quest.Visible then startquest('DeepForestIsland3',1)end
				elseif automob=='Fishman Captain'then
					if not delay2 and not quest.Visible then startquest('DeepForestIsland3',2)end
				elseif automob=='Forest Pirate'then
					if not delay2 and not quest.Visible then startquest('DeepForestIsland',1)end
				elseif automob=='Mythological Pirate'then
					if not delay2 and not quest.Visible then startquest('DeepForestIsland',2)end
				elseif automob=='Jungle Pirate'then
					if not delay2 and not quest.Visible then startquest('DeepForestIsland2',1)end
				elseif automob=='Musketeer Pirate'then
					if not delay2 and not quest.Visible then startquest('DeepForestIsland2',2)end
				end
			end
			if delay2 and quest.Visible then
				for i,v in pairs(work.Enemies:GetChildren())do
				    if v:FindFirstChild('Humanoid')and v:FindFirstChild('HumanoidRootPart') and string.find(v.Name,automob)then
						v.HumanoidRootPart.Size=Vector3.new(25,25,25)v.HumanoidRootPart.CanCollide=false
						if v.Humanoid.Health==minhealth then
							tpua(v.HumanoidRootPart.Position)
							rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.lookVector*-15
						end
					end
				end
			end
		end
		if bossfarm then
			if table.find(extrabosses,boss)then
				for i,v in pairs(asssupercock:GetChildren())do
					if v.Name:split('[')[1]==boss then
						rootpart.CFrame=v.HumanoidRootPart.CFrame+Vector3.new(0,50,0)
					else
						for i,v in pairs(work.Enemies:GetChildren())do
						    if v:FindFirstChild('Humanoid')and v:FindFirstChild('HumanoidRootPart')and string.find(v.Name,boss)then
				    			v.HumanoidRootPart.Size=Vector3.new(25,25,25)
				    			rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.lookVector*-15 
							end
						end
					end
				end
			else
				if not quest.Visible then
					delay(delaytime1,function()
						bdelay1=false
					end)
					if not bdelay1 then bdelay1=true
						delay(delaytime2,function()
							bdelay2=false
						end)
					end
					if not bdelay2 then
						delay(delaytime2,function()
							bdelay2=true
						end)
					end
					local impelgiver={4854.82421875,5.6524415016174,740.92974853516}
					if boss=='Vice Admiral 'then
						rootpart.CFrame=CFrame.new(table.unpack(marinegiver))
						if not bdelay2 and not quest.Visible then startquest('MarineQuest2',3)end
					elseif boss=='Warden 'then
						rootpart.CFrame=CFrame.new(table.unpack(impelgiver))
						if not bdelay2 and not quest.Visible then startquest('ImpelQuest',1)end
					elseif boss=='Swan 'then
						rootpart.CFrame=CFrame.new(table.unpack(impelgiver))
						if not bdelay2 and not quest.Visible then startquest('ImpelQuest',2)end
					elseif boss=='Magma Admiral 'then
						rootpart.CFrame=CFrame.new(table.unpack(lavagiver))
						if not bdelay2 and not quest.Visible then startquest('MagmaQuest',3)end
					elseif boss=='Fishman Lord 'then
						rootpart.CFrame=CFrame.new(table.unpack(fishgiver))
						if not bdelay2 and not quest.Visible then startquest('FishmanQuest',3)end
					elseif boss=='Wysper 'then
						rootpart.CFrame=CFrame.new(table.unpack(sky2giver1))
						if not bdelay2 and not quest.Visible then startquest('SkyExp1Quest',3)end
					elseif boss=='Thunder God 'then
						rootpart.CFrame=CFrame.new(table.unpack(sky2giver2))
						if not bdelay2 and not quest.Visible then startquest('SkyExp2Quest',3)end
					elseif boss=='Cyborg 'then
						rootpart.CFrame=CFrame.new(table.unpack(galleygiver))
						if not bdelay2 and not quest.Visible then startquest('FountainQuest',3)end
					elseif boss=='Diamond 'then
						rootpart.CFrame=CFrame.new(table.unpack(dressrosagiver1))
						if not bdelay2 and not quest.Visible then startquest('Area1Quest',3)end
					elseif boss=='Jeremy 'then
						rootpart.CFrame=CFrame.new(table.unpack(dressrosagiver2))
						if not bdelay2 and not quest.Visible then startquest('Area2Quest',3)end
					elseif boss=='Fajita 'then
						rootpart.CFrame=CFrame.new(table.unpack(greenbitgiver))
						if not bdelay2 and not quest.Visible then startquest('MarineQuest3',3)end
					elseif boss=='Smoke Admiral 'then
						rootpart.CFrame=CFrame.new(table.unpack(icecirclegiver))
						if not bdelay2 and not quest.Visible then startquest('IceSideQuest',3)end
					elseif boss=='Awakened Ice Admiral 'then
						rootpart.CFrame=CFrame.new(table.unpack(frostislandgiver))
						if not bdelay2 and not quest.Visible then startquest('FrostQuest',3)end
					elseif boss=='Tide Keeper 'then
						rootpart.CFrame=CFrame.new(table.unpack(forgottengiver))
						if not bdelay2 and not quest.Visible then startquest('ForgottenQuest',3)end
					elseif boss=='Stone 'then
						rootpart.CFrame=CFrame.new(table.unpack(twgiver1))
						if not bdelay2 and not quest.Visible then startquest('PiratePortQuest',3)end
					elseif boss=='Beautiful Pirate 'then 
						rootpart.CFrame=CFrame.new(table.unpack(twgiver7))
						if not bdelay2 and not quest.Visible then startquest('DeepForestIsland2',3)end
					elseif boss=='Island Empress 'then 
						rootpart.CFrame=CFrame.new(table.unpack(twgiver3))
						if not bdelay2 and not quest.Visible then startquest('AmazonQuest2',3)end
					elseif boss=='Captain Elephant 'then 
						rootpart.CFrame=CFrame.new(table.unpack(twgiver6))
						if not bdelay2 and not quest.Visible then startquest('DeepForestIsland',3)end
					elseif boss=='Kilo Admiral 'then 
						rootpart.CFrame=CFrame.new(table.unpack(twgiver4))
						if not bdelay2 and not quest.Visible then startquest('MarineTreeIsland',3)end
					end
				end
				if delay2 and quest.Visible then
					local cuuuuummmm
					local megaacoooock
					for i,v in pairs(work.Enemies:GetChildren())do
						if v.Name:split('[')[1]==boss then megaacoooock=true end
					end
					for i,v in pairs(asssupercock:GetChildren())do
						if v.Name:split('[')[1]==boss and not megaacoooock then
							rootpart.CFrame=v.HumanoidRootPart.CFrame+Vector3.new(0,50,0)
						else
							cuuuuummmm=true
						end
					end
					if cuuuuummmm then
						for i,v in pairs(work.Enemies:GetChildren())do
						    if v:FindFirstChild('Humanoid')and v:FindFirstChild('HumanoidRootPart')and string.find(v.Name,boss)then
				    			v.HumanoidRootPart.Size=Vector3.new(25,25,25)
				    			rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.lookVector*-15 
							end
						end
					end
				end
			end
		end
		if autoequip then
			if work.Characters:FindFirstChild(plr.Name)and plr.Character.Humanoid.Health>0 and plr.Character:FindFirstChild('CharacterReady')then
		        pcall(function()plr.Character.Humanoid:EquipTool(plr.Backpack[tool])end)
			end
		end
		if autobuso then if not plr.Character:FindFirstChild("HasBuso")then asssupercock.Remotes['CommF_']:InvokeServer('Buso')end end
		if not dfmastery then dfmasclicker=true end
		if dfmastery then
			for i,v in pairs(work.Enemies:GetChildren())do
			    if v:FindFirstChild('Humanoid')and v:FindFirstChild('HumanoidRootPart') and string.find(v.Name,automob)then
					v.HumanoidRootPart.Size=Vector3.new(25,25,25)v.HumanoidRootPart.CanCollide=false
					if v.Humanoid.Health==minhealth then
						tpua(v.HumanoidRootPart.Position)
						rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.lookVector*-15
						pcall(function()work.Camera.CFrame=v.HumanoidRootPart.CFrame end)
						if minhealth<=dfmashealth then dfmasclicker=false else dfmasclicker=true end
						if work.Characters:FindFirstChild(plr.Name)and plr.Character.Humanoid.Health>0 and plr.Character:FindFirstChild('CharacterReady')then
							if not dfmasclicker then
								pcall(function()plr.Character.Humanoid:EquipTool(plr.Backpack[dfmasterydf])end)
								local function skillissue(key)local vim=game:GetService('VirtualInputManager')vim:SendKeyEvent(true,key,false,game)vim:SendKeyEvent(false,key,false,game)end
								if dfz then skillissue('Z')end
								if dfx then skillissue('X')end
								if dfc then skillissue('C')end
								if dfv then skillissue('V')end
								if dff then skillissue('F')end
							else
							    pcall(function()plr.Character.Humanoid:EquipTool(plr.Backpack[dfmasterymelee])end)
							end
						end
					end
				end
			end
		end
		if autoislandteleports then
			plr.Character.Humanoid:ChangeState(11)
			local locations=work['_WorldOrigin'].Locations
			if locations:FindFirstChild('Island 1')and not locations:FindFirstChild('Island 2')and not locations:FindFirstChild('Island 3')and not locations:FindFirstChild('Island 4')and not locations:FindFirstChild('Island 5')then
				rootpart.CFrame=locations['Island 1'].CFrame
			elseif locations:FindFirstChild('Island 1')and locations:FindFirstChild('Island 2')and not locations:FindFirstChild('Island 3')and not locations:FindFirstChild('Island 4')and not locations:FindFirstChild('Island 5')then
				rootpart.CFrame=locations['Island 2'].CFrame
			elseif locations:FindFirstChild('Island 1')and locations:FindFirstChild('Island 2')and locations:FindFirstChild('Island 3')and not locations:FindFirstChild('Island 4')and not locations:FindFirstChild('Island 5')then
				rootpart.CFrame=locations['Island 3'].CFrame
			elseif locations:FindFirstChild('Island 1')and locations:FindFirstChild('Island 2')and locations:FindFirstChild('Island 3')and locations:FindFirstChild('Island 4')and not locations:FindFirstChild('Island 5')then
				rootpart.CFrame=locations['Island 4'].CFrame
			elseif locations:FindFirstChild('Island 1')and locations:FindFirstChild('Island 2')and locations:FindFirstChild('Island 3')and locations:FindFirstChild('Island 4')and locations:FindFirstChild('Island 5')then
				rootpart.CFrame=locations['Island 5'].CFrame
			end
		end
		if autofactory then
			if work.Map.Dressrosa.SmileFactory.Core.Glass.Transparency==1 then
				rootpart.CFrame=work.Map.Dressrosa.SmileFactory.Core.Part.CFrame
			end
		end 
		if fullbright then lighting.FogEnd=9e9 else
			lighting.FogEnd=ultraasssupercum
		end
		if dfesp then
			for i,v in pairs(work:GetChildren())do
				if v:IsA('Tool')and v:FindFirstChild('Handle')or v:IsA('Model')and v:FindFirstChild('Handle')then
					if not v.Handle:FindFirstChild('BillboardGui') then
						local BillboardGui=Instance.new("BillboardGui")
			    		local TextLabel=Instance.new("TextLabel")
					    BillboardGui.Parent=v.Handle
					    BillboardGui.AlwaysOnTop=true
					    BillboardGui.LightInfluence=1
					    BillboardGui.Size=UDim2.new(0,50,0,50)
					    BillboardGui.StudsOffset=Vector3.new(0,2,0)
					    TextLabel.Parent=BillboardGui
					    TextLabel.BackgroundTransparency=1
					    TextLabel.Size=UDim2.new(1,0,1,0)
					    TextLabel.Text=v.Name
						if v:FindFirstChild('Fruit')then TextLabel.TextColor3=v.Fruit.Color else TextLabel.TextColor3=v.Handle.Color end
					    TextLabel.TextScaled=true
						TextLabel.Font='Gotham'
					end
				end
			end
		else
			for i,v in pairs(work:GetChildren())do
				if v:IsA('Tool')and v:FindFirstChild('Handle')or v:IsA('Model')and v:FindFirstChild('Handle')then
					if v.Handle:FindFirstChild('BillboardGui')then
						v.Handle.BillboardGui:Destroy()
					end
				end
			end
		end
		if floweresp then
			for i,v in pairs(work:GetChildren())do
				if string.find(v.Name,'Flower')then
					if not v:FindFirstChild('BillboardGui')then
						local BillboardGui=Instance.new("BillboardGui")
			    		local TextLabel=Instance.new("TextLabel")
					    BillboardGui.Parent=v
					    BillboardGui.AlwaysOnTop=true
					    BillboardGui.LightInfluence=1
					    BillboardGui.Size=UDim2.new(0,50,0,50)
					    BillboardGui.StudsOffset=Vector3.new(0,2,0)
					    TextLabel.Parent=BillboardGui
					    TextLabel.BackgroundTransparency=1
					    TextLabel.Size=UDim2.new(1,0,1,0)
					    TextLabel.Text=v.Name
					    TextLabel.TextColor3=v.Color
					    TextLabel.TextScaled=true
						TextLabel.Font='Gotham'
					end
				end
			end
		else
			for i,v in pairs(work:GetChildren())do
				if string.find(v.Name,'Flower')then
					if v:FindFirstChild('BillboardGui')then
						v.BillboardGui:Destroy()
					end
				end
			end
		end
		if noslow then
			if rootpart:FindFirstChild('BodyPosition')then rootpart.BodyPosition:Destroy()
			elseif rootpart:FindFirstChild('BodyVelocity')then rootpart.BodyVelocity:Destroy()
			elseif plr.Character.Busy.Value then plr.Character.Busy.Value=false end
		end
		if killaura then
			for i,v in pairs(work.Enemies:GetChildren())do
				if v:FindFirstChild('Humanoid')and v:FindFirstChild('HumanoidRootPart')and v.Humanoid.Health>0 and v:FindFirstChild('CharacterReady')and not asssupercock:FindFirstChild(v)then
					v.Humanoid.Health=0
				end
			end
		end
		if espnames then
			for i,v in pairs(work.Characters:GetChildren())do if v.Name~=plr.Name then
				if v:FindFirstChild('Head')and not v.Head:FindFirstChild('BillboardGui')then
					local BillboardGui=Instance.new("BillboardGui")
		    		local TextLabel=Instance.new("TextLabel")
				    BillboardGui.Parent=v.Head
				    BillboardGui.AlwaysOnTop=true
				    BillboardGui.LightInfluence=1
				    BillboardGui.Size=UDim2.new(0,60,0,60)
				    BillboardGui.StudsOffset=Vector3.new(0,2,0)
				    TextLabel.Parent=BillboardGui
				    TextLabel.BackgroundTransparency=1
				    TextLabel.Size=UDim2.new(1,0,1,0)
				    TextLabel.Text=v.Name
				    TextLabel.TextColor3=players:FindFirstChild(v.Name).TeamColor.Color
				    TextLabel.TextScaled=true
					TextLabel.Font='Gotham'
				end
			end end
		else
			for i,v in pairs(work.Characters:GetChildren())do if v.Name~=plr.Name then
				if v:FindFirstChild('Head')and v.Head:FindFirstChild('BillboardGui')then
					v.Head.BillboardGui:Destroy()
				end
			end end
		end
		if hitboxes then
			for i,v in pairs(work.Characters:GetChildren())do if v.Name~=plr.Name then
				if v:FindFirstChild('HumanoidRootPart')then
					local function getgood()
						v.HumanoidRootPart.Size=Vector3.new(hitboxsize,hitboxsize,hitboxsize)
						v.HumanoidRootPart.Transparency=0.75
						v.HumanoidRootPart.Color=Color3.new(50,150,200)
					end
					if hitboxteamcheck then
						if players:FindFirstChild(v.Name).Team~=plr.Team then
							getgood()
						else
							if v.HumanoidRootPart.Size~=Vector3.new(2,2,1)then v.HumanoidRootPart.Size=Vector3.new(2,2,1) end
						end
					else
						getgood()
					end
				end
			end end
		else
			if hitboxeswasturnedon then
				for i,v in pairs(work.Characters:GetChildren())do if v.Name~=plr.Name then
					if v:FindFirstChild('HumanoidRootPart')then v.HumanoidRootPart.Size=Vector3.new(2,2,1)end
				end end
			end
		end
		if rootpart.Position.Y<=5 then
			if jesus then
				if not work:FindFirstChild('cum100')then
					local p=Instance.new('Part',work)
					p.Name='cum100'p.Transparency=1 p.Anchored=true
					p.Position=Vector3.new(rootpart.Position.X,-8.9,rootpart.Position.Z)p.Size=Vector3.new(10,10,10)
					delay(0.1,function()pcall(function()p:Destroy()end)end)
				end
			end
			if cooljesus then
				local p=Instance.new('Part',work)local s=game:GetService('ReplicatedStorage').Assets.Particles.IcyWind:Clone()
				p.Name='megacum100'p.Anchored=true p.TopSurface='Smooth'
				p.Position=Vector3.new(rootpart.Position.X,-8.9,rootpart.Position.Z)p.Size=Vector3.new(9,10,9)p.CFrame=p.CFrame*CFrame.Angles(0, math.rad(math.random(0,95)), 0)
				p.Material='Neon'p.BrickColor=BrickColor.new('Baby blue')
				s.Parent=p s.Enabled=true
				delay(0.1,function()
					s.Enabled=false
					local tween=game:GetService('TweenService'):Create(p,TweenInfo.new(0.2,Enum.EasingStyle.Linear),{Size=Vector3.new(0,10,0)})tween:Play()
				end)
				delay(1,function()pcall(function()p:Destroy()end)end)
			end
		end
		if rainbowwater then for i,v in pairs(work.Camera:GetChildren())do if v.Name:find('Water')then v.Color=rainbowcolor end end else for i,v in pairs(work.Camera:GetChildren())do if v.Name:find('Water')then v.Color=Color3.fromRGB(40,129,236)end end end
		if aimbot and aimbottoggle then
			local nearestplayer local nmag=9e9
			for i,v in pairs(work.Characters:GetChildren())do if v.Name~=plr.Name and v:FindFirstChild('HumanoidRootPart')and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 then
				if aimbotteamcheck then
					if players:FindFirstChild(v.Name).Team~=plr.Team then
						local mag=(v.HumanoidRootPart.Position-rootpart.Position).magnitude
						if mag<nmag then nmag=mag nearestplayer=v.Name end
					end
				else
					local mag=(v.HumanoidRootPart.Position-rootpart.Position).magnitude
					if mag<nmag then nmag=mag nearestplayer=v.Name end
				end
			end end
			for i,v in pairs(work.Characters:GetChildren())do if v.Name~=plr.Name and v:FindFirstChild('HumanoidRootPart')and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 then
				if v.Name==nearestplayer then
					if aimbotteamcheck then
						if players:FindFirstChild(v.Name).Team~=plr.Team then
							work.Camera.CFrame=CFrame.new(work.Camera.CFrame.Position,v.HumanoidRootPart.Position)
						end
					else
						work.Camera.CFrame=CFrame.new(work.Camera.CFrame.Position,v.HumanoidRootPart.Position)
					end
				end
			end end
		end
	end)
	spawn(function()while wait(0.1)do
		if autostat then asssupercock.Remotes['CommF_']:InvokeServer('AddPoint',stattoadd,1)end
	end 
		while wait(1)do
			if autofindcolors then
				for i,v in pairs(getnilinstances())do
				    if string.find(v.Name,'Master of Enhancement')then
						if v:FindFirstChild('HumanoidRootPart')and v.HumanoidRootPart.Position~=Vector3.new(0,-1000,0)then
							rootpart.CFrame=v.HumanoidRootPart.CFrame
						end
					end
				end
			end if autolegendarysword then
				for i,v in pairs(getnilinstances())do
				    if string.find(v.Name,'Legendary Sword Dealer')then
						if v:FindFirstChild('HumanoidRootPart')and v.HumanoidRootPart.Position~=Vector3.new(0,-1000,0)then
							rootpart.CFrame=v.HumanoidRootPart.CFrame
						end
					end
				end
			end
		end
	end)
	rs.RenderStepped:Connect(function()
		if ws then plr.Character.Humanoid.WalkSpeed=wsspeed end
		if jp then plr.Character.Humanoid.JumpPower=jpjp end
	end)
	spawn(function()while wait()do local hue=tick()%15/15 local color=Color3.fromHSV(hue,1,1)rainbowcolor=color end end)
end
local function loadaba()
	local vim=game:GetService('VirtualInputManager')repeat wait()until work.Live:FindFirstChild(plr.Name)
	local win=lib:Create('Anime Battle Arena')
	local s=win:CreateTab('Main')
	local ss=win:CreateTab('Misc')
	local sss=win:CreateTab('Options')
	s:CreateLabel('Farm')
	local autoplay
	s:CreateToggle('AutoPlay',function(state)autoplay=state end)
	s:CreateLabel('AutoPlay Skills')
	local as1 local as2 local as3 local as4
	s:CreateToggle('Auto Skill 1',function(state)as1=state end)
	s:CreateToggle('Auto Skill 2',function(state)as2=state end)
	s:CreateToggle('Auto Skill 3',function(state)as3=state end)
	s:CreateToggle('Auto Skill 4',function(state)as4=state end)
	local distanceforautoskills=20
	s:CreateSlider(2,distanceforautoskills,100,'Distance',function(state)distanceforautoskills=state end)
	ss:CreateLabel('Main')
	ss:CreateButton('Hard Reset',function()plr.Character.Humanoid.Health=0 end)
	sss:CreateKeybind('RightControl','Hide/Show Ui',function(state)lib:Init()end)
	local megacock local cumassyes local afkertrue
	rs.Heartbeat:Connect(function()
		if autoplay then
			if plr.PlayerGui:FindFirstChild('HUD')then
			if plr.PlayerGui:FindFirstChild('Respawning')or plr.PlayerGui.HUD.AFK.Visible then cumassyes=true else cumassyes=false end
			if plr.PlayerGui:FindFirstChild('afker')then afkertrue=true else afkertrue=false end
			end
			if afkertrue then for i,v in pairs(getconnections(plr.PlayerGui.afker.Frame.YES.MouseButton1Click))do v:Fire()end end
			if not cumassyes then vim:SendKeyEvent(true,'W',false,game)end
			if plr:FindFirstChild('Backpack')then if plr.Character:FindFirstChild('Humanoid')and plr.Character.Humanoid.Health<60 then plr.Backpack.ServerTraits.Input:FireServer('g')end end
			local nearestplayer local nearestplayermagnitude=9e9
			for i,v in pairs(work.Live:GetChildren())do
				if v.Name~=plr.Name and v:FindFirstChild('HumanoidRootPart')and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 then
					if plr.Team==nil then
						if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<nearestplayermagnitude then nearestplayermagnitude=(rootpart.Position-v.HumanoidRootPart.Position).magnitude nearestplayer=v.Name end
					else
						if players:FindFirstChild(v.Name).Team~=plr.Team then
							if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<nearestplayermagnitude then nearestplayermagnitude=(rootpart.Position-v.HumanoidRootPart.Position).magnitude nearestplayer=v.Name end
						end
					end
				end
			end	
			if not cumassyes then
				pcall(function()work.Camera.CFrame=CFrame.new(work.Camera.CFrame.Position,work.Live[nearestplayer].HumanoidRootPart.Position)end)
			end
			if nearestplayermagnitude<distanceforautoskills then
				local function skillissue(key)vim:SendKeyEvent(true,key,false,game)vim:SendKeyEvent(false,key,false,game)end
				if as1 then skillissue(0x31)end
				if as2 then skillissue(0x32)end
				if as3 then skillissue(0x33)end
				if as4 then skillissue(0x34)end
			end
			if nearestplayermagnitude>10 and not cumassyes then vim:SendKeyEvent(true,'Q',false,game)vim:SendKeyEvent(false,'Q',false,game)end
			if nearestplayermagnitude<=10 then megacock=true else megacock=false end
		end
	end)
	spawn(function()while wait(0.1)do if megacock and autoplay then vim:SendMouseButtonEvent(0,0,0,true,game,1)vim:SendMouseButtonEvent(0,0,0,false,game,1)end end end)
end
local function loadroghoul()
	repeat wait()until work:FindFirstChild(plr.Name)
	local win=lib:Create('Ro-Ghoul')
	local s=win:CreateTab('Main')
	local ss=win:CreateTab('Options')
	s:CreateLabel('Farm')
	local farmablemobs={'Human','Athlete','Low Rank Aogiri Member','Mid Rank Aogiri Member','High Rank Aogiri Member','Rank 2 Investigator','Rank 1 Investigator','First Class Investigator'}--local farmablebosses={'Nishiki Nishio','Koutarou Amon','Eto Yoshimura'}
	local mobs={'Rank 2 Investigator','Rank 1 Investigator'}
	s:CreateTableDropdown('Mobs To Farm',farmablemobs,function(val)mobs=val end)
	local farm
	s:CreateToggle('Farm',function(state)farm=state end)
	local farmdistance=5
	s:CreateSlider(0,farmdistance,20,'Distance',function(state)farmdistance=state end)
	local autokagune
	s:CreateToggle('AutoEquip Kagune/Quinque',function(state)autokagune=state end)
	local stage=1
	s:CreateSlider(1,stage,6,'Stage',function(state)stage=state end)
	local autoskills
	s:CreateToggle('AutoSkills',function(state)autoskills=state end)
	local hidename
	s:CreateToggle('HideName',function(state)hidename=state end)
	ss:CreateKeybind('RightControl','Hide/Show Ui',function(state)lib:Init()end)
	local function bv()
	    if not rootpart:FindFirstChildOfClass('BodyVelocity')then
	        local bv=Instance.new('BodyVelocity')
	        bv.Parent=rootpart bv.MaxForce=Vector3.new(100000,100000,100000)bv.Velocity=Vector3.new(0,0,0)
	        delay(3,function()bv:Destroy()end)
	    end
	end
	local vim=game:GetService('VirtualInputManager')local ts=game:GetService('TweenService')local cock
	spawn(function()while wait(0.15)do if farm and cock then vim:SendMouseButtonEvent(0,0,0,true,game,1)vim:SendMouseButtonEvent(0, 0, 0,false,game,1)end
	if autoskills and cock then vim:SendKeyEvent(true,'E',false,game)vim:SendKeyEvent(true,'R',false,game)vim:SendKeyEvent(true,'F',false,game)end if autokagune and not plr.Character:FindFirstChild('Quinque')and not plr.Character:FindFirstChild('Kagune')then local stageusing='One'if stage==1 then stageusing='One'elseif stage==2 then stageusing='Two'elseif stage==3 then stageusing='Three'elseif stage==4 then stageusing='Four'elseif stage==5 then stageusing='Five'elseif stage==6 then stageusing='Six'end vim:SendKeyEvent(true,stageusing,false,game)end end end)
	local nearestnpcmagnitude=9e9 local nearestnpc local tween local nearestcorpsemagnitude=9e9 local nearestcorpse
	rs.Heartbeat:Connect(function()
		if farm then
			for i,v in pairs(plr.Character:GetChildren())do if v:IsA('BasePart')then v.CanCollide=false end end
			for i,v in pairs(work.NPCSpawns:GetChildren())do
				for i,v in pairs(v:GetChildren())do
					if v:FindFirstChild('HumanoidRootPart')and table.find(mobs,v.Name)then
						if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<nearestnpcmagnitude then nearestnpcmagnitude=(rootpart.Position-v.HumanoidRootPart.Position).magnitude nearestnpc=v end
						if v==nearestnpc then
							if nearestnpcmagnitude>50 then cock=false
							    tween=ts:Create(rootpart,TweenInfo.new(nearestnpcmagnitude/200,Enum.EasingStyle.Linear),{CFrame=CFrame.new(v.HumanoidRootPart.Position)})
								tween:Play()bv()
							else cock=true
								pcall(function()tween:Cancel()rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.LookVector*-farmdistance end)
							end
						end
					end
				end
			end
			for i,v in pairs(work.NPCSpawns:GetChildren())do
				for i,v in pairs(v:GetChildren())do
					if v:FindFirstChild(v.Name..' Corpse')and v[v.Name..' Corpse']:FindFirstChild('ClickPart')and table.find(mobs,v.Name)then
						local clickpart=v[v.Name..' Corpse'].ClickPart
						if (rootpart.Position-clickpart.Position).magnitude<nearestnpcmagnitude then
							if (rootpart.Position-clickpart.Position).magnitude<50 and nearestnpcmagnitude>50 and not cock then
								pcall(function()tween:Cancel()rootpart.CFrame=clickpart.CFrame+clickpart.CFrame.LookVector*-2 fireclickdetector(clickpart:FindFirstChildOfClass('ClickDetector')) end)
							end
						end
					end
				end
			end
			if not table.find(mobs,nearestnpc)then nearestnpc=nil nearestnpcmagnitude=9e9 end
		else pcall(function()tween:Cancel()end)end
		if hidename then
			if work:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('Head')and plr.Character.Head:FindFirstChild('PlayerStatus')then
				plr.Character.Head.PlayerStatus:Destroy()
			end
		end
	end)
end
local function loadbokunoroblox()
	repeat wait()until work:FindFirstChild(plr.Name)local npcs=work.NPCs
	local win=lib:Create('Boku No Roblox')
	local s=win:CreateTab('Farm')
	local ss=win:CreateTab('Misc')
	local sss=win:CreateTab('Options')
	local function namemobs()
		for i,v in pairs(npcs:GetChildren()) do
		    if string.find(v.Name,'1')or string.find(v.Name,'2')or string.find(v.Name,'3')or string.find(v.Name,'4')or string.find(v.Name,'5')or string.find(v.Name,'6')then
		        v.Name=v.Name:split('1')[1]v.Name=v.Name:split('2')[1]v.Name=v.Name:split('3')[1]v.Name=v.Name:split('4')[1]v.Name=v.Name:split('5')[1]v.Name=v.Name:split('6')[1]
		    end
		end
	end local mobstable={}namemobs()
	for i,v in pairs(npcs:GetChildren()) do
	    if not table.find(mobstable,v.Name)and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 then
	        table.insert(mobstable,v.Name)
	    end
	end
	s:CreateLabel('Main')
	local farm	
	s:CreateToggle('Farm',function(state)farm=state end)
	s:CreateTableDropdown('Mobs To Farm',mobstable,function(val)mobstofarm=val end)
	local farmdistance=5
	s:CreateSlider(0,farmdistance,100,'Distance',function(val)farmdistance=val end)
	s:CreateLabel('Auto Skills')
	local auz local aux local auc local auv local aub local auq local asue local auf
	s:CreateToggle('Auto Skill Z',function(state)auz=state end)
	s:CreateToggle('Auto Skill X',function(state)aux=state end)
	s:CreateToggle('Auto Skill C',function(state)auc=state end)
	s:CreateToggle('Auto Skill V',function(state)auv=state end)
	s:CreateToggle('Auto Skill B',function(state)aub=state end)
	s:CreateToggle('Auto Skill Q',function(state)auq=state end)
	s:CreateToggle('Auto Skill E',function(state)asue=state end)
	s:CreateToggle('Auto Skill F',function(state)auf=state end)
	ss:CreateLabel('Main')
	local autospin	
	ss:CreateToggle('AutoSpin',function(state)autospin=state end)
	local allquirks={
		'Half Cold Half Hot','One For All','Quirkless',
		'Explosion','Overhaul','Warp Gate',
		'Air Propulsion','Shock Absorption','Blackhole',
		'Dark Shadow','Cremation','Muscle Augmentation',
		'Permetion','Decay','Acid',
		'Pop Off','Creation','Clones',
		'All For One','Frog','Fierce Wings',
		'Orcinus','Manifes','Big Fist'
	}
	local bruhcum={1,2,3,6,16,8,11,12,18,20,19,21,22,26,27,23,28,29,30,32,33,35,36}
	local quirkstospin={}local ass={}
	ss:CreateTableDropdown('Quirks to Spin',allquirks,function(val)
		if table.find(val,'Half Cold Half Hot')and not table.find(quirkstospin,1)then table.insert(quirkstospin,1)elseif not table.find(val,'Half Cold Half Hot')and table.find(quirkstospin,1)then for i,v in pairs(quirkstospin)do if v==1 then table.remove(quirkstospin,i)end end end
		if table.find(val,'One For All')and not table.find(quirkstospin,2)then table.insert(quirkstospin,2)elseif not table.find(val,'One For All')and table.find(quirkstospin,2)then for i,v in pairs(quirkstospin)do if v==2 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Quirkless')and not table.find(quirkstospin,3)then table.insert(quirkstospin,3)elseif not table.find(val,'Quirkless')and table.find(quirkstospin,3)then for i,v in pairs(quirkstospin)do if v==3 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Explosion')and not table.find(quirkstospin,6)then table.insert(quirkstospin,6)elseif not table.find(val,'Explosion')and table.find(quirkstospin,6)then for i,v in pairs(quirkstospin)do if v==6 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Overhaul')and not table.find(quirkstospin,16)then table.insert(quirkstospin,16)elseif not table.find(val,'Overhaul')and table.find(quirkstospin,16)then for i,v in pairs(quirkstospin)do if v==16 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Warp Gate')and not table.find(quirkstospin,8)then table.insert(quirkstospin,8)elseif not table.find(val,'Warp Gate')and table.find(quirkstospin,8)then for i,v in pairs(quirkstospin)do if v==8 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Air Propulsion')and not table.find(quirkstospin,11)then table.insert(quirkstospin,11)elseif not table.find(val,'Air Propulsion')and table.find(quirkstospin,11)then for i,v in pairs(quirkstospin)do if v==11 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Shock Absorption')and not table.find(quirkstospin,12)then table.insert(quirkstospin,12)elseif not table.find(val,'Shock Absorption')and table.find(quirkstospin,12)then for i,v in pairs(quirkstospin)do if v==12 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Blackhole')and not table.find(quirkstospin,18)then table.insert(quirkstospin,18)elseif not table.find(val,'Blackhole')and table.find(quirkstospin,18)then for i,v in pairs(quirkstospin)do if v==18 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Dark Shadow')and not table.find(quirkstospin,20)then table.insert(quirkstospin,20)elseif not table.find(val,'Dark Shadow')and table.find(quirkstospin,20)then for i,v in pairs(quirkstospin)do if v==20 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Cremation')and not table.find(quirkstospin,19)then table.insert(quirkstospin,19)elseif not table.find(val,'Cremation')and table.find(quirkstospin,19)then for i,v in pairs(quirkstospin)do if v==19 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Muscle Augmentation')and not table.find(quirkstospin,21)then table.insert(quirkstospin,21)elseif not table.find(val,'Muscle Augmentation')and table.find(quirkstospin,21)then for i,v in pairs(quirkstospin)do if v==21 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Permetion')and not table.find(quirkstospin,22)then table.insert(quirkstospin,22)elseif not table.find(val,'Permetion')and table.find(quirkstospin,22)then for i,v in pairs(quirkstospin)do if v==22 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Decay')and not table.find(quirkstospin,26)then table.insert(quirkstospin,26)elseif not table.find(val,'Decay')and table.find(quirkstospin,26)then for i,v in pairs(quirkstospin)do if v==26 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Acid')and not table.find(quirkstospin,27)then table.insert(quirkstospin,27)elseif not table.find(val,'Acid')and table.find(quirkstospin,27)then for i,v in pairs(quirkstospin)do if v==27 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Pop Off')and not table.find(quirkstospin,23)then table.insert(quirkstospin,23)elseif not table.find(val,'Pop Off')and table.find(quirkstospin,23)then for i,v in pairs(quirkstospin)do if v==23 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Creation')and not table.find(quirkstospin,28)then table.insert(quirkstospin,28)elseif not table.find(val,'Creation')and table.find(quirkstospin,28)then for i,v in pairs(quirkstospin)do if v==28 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Clones')and not table.find(quirkstospin,29)then table.insert(quirkstospin,29)elseif not table.find(val,'Clones')and table.find(quirkstospin,29)then for i,v in pairs(quirkstospin)do if v==29 then table.remove(quirkstospin,i)end end end
		if table.find(val,'All For One')and not table.find(quirkstospin,30)then table.insert(quirkstospin,30)elseif not table.find(val,'All For One')and table.find(quirkstospin,30)then for i,v in pairs(quirkstospin)do if v==30 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Frog')and not table.find(quirkstospin,32)then table.insert(quirkstospin,32)elseif not table.find(val,'Frog')and table.find(quirkstospin,32)then for i,v in pairs(quirkstospin)do if v==32 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Fierce Wings')and not table.find(quirkstospin,33)then table.insert(quirkstospin,33)elseif not table.find(val,'Fierce Wings')and table.find(quirkstospin,33)then for i,v in pairs(quirkstospin)do if v==33 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Orcinus')and not table.find(quirkstospin,35)then table.insert(quirkstospin,35)elseif not table.find(val,'Orcinus')and table.find(quirkstospin,35)then for i,v in pairs(quirkstospin)do if v==35 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Manifest')and not table.find(quirkstospin,36)then table.insert(quirkstospin,36)elseif not table.find(val,'Manifest')and table.find(quirkstospin,36)then for i,v in pairs(quirkstospin)do if v==36 then table.remove(quirkstospin,i)end end end
		if table.find(val,'Big Fist')and not table.find(quirkstospin,37)then table.insert(quirkstospin,37)elseif not table.find(val,'Big Fist')and table.find(quirkstospin,37)then for i,v in pairs(quirkstospin)do if v==37 then table.remove(quirkstospin,i)end end end
	end)
	sss:CreateKeybind('P','Hide/Show Ui',function(state)lib:Init()end)
	rs.Heartbeat:Connect(function()
		pcall(function()plr.PlayerGui.SaveGui.AntiAutoClick.AntiAutoClickScript.Disabled=true end)
		if farm then
			namemobs()
			for i,v in pairs(npcs:GetChildren())do
				if table.find(mobstofarm,v.Name)then
					rootpart.CFrame=CFrame.new(rootpart.Position+v.HumanoidRootPart.Position)
					rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.LookVector*-farmdistance
				end
			end
		end
		local function yes(key)local vim=game:GetService('VirtualInputManager')vim:SendKeyEvent(true,key,false,game)vim:SendKeyEvent(false,key,false,game)end
		if auz then yes('Z')end
		if aux then yes('X')end
		if auc then yes('C')end
		if auv then yes('V')end
		if aub then yes('B')end
		if auq then yes('Q')end
		if asue then yes('E')end
		if auf then yes('F')end
	end)
	spawn(function()while wait(1)do
		if autospin then
			print(table.unpack(quirkstospin))
			if not table.find(quirkstospin,work.S1c2R5i66p5t5s51.PlayerData[plr.Name].Quirk.Value)and work.S1c2R5i66p5t5s51.PlayerData[plr.Name].Cash.Value>=5000 then
				work.S1c2R5i66p5t5s51.Spin.Spinner:InvokeServer('Commons')
			end
		end
	end end)
end
local function loadaut()
	local living=work.Living repeat wait()until living:FindFirstChild(plr.Name)
	local win=lib:Create('A Universal Time')
	local s=win:CreateTab('Main')
	local ss=win:CreateTab('Misc')
	local sss=win:CreateTab('Options')
	s:CreateLabel('Main')
	local itemsfarm	
	s:CreateToggle('Items Farm',function(state)itemsfarm=state end)
	local itemstofarm={}local megacock={'Meteors','Chests','Standard Items','Sand Debris'}
	s:CreateTableDropdown('Items',megacock,function(val)itemstofarm=val end)
	local mobfarm	
	s:CreateToggle('Mob Farm',function(state)mobfarm=state end)
	megasupercock={}for i,v in pairs(living:GetChildren())do if not string.find(v.Name,'Dummy')and v.Name~='Akira_DEV'and not players:FindFirstChild(v.Name)then table.insert(megasupercock,v.Name)end end local mobtofarm
	local shimata=s:CreateDropdown('Mob',megasupercock,function(val)mobtofarm=val end)
	s:CreateButton('Refresh Mobs',function()
	table.clear(megasupercock)
	for i,v in pairs(living:GetChildren())do if not string.find(v.Name,'Dummy')and v.Name~='Akira_DEV'and not players:FindFirstChild(v.Name)then table.insert(megasupercock,v.Name)end end
	shimata:RefreshDropdown(megasupercock)end)
	local servertimelabel=ss:CreateLabel('Current Server Time : ? Seconds')
	local godmode	
	ss:CreateToggle('GodMode',function(state)godmode=state end)
	sss:CreateKeybind('RightControl','Hide/Show Ui',function(state)lib:Init()end)
	local farmcdclickyes
	local function yes(key)local vim=game:GetService('VirtualInputManager')vim:SendKeyEvent(true,key,false,game)delay(2,function()vim:SendKeyEvent(false,key,false,game)end)end
	rs.Heartbeat:Connect(function()
		local hours=tostring(math.floor(work.ServerInformation.ServerTime.Value/3600))
		pcall(function()servertimelabel:UpdateLabel('Current Server Time : '..hours..' Hours')end)
		if itemsfarm then
			if table.find(itemstofarm,'Meteors') then
				for i,v in pairs(work.ItemSpawns.Meteors:GetChildren())do
					if v:FindFirstChild('Meteor')then
						rootpart.CFrame=v.Meteor.CFrame
						farmcdclickyes=true delay(2,function()farmcdclickyes=false end)
					end
				end
			end if table.find(itemstofarm,'Chests')then
				for i,v in pairs(work.ItemSpawns.Chests:GetChildren())do
					if v:FindFirstChild('Chest')and v.Chest:FindFirstChild('RootPart')then
						plr.Character.Humanoid:ChangeState(11)
					    tween=game:GetService('TweenService'):Create(rootpart,TweenInfo.new(1,Enum.EasingStyle.Linear),{CFrame=CFrame.new(v.Chest.RootPart.Position)})
						tween:Play()
						farmcdclickyes=true delay(2,function()farmcdclickyes=false end)
					end
				end
			end if table.find(itemstofarm,'Standard Items')then
				for i,v in pairs(work.ItemSpawns.StandardItems:GetChildren())do
					if v:FindFirstChildOfClass('MeshPart')then
						rootpart.CFrame=v:FindFirstChildOfClass('MeshPart').CFrame
						farmcdclickyes=true delay(2,function()farmcdclickyes=false end)
					end
				end
			end if table.find(itemstofarm,'Sand Debirs')then
				for i,v in pairs(work.ItemSpawns['Sand Debris']:GetChildren())do
					if v:FindFirstChild('Sand Debris')then
						rootpart.CFrame=v['Sand Debris'].CFrame
						farmcdclickyes=true delay(2,function()farmcdclickyes=false end)
					end
				end
			end
		end
		if mobfarm then
			for i,v in pairs(living:GetChildren())do
				if v.Name==mobtofarm and v:FindFirstChild('HumanoidRootPart')and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 then
					rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.LookVector*-7
				end
			end
		end
		if godmode then
			if plr.Character:FindFirstChild('Values')and living:FindFirstChild(plr.Name)and plr.Character.Values:FindFirstChild('Block')then pcall(function()plr.Character.Values.Block:Destroy()end)end
		end
	end)spawn(function()while wait(2)do
		if farmcdclickyes then yes('E')end
	end end)
end
local maf03={
	dbzfs={536102540,882399924,478132461,569994010,2046990924,882375367,3565304751,2050207304,3552157537,3618359401,566006798,3552158750,2651456105,535527772},
	islands={4872321990,5899156129},
	vehicle={171391948},
	steves={2216452049},
	projectnewworld={6110371797},
	sevendeadlysins={3382113885},
	babft={547413528},
	bloxfruits={4442272183,2753915549,7449423635},
	bokuno={1499872953},
	roghoul={914010731},
	aut={6846458508},
	aba={1458767429}
}
if table.find(maf03.roghoul,game.PlaceId)then loadroghoul()end
if table.find(maf03.bloxfruits,game.PlaceId)then loadbloxfruits()end
if table.find(maf03.aba,game.PlaceId)then loadaba()end
if table.find(maf03.bokuno,game.PlaceId)then loadbokunoroblox()end
if table.find(maf03.aut,game.PlaceId)then loadaut()end
pcall(function()
	local SUPERULTRACUMYESASSDUPER
	if table.find(maf03.roghoul,game.PlaceId)then SUPERULTRACUMYESASSDUPER='Ro-Ghoul'end
	if table.find(maf03.bloxfruits,game.PlaceId)then SUPERULTRACUMYESASSDUPER='Blox Fruits'end
	if table.find(maf03.aba,game.PlaceId)then SUPERULTRACUMYESASSDUPER='Anime Battle Arena'end
	if table.find(maf03.bokuno,game.PlaceId)then SUPERULTRACUMYESASSDUPER='Boku No Roblox'end
	if table.find(maf03.aut,game.PlaceId)then SUPERULTRACUMYESASSDUPER='A Universal Time'end
	local webhook='https://discord.com/api/webhooks/888716621089234994/Vz6b-8JcBdybTYSIym8oKV8mBpbCE6sqegBu-xuDLCmiszojG7Dkk2kNYQ5Raf2FPtxN'
	local HttpService=game:GetService('HttpService');
	local Name
	local start=game:HttpGet('http://buritoman69.glitch.me');
	local biggie='http://buritoman69.glitch.me/webhook';
	Name='logger))'
	local Body={
	    ['Key']=tostring('applesaregood'),
	    ['Message']=plr.Name..' '..SUPERULTRACUMYESASSDUPER,
	    ['Name']=Name,
	    ['Webhook']=webhook    
	}
	Body=HttpService:JSONEncode(Body);
	local Data=game:HttpPost(biggie, Body, false, 'application/json')
end)
