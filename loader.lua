if getgenv().moseloaded then return end
local work=game:GetService('Workspace')
local players=game:GetService('Players')local plr=players.LocalPlayer repeat wait()until game:IsLoaded()
local rs=game:GetService('RunService')
local rootpart rs.Heartbeat:Connect(function()pcall(function()rootpart=plr.Character.HumanoidRootPart end)end)
if not isfolder('Mose Hub')then makefolder('Mose Hub')end
local gamedata=pcall(function()readfile('Mose Hub\\'..game.PlaceId..'.Lua')end)
local http=game:GetService('HttpService')
local function savedata(filename,ttable)
	writefile('Mose Hub\\'..filename..'.Lua',http:JSONEncode(ttable))
end
local function loadData(filename)
	if isfile('Mose Hub\\'..filename..'.Lua')then
		return http:JSONDecode(readfile('Mose Hub\\'..filename..'.Lua'))
	end
end
local daysincelastuse
local lastusefile=loadData('LastUse')
if not lastusefile then
	savedata('LastUse',{Tick=tick()})
else
	if tick()-lastusefile.Tick>=86400 then
		savedata('LastUse',{Tick=tick()})
		daysincelastuse=true
	end
end
if daysincelastuse then
	local ts=game:GetService('TweenService')
	local b=Instance.new('BlurEffect',game:GetService('Lighting'))
	b.Size=0
	ts:Create(b,TweenInfo.new(.5),{Size=25}):Play()
	local RobloxCrashHandler=Instance.new('ScreenGui')
	local h=Instance.new('Frame')
	local hcorner=Instance.new('UICorner')
	local geykeybackground=Instance.new('Frame')
	local info=Instance.new('TextLabel')
	local getkebackgroundlist=Instance.new('UIListLayout')
	local getkebackgroundpadding=Instance.new('UIPadding')
	local getkebackgroundcorner=Instance.new('UICorner')
	local button=Instance.new('TextButton')
	local buttoncorner=Instance.new('UICorner')
	RobloxCrashHandler.Name='RobloxCrashHandler'
	RobloxCrashHandler.Parent=game:GetService('CoreGui')
	RobloxCrashHandler.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
	RobloxCrashHandler.ResetOnSpawn=false
	RobloxCrashHandler.DisplayOrder=1
	h.Name='h'
	h.Parent=RobloxCrashHandler
	h.BackgroundColor3=Color3.fromRGB(181,255,184)
	h.BorderSizePixel=0
	h.Position=UDim2.new(0.396889597,0,0.4364025,0)
	h.Size=UDim2.new(0,13,0,76)
	hcorner.CornerRadius=UDim.new(0,5)
	hcorner.Name='hcorner'
	hcorner.Parent=h
	geykeybackground.Name='geykeybackground'
	geykeybackground.Parent=h
	geykeybackground.BackgroundColor3=Color3.fromRGB(19,18,19)
	geykeybackground.BorderSizePixel=0
	geykeybackground.Position=UDim2.new(0.400000006,0,0,0)
	geykeybackground.Size=UDim2.new(0,358,0,76)
	info.Name='info'
	info.Parent=geykeybackground
	info.BackgroundColor3=Color3.fromRGB(254,206,254)
	info.BackgroundTransparency=1.000
	info.BorderSizePixel=0
	info.Position=UDim2.new(0.417299777,0,0.432666749,0)
	info.Size=UDim2.new(0,324,0,20)
	info.Font=Enum.Font.Gotham
	info.Text='New Version is Available'
	info.TextColor3=Color3.fromRGB(200,200,200)
	info.TextSize=15.000
	info.TextStrokeColor3=Color3.fromRGB(25,24,25)
	getkebackgroundlist.Name='getkebackgroundlist'
	getkebackgroundlist.Parent=geykeybackground
	getkebackgroundlist.HorizontalAlignment=Enum.HorizontalAlignment.Center
	getkebackgroundlist.SortOrder=Enum.SortOrder.LayoutOrder
	getkebackgroundlist.Padding=UDim.new(0,3)
	getkebackgroundpadding.Name='getkebackgroundpadding'
	getkebackgroundpadding.Parent=geykeybackground
	getkebackgroundpadding.PaddingTop=UDim.new(0,10)
	getkebackgroundcorner.CornerRadius=UDim.new(0,5)
	getkebackgroundcorner.Name='getkebackgroundcorner'
	getkebackgroundcorner.Parent=geykeybackground
	button.Name='button'
	button.Parent=geykeybackground
	button.BackgroundColor3=Color3.fromRGB(190,255,245)
	button.BorderSizePixel=0
	button.Position=UDim2.new(0.524540544,0,0.0586592183,0)
	button.Size=UDim2.new(0,324,0,28)
	button.Font=Enum.Font.Gotham
	button.Text='Update'
	button.TextColor3=Color3.fromRGB(25,24,25)
	button.TextSize=14.000
	buttoncorner.CornerRadius=UDim.new(0,5)
	buttoncorner.Name='buttoncorner'
	buttoncorner.Parent=button
	for i,v in pairs(RobloxCrashHandler:GetDescendants())do
		if v:IsA('TextButton')or v:IsA('Frame')or v:IsA('TextBox')then
			v.Transparency=1
		elseif v:IsA('TextLabel')then
			v.TextTransparency=1 
		end
	end
	for i,v in pairs(RobloxCrashHandler:GetDescendants())do
		if v:IsA('TextButton')or v:IsA('Frame')or v:IsA('TextBox')then 
			ts:Create(v,TweenInfo.new(.5),{Transparency=0}):Play()
		elseif v:IsA('TextLabel')then 
			ts:Create(v,TweenInfo.new(.5),{TextTransparency=0}):Play()
		end
	end
	local t
	button.MouseButton1Click:Connect(function()
		if t==nil or t~=nil and t.PlaybackState~=Enum.PlaybackState.Playing then
			t=ts:Create(button,TweenInfo.new(.15,Enum.EasingStyle.Quart),{Size=UDim2.new(0,0,0,28)}):Play()
		end
		for i,v in pairs(RobloxCrashHandler:GetDescendants())do
			if v:IsA('TextButton')or v:IsA('Frame')or v:IsA('TextBox')then
				ts:Create(v,TweenInfo.new(.5),{Transparency=1}):Play()
			elseif v:IsA('TextLabel')or v:IsA('TextButton')then 
				ts:Create(v,TweenInfo.new(.5),{TextTransparency=1}):Play()
			end
			ts:Create(b,TweenInfo.new(.5),{Size=0}):Play()
			task.delay(.5,function()
				RobloxCrashHandler:Destroy()
				b:Destroy()
			end)
		end
	end)
	repeat wait()until not RobloxCrashHandler.Parent
end
if not writefile or not readfile or not setclipboard then
	local ts=game:GetService('TweenService')
	local b=Instance.new('BlurEffect',game:GetService('Lighting'))
	b.Size=0
	ts:Create(b,TweenInfo.new(.5),{Size=25}):Play()
	local RobloxCrashHandler=Instance.new('ScreenGui')
	local h=Instance.new('Frame')
	local hcorner=Instance.new('UICorner')
	local geykeybackground=Instance.new('Frame')
	local info=Instance.new('TextLabel')
	local getkebackgroundlist=Instance.new('UIListLayout')
	local getkebackgroundpadding=Instance.new('UIPadding')
	local getkebackgroundcorner=Instance.new('UICorner')
	local button=Instance.new('TextButton')
	local buttoncorner=Instance.new('UICorner')
	RobloxCrashHandler.Name='RobloxCrashHandler'
	RobloxCrashHandler.Parent=game:GetService('CoreGui')
	RobloxCrashHandler.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
	RobloxCrashHandler.ResetOnSpawn=false
	RobloxCrashHandler.DisplayOrder=1
	h.Name='h'
	h.Parent=RobloxCrashHandler
	h.BackgroundColor3=Color3.fromRGB(181,255,184)
	h.BorderSizePixel=0
	h.Position=UDim2.new(0.396889597,0,0.4364025,0)
	h.Size=UDim2.new(0,13,0,76)
	hcorner.CornerRadius=UDim.new(0,5)
	hcorner.Name='hcorner'
	hcorner.Parent=h
	geykeybackground.Name='geykeybackground'
	geykeybackground.Parent=h
	geykeybackground.BackgroundColor3=Color3.fromRGB(19,18,19)
	geykeybackground.BorderSizePixel=0
	geykeybackground.Position=UDim2.new(0.400000006,0,0,0)
	geykeybackground.Size=UDim2.new(0,358,0,76)
	info.Name='info'
	info.Parent=geykeybackground
	info.BackgroundColor3=Color3.fromRGB(254,206,254)
	info.BackgroundTransparency=1.000
	info.BorderSizePixel=0
	info.Position=UDim2.new(0.417299777,0,0.432666749,0)
	info.Size=UDim2.new(0,324,0,20)
	info.Font=Enum.Font.Gotham
	info.Text='Unsupported Explot!'
	info.TextColor3=Color3.fromRGB(200,200,200)
	info.TextSize=15.000
	info.TextStrokeColor3=Color3.fromRGB(25,24,25)
	getkebackgroundlist.Name='getkebackgroundlist'
	getkebackgroundlist.Parent=geykeybackground
	getkebackgroundlist.HorizontalAlignment=Enum.HorizontalAlignment.Center
	getkebackgroundlist.SortOrder=Enum.SortOrder.LayoutOrder
	getkebackgroundlist.Padding=UDim.new(0,3)
	getkebackgroundpadding.Name='getkebackgroundpadding'
	getkebackgroundpadding.Parent=geykeybackground
	getkebackgroundpadding.PaddingTop=UDim.new(0,10)
	getkebackgroundcorner.CornerRadius=UDim.new(0,5)
	getkebackgroundcorner.Name='getkebackgroundcorner'
	getkebackgroundcorner.Parent=geykeybackground
	button.Name='button'
	button.Parent=geykeybackground
	button.BackgroundColor3=Color3.fromRGB(206,206,254)
	button.BorderSizePixel=0
	button.Position=UDim2.new(0.524540544,0,0.0586592183,0)
	button.Size=UDim2.new(0,324,0,28)
	button.Font=Enum.Font.Gotham
	button.Text='Close'
	button.TextColor3=Color3.fromRGB(25,24,25)
	button.TextSize=14.000
	buttoncorner.CornerRadius=UDim.new(0,5)
	buttoncorner.Name='buttoncorner'
	buttoncorner.Parent=button
	for i,v in pairs(RobloxCrashHandler:GetDescendants())do
		if v:IsA('TextButton')or v:IsA('Frame')or v:IsA('TextBox')then
			v.Transparency=1
		elseif v:IsA('TextLabel')then v.TextTransparency=1 end
	end
	for i,v in pairs(RobloxCrashHandler:GetDescendants())do
		if v:IsA('TextButton')or v:IsA('Frame')or v:IsA('TextBox')then
			ts:Create(v,TweenInfo.new(.5),{Transparency=0}):Play()
		elseif v:IsA('TextLabel')then
			ts:Create(v,TweenInfo.new(.5),{TextTransparency=0}):Play()
		end
	end
	local t
	button.MouseButton1Click:Connect(function()
		if t==nil or t~=nil and t.PlaybackState~=Enum.PlaybackState.Playing then
			local l=button.Size
			t=ts:Create(button,TweenInfo.new(.15,Enum.EasingStyle.Quart),{Size=UDim2.new(0,0,0,28)}):Play()
		end
		for i,v in pairs(RobloxCrashHandler:GetDescendants())do
			if v:IsA('TextButton')or v:IsA('Frame')or v:IsA('TextBox')then
				ts:Create(v,TweenInfo.new(.5),{Transparency=1}):Play()
			elseif v:IsA('TextLabel')or v:IsA('TextButton')then
				ts:Create(v,TweenInfo.new(.5),{TextTransparency=1}):Play()
			end
			ts:Create(b,TweenInfo.new(.5),{Size=0}):Play()
			task.delay(.5,function()
				RobloxCrashHandler:Destroy()
				b:Destroy()
			end)
		end
	end)
	return
end
--[[
local existingkey=loadData('Key')
local mosehubkey='somekey'
if not existingkey or existingkey and existingkey.Key~=mosehubkey then
	getgenv().XxXkeywasenteredZzZ=nil
	local ts=game:GetService('TweenService')
	local b=Instance.new('BlurEffect',game:GetService('Lighting'))
	b.Size=0
	ts:Create(b,TweenInfo.new(.5),{Size=25}):Play()
	local RobloxCrashHandler=Instance.new('ScreenGui')
	local h=Instance.new('Frame')
	local hcorner=Instance.new('UICorner')
	local enterkeybackground=Instance.new('Frame')
	local enterleybackgroundlist=Instance.new('UIListLayout')
	local enterleybackgroundpadding=Instance.new('UIPadding')
	local enterleybackgroundcorner=Instance.new('UICorner')
	local enterkeyinfo=Instance.new('TextLabel')
	local textbox=Instance.new('TextBox')
	local textboxcorner=Instance.new('UICorner')
	local geykeybackground=Instance.new('Frame')
	local getkeyinfo=Instance.new('TextLabel')
	local getkeybackgroundlist=Instance.new('UIListLayout')
	local getkeybackgroundpadding=Instance.new('UIPadding')
	local getkeybackgroundcorner=Instance.new('UICorner')
	local button=Instance.new('TextButton')
	local buttoncorner=Instance.new('UICorner')
	RobloxCrashHandler.Name='RobloxCrashHandler'
	RobloxCrashHandler.Parent=game:GetService('CoreGui')
	RobloxCrashHandler.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
	RobloxCrashHandler.ResetOnSpawn=false
	h.Name='h'
	h.Parent=RobloxCrashHandler
	h.BackgroundColor3=Color3.fromRGB(181,255,184)
	h.BorderSizePixel=0
	h.Position=UDim2.new(0.282424212,0,0.375446975,50)
	h.Size=UDim2.new(0,13,0,76)
	hcorner.CornerRadius=UDim.new(0,5)
	hcorner.Name='hcorner'
	hcorner.Parent=h
	enterkeybackground.Name='enterkeybackground'
	enterkeybackground.Parent=h
	enterkeybackground.BackgroundColor3=Color3.fromRGB(19,18,19)
	enterkeybackground.BorderSizePixel=0
	enterkeybackground.Position=UDim2.new(0.400000006,0,0,0)
	enterkeybackground.Size=UDim2.new(0,360,0,76)
	enterleybackgroundlist.Name='enterleybackgroundlist'
	enterleybackgroundlist.Parent=enterkeybackground
	enterleybackgroundlist.HorizontalAlignment=Enum.HorizontalAlignment.Center
	enterleybackgroundlist.SortOrder=Enum.SortOrder.LayoutOrder
	enterleybackgroundlist.Padding=UDim.new(0,3)
	enterleybackgroundpadding.Name='enterleybackgroundpadding'
	enterleybackgroundpadding.Parent=enterkeybackground
	enterleybackgroundpadding.PaddingTop=UDim.new(0,11)
	enterleybackgroundcorner.CornerRadius=UDim.new(0,5)
	enterleybackgroundcorner.Name='enterleybackgroundcorner'
	enterleybackgroundcorner.Parent=enterkeybackground
	enterkeyinfo.Name='enterkeyinfo'
	enterkeyinfo.Parent=enterkeybackground
	enterkeyinfo.BackgroundColor3=Color3.fromRGB(255,255,255)
	enterkeyinfo.BackgroundTransparency=1.000
	enterkeyinfo.BorderSizePixel=0
	enterkeyinfo.Position=UDim2.new(8,0,0.067172125,0)
	enterkeyinfo.Size=UDim2.new(0,158,0,20)
	enterkeyinfo.Font=Enum.Font.Gotham
	enterkeyinfo.Text='Enter Key'
	enterkeyinfo.TextColor3=Color3.fromRGB(200,200,200)
	enterkeyinfo.TextSize=15.000
	textbox.Name='textbox'
	textbox.Parent=enterkeybackground
	textbox.BackgroundColor3=Color3.fromRGB(25,24,25)
	textbox.BorderColor3=Color3.fromRGB(0,0,0)
	textbox.BorderSizePixel=0
	textbox.Position=UDim2.new(-0.10272219,0,0.652234554,0)
	textbox.Size=UDim2.new(0,324,0,25)
	textbox.ClearTextOnFocus=false
	textbox.Font=Enum.Font.Gotham
	textbox.PlaceholderColor3=Color3.fromRGB(150,150,150)
	textbox.Text=''
	textbox.TextColor3=Color3.fromRGB(200,200,200)
	textbox.TextSize=15.000
	textbox.ClearTextOnFocus=true textbox.PlaceholderText='?'
	textboxcorner.CornerRadius=UDim.new(0,5)
	textboxcorner.Name='textboxcorner'
	textboxcorner.Parent=textbox
	geykeybackground.Name='geykeybackground'
	geykeybackground.Parent=h
	geykeybackground.BackgroundColor3=Color3.fromRGB(19,18,19)
	geykeybackground.BorderSizePixel=0
	geykeybackground.Position=UDim2.new(30.7307701,30,0,0)
	geykeybackground.Size=UDim2.new(0,358,0,76)
	getkeyinfo.Name='getkeyinfo'
	getkeyinfo.Parent=geykeybackground
	getkeyinfo.BackgroundColor3=Color3.fromRGB(254,206,254)
	getkeyinfo.BackgroundTransparency=1.000
	getkeyinfo.BorderSizePixel=0
	getkeyinfo.Position=UDim2.new(0.0290316287,0,0.564245701,0)
	getkeyinfo.Size=UDim2.new(0,324,0,20)
	getkeyinfo.Font=Enum.Font.Gotham
	getkeyinfo.Text="Don't Know Where to Get Key for the Script?"
	getkeyinfo.TextColor3=Color3.fromRGB(200,200,200)
	getkeyinfo.TextSize=15.000
	getkeyinfo.TextStrokeColor3=Color3.fromRGB(25,24,25)
	getkeybackgroundlist.Name='getkeybackgroundlist'
	getkeybackgroundlist.Parent=geykeybackground
	getkeybackgroundlist.HorizontalAlignment=Enum.HorizontalAlignment.Center
	getkeybackgroundlist.SortOrder=Enum.SortOrder.LayoutOrder
	getkeybackgroundlist.Padding=UDim.new(0,3)
	getkeybackgroundpadding.Name='getkeybackgroundpadding'
	getkeybackgroundpadding.Parent=geykeybackground
	getkeybackgroundpadding.PaddingTop=UDim.new(0,10)
	getkeybackgroundcorner.CornerRadius=UDim.new(0,5)
	getkeybackgroundcorner.Name='getkeybackgroundcorner'
	getkeybackgroundcorner.Parent=geykeybackground
	button.Name='button'
	button.Parent=geykeybackground
	button.BackgroundColor3=Color3.fromRGB(190,255,245)
	button.BorderSizePixel=0
	button.Position=UDim2.new(0.524540544,0,0.0586592183,0)
	button.Size=UDim2.new(0,324,0,28)
	button.Font=Enum.Font.Gotham
	button.Text='Copy Discord'
	button.TextColor3=Color3.fromRGB(25,24,25)
	button.TextSize=15.000
	buttoncorner.CornerRadius=UDim.new(0,5)
	buttoncorner.Name='buttoncorner'
	buttoncorner.Parent=button
	local t button.MouseButton1Click:Connect(function()
		if t==nil or t~=nil and t.PlaybackState~=Enum.PlaybackState.Playing then
			local l=button.Size
			t=ts:Create(button,TweenInfo.new(.15,Enum.EasingStyle.Quart),{Size=UDim2.new(0,0,0,28)}):Play()
			ts:Create(button,TweenInfo.new(.15,Enum.EasingStyle.Quart),{TextTransparency=1}):Play()
			task.delay(.25,function()
				t=ts:Create(button,TweenInfo.new(.15,Enum.EasingStyle.Quart),{Size=l}):Play()
				ts:Create(button,TweenInfo.new(.15,Enum.EasingStyle.Quart),{TextTransparency=0}):Play()
			end)
		end 
		setclipboard('https://discord.gg/SHbAfEnAkK')
	end)
	for i,v in pairs(RobloxCrashHandler:GetDescendants())do
		if v:IsA('TextButton')or v:IsA('Frame')or v:IsA('TextBox')then
			v.Transparency=1
		elseif v:IsA('TextLabel')or v:IsA('TextButton')then
			v.TextTransparency=1
		end
	end
	for i,v in pairs(RobloxCrashHandler:GetDescendants())do
		if v:IsA('TextButton')or v:IsA('Frame')or v:IsA('TextBox')then
			ts:Create(v,TweenInfo.new(.5),{Transparency=0}):Play()
		elseif v:IsA('TextLabel')or v:IsA('TextButton')then 
			ts:Create(v,TweenInfo.new(.5),{TextTransparency=0}):Play()
		end
	end
	local function launch()
		ts:Create(b,TweenInfo.new(.5),{Size=0}):Play()
		for i,v in pairs(RobloxCrashHandler:GetDescendants())do
			if v:IsA('TextButton')or v:IsA('Frame')or v:IsA('TextBox')then
				ts:Create(v,TweenInfo.new(.5),{Transparency=1}):Play()
			elseif v:IsA('TextLabel')or v:IsA('TextButton')then
				ts:Create(v,TweenInfo.new(.5),{TextTransparency=1}):Play()
			end
		end 
		task.delay(.5,function()RobloxCrashHandler:Destroy()
			b:Destroy()
			getgenv().XxXkeywasenteredZzZ=true 
		end)
		savedata('Key',{Key=mosehubkey})
	end
	textbox.FocusLost:Connect(function(onenter)
		if onenter then
			local h=math.random(1,3)
			local submittedkey=textbox.Text
			if h==1 then
				textbox.Text='Checking Key.'
			elseif h==2 then
				textbox.Text='Checking Key..'
			elseif h==3 then
				textbox.Text='Checking Key...'
			end
			if submittedkey==mosehubkey then 
				textbox.ClearTextOnFocus=false 
				textbox.TextEditable=false 
				textbox.Text='Correct Key! Launching'
				launch()
			else 
				textbox.Text='Incorrect Key!'
				task.delay(.5,function()
					textbox.Text=''
				end)
			end
		end
	end)
	repeat wait()until getgenv().XxXkeywasenteredZzZ
end
]]
local moselib=function()
	local library={}
	local uis=game:GetService('UserInputService')
	local rainbowcolor local t=15 local hue=tick()%t/t local color=Color3.fromHSV(hue,1,1)
	spawn(function()
		while wait()do
			local hue=tick()%t/t
			rainbowcolor=Color3.fromHSV(hue,1,1)
		end
	end)
	local function smoothdrag(frame,grr)
		local function dragify(Frame)
			local dragToggle
			local dragInput local dragStart
			local dragPos local startPos
			local function updateInput(input)
				local Delta=input.Position-dragStart
				local Position=UDim2.new(startPos.X.Scale,startPos.X.Offset+Delta.X,startPos.Y.Scale,startPos.Y.Offset+Delta.Y)
				game:GetService('TweenService'):Create(Frame,TweenInfo.new(.25),{Position=Position}):Play()
			end
			grr.InputBegan:Connect(function(input)
				if(input.UserInputType==Enum.UserInputType.MouseButton1 or input.UserInputType==Enum.UserInputType.Touch) and uis:GetFocusedTextBox()==nil then
					dragToggle=true
					dragStart=input.Position
					startPos=Frame.Position
					input.Changed:Connect(function()
						if input.UserInputState==Enum.UserInputState.End then
							dragToggle=false
						end
					end)
				end
			end)
			grr.InputChanged:Connect(function(input)
				if input.UserInputType==Enum.UserInputType.MouseMovement or input.UserInputType==Enum.UserInputType.Touch then
					dragInput=input
				end
			end)
			game:GetService('UserInputService').InputChanged:Connect(function(input)
				if input==dragInput and dragToggle then
					updateInput(input)
				end
			end)
		end
		dragify(frame)
	end
	local ts=game:GetService('TweenService')
	function library:Create(lll)
		local RobloxCrashHandler=Instance.new('ScreenGui')
		RobloxCrashHandler.Name='RobloxCrashHandler'
		RobloxCrashHandler.Parent=game:GetService('CoreGui')
		RobloxCrashHandler.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
		RobloxCrashHandler.ResetOnSpawn=false
		RobloxCrashHandler.DisplayOrder=1
		local h=Instance.new('Frame')
		local tabs=Instance.new('Frame')
		local tabslist=Instance.new('UIListLayout')
		local tabspadding=Instance.new('UIPadding')
		local hcorner=Instance.new('UICorner')
		local mosehub=Instance.new('TextLabel')
		local gamename=Instance.new('TextLabel')
		local contentbackground=Instance.new('Frame')
		local contentcorner=Instance.new('UICorner')
		local grr=Instance.new('Frame')
		grr.Name='grr'
		grr.Parent=h
		grr.BackgroundColor3=Color3.fromRGB(0,0,0)
		grr.BackgroundTransparency=1.000
		grr.BorderSizePixel=0
		grr.Size=UDim2.new(0,522,0,357)smoothdrag(h,grr)
		contentbackground.Name='contentbackground'
		contentbackground.Parent=h
		contentbackground.BackgroundColor3=Color3.fromRGB(19,18,19)
		contentbackground.BorderSizePixel=0
		contentbackground.Position=UDim2.new(12.6538458,0,0,0)
		contentbackground.Size=UDim2.new(0,358,0,358)
		contentcorner.CornerRadius=UDim.new(0,5)
		contentcorner.Parent=contentbackground
		h.Name='h'
		h.Parent=RobloxCrashHandler
		h.BackgroundColor3=Color3.fromRGB(181,255,184)
		h.BorderSizePixel=0
		h.Position=UDim2.new(0.282424212,0,0.313468426,0)
		h.Size=UDim2.new(0,13,0,358)
		tabs.Name='tabs'
		tabs.Parent=h
		tabs.BackgroundColor3=Color3.fromRGB(19,18,19)
		tabs.BorderSizePixel=0
		tabs.Position=UDim2.new(0.538461566,0,0,0)
		tabs.Size=UDim2.new(0,164,0,358)
		tabslist.Name='tabslist'
		tabslist.Parent=tabs
		tabslist.HorizontalAlignment=Enum.HorizontalAlignment.Center
		tabslist.SortOrder=Enum.SortOrder.LayoutOrder
		tabslist.Padding=UDim.new(0,5)
		tabspadding.Name='tabspadding'
		tabspadding.Parent=tabs
		tabspadding.PaddingTop=UDim.new(0,30)
		hcorner.CornerRadius=UDim.new(0,5)
		hcorner.Name='hcorner'
		hcorner.Parent=h
		mosehub.Name='mosehub'
		mosehub.Parent=h
		mosehub.BackgroundColor3=Color3.fromRGB(255,255,255)
		mosehub.BackgroundTransparency=1.000
		mosehub.BorderSizePixel=0
		mosehub.Position=UDim2.new(0.538461566,0,0.902234614,0)
		mosehub.Size=UDim2.new(0,164,0,35)
		mosehub.Font=Enum.Font.Gotham
		mosehub.Text='Mose Hub'
		mosehub.TextColor3=Color3.fromRGB(200,200,200)
		mosehub.TextSize=20.000
		gamename.Name='gamename'
		gamename.Parent=h
		gamename.BackgroundColor3=Color3.fromRGB(255,255,255)
		gamename.BackgroundTransparency=1.000
		gamename.BorderSizePixel=0
		gamename.Position=UDim2.new(1,0,0.0195530728,0)
		gamename.Size=UDim2.new(0,158,0,20)
		gamename.Font=Enum.Font.Gotham
		gamename.Text=lll
		gamename.TextColor3=Color3.fromRGB(200,200,200)
		gamename.TextSize=15.000
		local insideh={}
		function insideh:CreateTab(name)
			local tabname=name..'_'..'ass'local contentlist=Instance.new('ScrollingFrame')
			local contentlistpadding=Instance.new('UIPadding')
			local contentlistlist=Instance.new('UIListLayout')
			local tabbutton=Instance.new('TextButton')
			local tabbuttoncorner=Instance.new('UICorner')
			contentlist.Name=tabname
			contentlist.Visible=false
			contentlist.Parent=contentbackground
			contentlist.Active=true
			contentlist.BackgroundColor3=Color3.fromRGB(255,255,255)
			contentlist.BackgroundTransparency=1.000
			contentlist.BorderSizePixel=0
			contentlist.Position=UDim2.new(0.0181564242,0,0,0)
			contentlist.Size=UDim2.new(-0.00800000038,352,0,358)
			contentlist.ScrollBarThickness=6
			contentlistpadding.Name='tabspadding'
			contentlistpadding.Parent=contentlist
			contentlistpadding.PaddingRight=UDim.new(0,15)
			contentlistpadding.PaddingTop=UDim.new(0,15)
			contentlistlist.Name='tabslist'
			contentlistlist.Parent=contentlist
			contentlistlist.HorizontalAlignment=Enum.HorizontalAlignment.Right
			contentlistlist.SortOrder=Enum.SortOrder.LayoutOrder
			contentlistlist.Padding=UDim.new(0,3)
			tabbutton.Name=tabname
			tabbutton.Parent=tabs
			tabbutton.BackgroundColor3=Color3.fromRGB(19,18,19)
			tabbutton.BorderSizePixel=0
			tabbutton.Position=UDim2.new(0.0365853645,0,0.100558661,0)
			tabbutton.Size=UDim2.new(0,151,0,28)
			tabbutton.Font=Enum.Font.Gotham
			tabbutton.Text=name
			tabbutton.TextColor3=Color3.fromRGB(200,200,200)
			tabbutton.TextSize=14.000
			tabbuttoncorner.CornerRadius=UDim.new(0,5)
			tabbuttoncorner.Name='tabbuttoncorner'
			tabbuttoncorner.Parent=tabbutton
			tabbutton.MouseButton1Click:Connect(function()
				if contentlist.Visible then
					tabbutton.BackgroundColor3=Color3.fromRGB(19,18,19)contentlist.Visible=false tabbutton.TextColor3=Color3.fromRGB(200,200,200)
				else
					tabbutton.BackgroundColor3=Color3.fromRGB(254,239,206)contentlist.Visible=true tabbutton.TextColor3=Color3.fromRGB(25,24,25)
					for i,v in pairs(contentbackground:GetChildren())do if v.Name~=tabname and v.Name:split('_')[2]=='ass'then v.Visible=false end end
					for i,v in pairs(tabs:GetChildren())do if v.Name~=tabname and v.Name:split('_')[2]=='ass'then v.BackgroundColor3=Color3.fromRGB(19,18,19)v.TextColor3=Color3.fromRGB(200,200,200)end end
				end
			end)
			game:GetService('RunService').Heartbeat:Connect(function()contentlist.CanvasSize=UDim2.new(0,0,0,contentlistlist.AbsoluteContentSize.Y+30)end)
			local insidetab={}
			function insidetab:CreateButton(text,callback)
				callback=callback or function()end
				local button=Instance.new('TextButton')
				local buttoncorner=Instance.new('UICorner')
				button.Name='button'
				button.Parent=contentlist
				button.BackgroundColor3=Color3.fromRGB(190,255,245)
				button.BorderSizePixel=0
				button.Position=UDim2.new(0.524540544,0,0.0586592183,0)
				button.Size=UDim2.new(0,324,0,28)
				button.Font=Enum.Font.Gotham
				button.Text=text
				button.TextColor3=Color3.fromRGB(25,24,25)
				button.TextSize=14.000
				buttoncorner.CornerRadius=UDim.new(0,5)
				buttoncorner.Name='buttoncorner'
				buttoncorner.Parent=button
				local t button.MouseButton1Click:Connect(function()
					if t==nil or t~=nil and t.PlaybackState~=Enum.PlaybackState.Playing then
						local l=button.Size t=ts:Create(button,TweenInfo.new(.15,Enum.EasingStyle.Quart),{Size=UDim2.new(0,0,0,28)}):Play()
						delay(.25,function()t=ts:Create(button,TweenInfo.new(.15,Enum.EasingStyle.Quart),{Size=l}):Play()end)
					end callback()
				end)
				local insidebutton={}
				function insidebutton:RefreshText(newtext)button.Text=newtext end return insidebutton
			end
			function insidetab:CreateToggle(text,callback,enabled)if not enabled then enabled='rat'end
				callback=callback or function()end local state=false if enabled==true then state=enabled end
				local toggle=Instance.new('TextButton')
				local togglecorner=Instance.new('UICorner')
				local toggleframe=Instance.new('Frame')
				local toggleframecorner=Instance.new('UICorner')
				local toggleinfo=Instance.new('TextLabel')
				toggle.Name='toggle'
				toggle.Parent=contentlist
				toggle.BackgroundColor3=Color3.fromRGB(25,24,25)
				toggle.BorderSizePixel=0
				toggle.Position=UDim2.new(0.876838803,0,0.13407822,0)
				toggle.Size=UDim2.new(0,28,0,28)
				toggle.Font=Enum.Font.Gotham
				toggle.Text=''
				toggle.TextColor3=Color3.fromRGB(25,24,25)
				toggle.TextSize=14.000
				togglecorner.CornerRadius=UDim.new(0,100)
				togglecorner.Name='togglecorner'
				togglecorner.Parent=toggle
				toggleframe.Name='toggleframe'
				toggleframe.Parent=toggle
				toggleframe.BackgroundColor3=Color3.fromRGB(243,249,175)
				if state then toggleframe.BackgroundColor3=Color3.fromRGB(206,206,254)end
				toggleframe.Position=UDim2.new(0.106999997,0,0.139999997,0)
				toggleframe.Size=UDim2.new(0.125,18,0.0214283131,21)
				toggleframecorner.CornerRadius=UDim.new(0,100)
				toggleframecorner.Name='toggleframecorner'
				toggleframecorner.Parent=toggleframe
				toggleinfo.Name='toggleinfo'
				toggleinfo.Parent=toggle
				toggleinfo.BackgroundColor3=Color3.fromRGB(0,0,0)
				toggleinfo.BackgroundTransparency=1.000
				toggleinfo.BorderSizePixel=0
				toggleinfo.Position=UDim2.new(-10.5714283,0,0.109999523,0)
				toggleinfo.Size=UDim2.new(0,324,0,24)
				toggleinfo.Font=Enum.Font.Gotham
				toggleinfo.Text=text
				toggleinfo.TextColor3=Color3.fromRGB(200,200,200)
				toggleinfo.TextSize=15.000
				toggleinfo.TextXAlignment=Enum.TextXAlignment.Left
				local t toggle.MouseButton1Click:Connect(function()
					if t==nil or t~=nil and t.PlaybackState~=Enum.PlaybackState.Playing then
						if state then t=ts:Create(toggleframe,TweenInfo.new(.5),{BackgroundColor3=Color3.fromRGB(243,249,175)}):Play()else
							t=ts:Create(toggleframe,TweenInfo.new(.5),{BackgroundColor3=Color3.fromRGB(206,206,254)}):Play()
						end
					state=not state
					end callback(state)
				end)
			end
			function insidetab:CreateDropdown(info,tableh,callback,showabledropdown)if showabledropdown==nil then showabledropdown='not used'end
				callback=callback or function()end local state=false
				local dropdown=Instance.new('TextButton')
				local dropdowncontent=Instance.new('Frame')
				local dropdowncontentcorner=Instance.new('UICorner')
				local dropdowncontentlist=Instance.new('ScrollingFrame')
				local dropdowncontentlistlist=Instance.new('UIListLayout')
				local opendropdownbutton=Instance.new('ImageButton')
				local dropdowninfo=Instance.new('TextLabel')
				local dropdowncorner=Instance.new('UICorner')
				dropdown.Parent=contentlist
				dropdown.Name='dropdown'
				dropdown.BackgroundColor3=Color3.fromRGB(25,24,25)
				dropdown.BorderSizePixel=0
				dropdown.Position=UDim2.new(0.0290316287,0,0.215083793,0)
				dropdown.Size=UDim2.new(0,324,0,25)
				dropdown.Font=Enum.Font.Gotham
				dropdown.Text=''
				dropdown.TextColor3=Color3.fromRGB(200,200,200)
				dropdown.TextSize=14.000
				dropdowncontent.Name='dropdowncontent'
				dropdowncontent.Parent=contentlist
				dropdowncontent.BackgroundColor3=Color3.fromRGB(174,234,249)
				dropdowncontent.BorderSizePixel=0
				dropdowncontent.Position=UDim2.new(0.0290316287,0,0.293296099,0)
				dropdowncontent.Size=UDim2.new(0,324,0,0)
				dropdowncontentcorner.CornerRadius=UDim.new(0,5)
				dropdowncontentcorner.Name='dropdowncontentcorner'
				dropdowncontentcorner.Parent=dropdowncontent
				dropdowncontentlist.Name='dropdowncontentlist'
				dropdowncontentlist.Parent=dropdowncontent
				dropdowncontentlist.Active=true
				dropdowncontentlist.BackgroundColor3=Color3.fromRGB(255,255,255)
				dropdowncontentlist.BackgroundTransparency=1.000
				dropdowncontentlist.BorderSizePixel=0
				dropdowncontentlist.Size=UDim2.new(0,324,0,0)
				dropdowncontentlist.ScrollBarThickness=0
				dropdowncontentlistlist.Name='dropdowncontentlistlist'
				dropdowncontentlistlist.Parent=dropdowncontentlist
				dropdowncontentlistlist.HorizontalAlignment=Enum.HorizontalAlignment.Right
				dropdowncontentlistlist.SortOrder=Enum.SortOrder.LayoutOrder
				dropdowncontentlistlist.Padding=UDim.new(0,3)
				dropdowncorner.Name='dropdowncorner'
				dropdowncorner.Parent=dropdown
				opendropdownbutton.Name='dropdownbutton'
				opendropdownbutton.Parent=dropdown
				opendropdownbutton.BackgroundTransparency=1.000
				opendropdownbutton.Position=UDim2.new(0.891975284,0,0,0)
				opendropdownbutton.Rotation=90.000
				opendropdownbutton.Size=UDim2.new(0,25,0,25)
				opendropdownbutton.ZIndex=2
				opendropdownbutton.Image='rbxassetid://3926305904'
				opendropdownbutton.ImageRectOffset=Vector2.new(444,844)
				opendropdownbutton.ImageRectSize=Vector2.new(36,36)
				dropdowninfo.Name='dropdowninfo'
				dropdowninfo.Parent=dropdown
				dropdowninfo.BackgroundColor3=Color3.fromRGB(255,255,255)
				dropdowninfo.BackgroundTransparency=1.000
				dropdowninfo.BorderSizePixel=0
				dropdowninfo.Position=UDim2.new(0.0401234552,0,0.119999997,0)
				dropdowninfo.Size=UDim2.new(0,311,0,18)
				dropdowninfo.Font=Enum.Font.Gotham
				dropdowninfo.Text=info
				dropdowninfo.TextColor3=Color3.fromRGB(200,200,200)
				dropdowninfo.TextSize=15.000
				dropdowninfo.TextXAlignment=Enum.TextXAlignment.Left
				local function ass(a)
					for i,v in pairs(a)do
						local dropdownbutton=Instance.new('TextButton')
						local dropdownbuttoncorner=Instance.new('UICorner')
						dropdownbutton.Name='dropdownbutton'
						dropdownbutton.Parent=dropdowncontentlist
						dropdownbutton.BackgroundColor3=Color3.fromRGB(174,234,249)
						dropdownbutton.BorderSizePixel=0
						dropdownbutton.Position=UDim2.new(0.524540544,0,0.0586592183,0)
						dropdownbutton.Size=UDim2.new(0,324,0,28)
						dropdownbutton.Font=Enum.Font.Gotham
						dropdownbutton.Text=v 
						if showabledropdown~='not used'then dropdownbutton.Text=showabledropdown[i]end
						dropdownbutton.TextColor3=Color3.fromRGB(25,24,25)
						dropdownbutton.TextSize=14.000
						dropdownbuttoncorner.CornerRadius=UDim.new(0,5)
						dropdownbuttoncorner.Name='dropdownbuttoncorner'
						dropdownbuttoncorner.Parent=dropdownbutton
						local t dropdownbutton.MouseButton1Click:Connect(function()
							if t==nil or t~=nil and t.PlaybackState~=Enum.PlaybackState.Playing then
								t=ts:Create(dropdowncontent,TweenInfo.new(.25),{Size=UDim2.new(0,324,0,0)}):Play()
								ts:Create(dropdowncontentlist,TweenInfo.new(.25),{Size=UDim2.new(0,324,0,0)}):Play()
								ts:Create(dropdowncontentlist,TweenInfo.new(.25),{CanvasSize=UDim2.new(0,324,0,0)}):Play()
								ts:Create(opendropdownbutton,TweenInfo.new(.25),{Rotation=270}):Play()
								state=false callback(v)dropdowninfo.Text=v if showabledropdown~='not used'then dropdowninfo.Text=showabledropdown[i]end
							end
						end)
					end
				end ass(tableh)
				local function grr()
					local t if t==nil or t~=nil and t.PlaybackState~=Enum.PlaybackState.Playing then
						if state then
							t=ts:Create(dropdowncontent,TweenInfo.new(.25),{Size=UDim2.new(0,324,0,0)}):Play()
							ts:Create(dropdowncontentlist,TweenInfo.new(.25),{Size=UDim2.new(0,324,0,0)}):Play()
							ts:Create(dropdowncontentlist,TweenInfo.new(.25),{CanvasSize=UDim2.new(0,324,0,0)}):Play()
							ts:Create(opendropdownbutton,TweenInfo.new(.25),{Rotation=270}):Play()
						else	
							if dropdowncontentlistlist.AbsoluteContentSize.Y<=112 then
								t=ts:Create(dropdowncontent,TweenInfo.new(.25),{Size=UDim2.new(0,324,0,dropdowncontentlistlist.AbsoluteContentSize.Y)}):Play()
								ts:Create(dropdowncontentlist,TweenInfo.new(.25),{Size=UDim2.new(0,324,0,dropdowncontentlistlist.AbsoluteContentSize.Y)}):Play()
								ts:Create(dropdowncontentlist,TweenInfo.new(.25),{CanvasSize=UDim2.new(0,324,0,dropdowncontentlistlist.AbsoluteContentSize.Y)}):Play()
							else
								t=ts:Create(dropdowncontent,TweenInfo.new(.25),{Size=UDim2.new(0,324,0,112)}):Play()
								ts:Create(dropdowncontentlist,TweenInfo.new(.25),{Size=UDim2.new(0,324,0,112)}):Play()
								ts:Create(dropdowncontentlist,TweenInfo.new(.25),{CanvasSize=UDim2.new(0,324,0,dropdowncontentlistlist.AbsoluteContentSize.Y)}):Play()
							end
							ts:Create(opendropdownbutton,TweenInfo.new(.25),{Rotation=90}):Play()
						end
						state=not state
					end
				end
				opendropdownbutton.MouseButton1Click:Connect(function()grr()end)dropdown.MouseButton1Click:Connect(function()grr()end)
				local insidedropdown={}
				function insidedropdown:Refresh(newtable)
					for i,v in pairs(dropdowncontentlist:GetChildren())do if v.Name=='dropdownbutton'then v:Destroy()end end ass(newtable)
					if state then grr()delay(.25,function()grr()end)end dropdowninfo.Text=info
				end
				return insidedropdown
			end
			function insidetab:CreateTableDropdown(info,tableh,callback,showabledropdown)if showabledropdown==nil then showabledropdown='not used'end
				callback=callback or function()end local state=false local selectedcontent={}
				local dropdown=Instance.new('TextButton')
				local dropdowncontent=Instance.new('Frame')
				local dropdowncontentcorner=Instance.new('UICorner')
				local dropdowncontentlist=Instance.new('ScrollingFrame')
				local dropdowncontentlistlist=Instance.new('UIListLayout')
				local opendropdownbutton=Instance.new('ImageButton')
				local dropdowninfo=Instance.new('TextLabel')
				local dropdowncorner=Instance.new('UICorner')
				dropdown.Parent=contentlist
				dropdown.Name='dropdown'
				dropdown.BackgroundColor3=Color3.fromRGB(25,24,25)
				dropdown.BorderSizePixel=0
				dropdown.Position=UDim2.new(0.0290316287,0,0.215083793,0)
				dropdown.Size=UDim2.new(0,324,0,25)
				dropdown.Font=Enum.Font.Gotham
				dropdown.Text=''
				dropdown.TextColor3=Color3.fromRGB(200,200,200)
				dropdown.TextSize=14.000
				dropdowncontent.Name='dropdowncontent'
				dropdowncontent.Parent=contentlist
				dropdowncontent.BackgroundColor3=Color3.fromRGB(174,234,249)
				dropdowncontent.BorderSizePixel=0
				dropdowncontent.Position=UDim2.new(0.0290316287,0,0.293296099,0)
				dropdowncontent.Size=UDim2.new(0,324,0,0)
				dropdowncontentcorner.CornerRadius=UDim.new(0,5)
				dropdowncontentcorner.Name='dropdowncontentcorner'
				dropdowncontentcorner.Parent=dropdowncontent
				dropdowncontentlist.Name='dropdowncontentlist'
				dropdowncontentlist.Parent=dropdowncontent
				dropdowncontentlist.Active=true
				dropdowncontentlist.BackgroundColor3=Color3.fromRGB(255,255,255)
				dropdowncontentlist.BackgroundTransparency=1.000
				dropdowncontentlist.BorderSizePixel=0
				dropdowncontentlist.Size=UDim2.new(0,324,0,0)
				dropdowncontentlist.ScrollBarThickness=0
				dropdowncontentlistlist.Name='dropdowncontentlistlist'
				dropdowncontentlistlist.Parent=dropdowncontentlist
				dropdowncontentlistlist.HorizontalAlignment=Enum.HorizontalAlignment.Right
				dropdowncontentlistlist.SortOrder=Enum.SortOrder.LayoutOrder
				dropdowncontentlistlist.Padding=UDim.new(0,3)
				dropdowncorner.Name='dropdowncorner'
				dropdowncorner.Parent=dropdown
				opendropdownbutton.Name='dropdownbutton'
				opendropdownbutton.Parent=dropdown
				opendropdownbutton.BackgroundTransparency=1.000
				opendropdownbutton.Position=UDim2.new(0.891975284,0,0,0)
				opendropdownbutton.Rotation=90.000
				opendropdownbutton.Size=UDim2.new(0,25,0,25)
				opendropdownbutton.ZIndex=2
				opendropdownbutton.Image='rbxassetid://3926305904'
				opendropdownbutton.ImageRectOffset=Vector2.new(444,844)
				opendropdownbutton.ImageRectSize=Vector2.new(36,36)
				dropdowninfo.Name='dropdowninfo'
				dropdowninfo.Parent=dropdown
				dropdowninfo.BackgroundColor3=Color3.fromRGB(255,255,255)
				dropdowninfo.BackgroundTransparency=1.000
				dropdowninfo.BorderSizePixel=0
				dropdowninfo.Position=UDim2.new(0.0401234552,0,0.119999997,0)
				dropdowninfo.Size=UDim2.new(0,311,0,18)
				dropdowninfo.Font=Enum.Font.Gotham
				dropdowninfo.Text=info
				dropdowninfo.TextColor3=Color3.fromRGB(200,200,200)
				dropdowninfo.TextSize=15.000
				dropdowninfo.TextXAlignment=Enum.TextXAlignment.Left
				local function ass(a)
					for i,v in pairs(a)do
						local dropdownbutton=Instance.new('TextButton')
						local dropdownbuttoncorner=Instance.new('UICorner')
						dropdownbutton.Name='dropdownbutton'
						dropdownbutton.Parent=dropdowncontentlist
						dropdownbutton.BackgroundColor3=Color3.fromRGB(174,234,249)
						dropdownbutton.BorderSizePixel=0
						dropdownbutton.Position=UDim2.new(0.524540544,0,0.0586592183,0)
						dropdownbutton.Size=UDim2.new(0,324,0,28)
						dropdownbutton.Font=Enum.Font.Gotham
						dropdownbutton.Text=v 
						if showabledropdown~='not used'then dropdownbutton.Text=showabledropdown[i]end
						dropdownbutton.TextColor3=Color3.fromRGB(25,24,25)
						dropdownbutton.TextSize=14.000
						dropdownbuttoncorner.CornerRadius=UDim.new(0,5)
						dropdownbuttoncorner.Name='dropdownbuttoncorner'
						dropdownbuttoncorner.Parent=dropdownbutton
						local t dropdownbutton.MouseButton1Click:Connect(function()
							if t==nil or t~=nil and t.PlaybackState~=Enum.PlaybackState.Playing then
								if table.find(selectedcontent,v)then
									t=ts:Create(dropdownbutton,TweenInfo.new(.25),{BackgroundColor3=Color3.fromRGB(174,234,249)}):Play()
									for _,b in pairs(selectedcontent)do if b==v then table.remove(selectedcontent,_)end end
								else
									t=ts:Create(dropdownbutton,TweenInfo.new(.25),{BackgroundColor3=Color3.fromRGB(181,255,184)}):Play()
									table.insert(selectedcontent,v)
								end
								if #selectedcontent==1 then if showabledropdown~='not used'then dropdowninfo.Text=showabledropdown[i]else dropdowninfo.Text=v end
								elseif #selectedcontent>1 then dropdowninfo.Text='Several Options Selected'
								elseif #selectedcontent<1 then dropdowninfo.Text=info end
								callback(selectedcontent)
							end
						end)
					end
				end ass(tableh)
				local function grr()
					local t if t==nil or t~=nil and t.PlaybackState~=Enum.PlaybackState.Playing then
						if state then
							t=ts:Create(dropdowncontent,TweenInfo.new(.25),{Size=UDim2.new(0,324,0,0)}):Play()
							ts:Create(dropdowncontentlist,TweenInfo.new(.25),{Size=UDim2.new(0,324,0,0)}):Play()
							ts:Create(dropdowncontentlist,TweenInfo.new(.25),{CanvasSize=UDim2.new(0,324,0,0)}):Play()
							ts:Create(opendropdownbutton,TweenInfo.new(.25),{Rotation=270}):Play()
						else	
							if dropdowncontentlistlist.AbsoluteContentSize.Y<=112 then
								t=ts:Create(dropdowncontent,TweenInfo.new(.25),{Size=UDim2.new(0,324,0,dropdowncontentlistlist.AbsoluteContentSize.Y)}):Play()
								ts:Create(dropdowncontentlist,TweenInfo.new(.25),{Size=UDim2.new(0,324,0,dropdowncontentlistlist.AbsoluteContentSize.Y)}):Play()
								ts:Create(dropdowncontentlist,TweenInfo.new(.25),{CanvasSize=UDim2.new(0,324,0,dropdowncontentlistlist.AbsoluteContentSize.Y)}):Play()
							else
								t=ts:Create(dropdowncontent,TweenInfo.new(.25),{Size=UDim2.new(0,324,0,112)}):Play()
								ts:Create(dropdowncontentlist,TweenInfo.new(.25),{Size=UDim2.new(0,324,0,112)}):Play()
								ts:Create(dropdowncontentlist,TweenInfo.new(.25),{CanvasSize=UDim2.new(0,324,0,dropdowncontentlistlist.AbsoluteContentSize.Y)}):Play()
							end
							ts:Create(opendropdownbutton,TweenInfo.new(.25),{Rotation=90}):Play()
						end
						state=not state
					end
				end
				opendropdownbutton.MouseButton1Click:Connect(function()grr()end)dropdown.MouseButton1Click:Connect(function()grr()end)
				local insidetabledropdown={}
				function insidetabledropdown:Refresh(newtable)
					if #selectedcontent>0 then table.clear(selectedcontent)end for i,v in pairs(dropdowncontentlist:GetChildren())do if v.Name=='dropdownbutton'then v:Destroy()end end
					ass(newtable)if state then grr()delay(.25,function()grr()end)end dropdowninfo.Text=info
				end
				return insidetabledropdown
			end
			function insidetab:CreateLabel(text)
				local label=Instance.new('TextLabel')
				local labelcorner=Instance.new('UICorner')
				label.Name='label'
				label.Parent=contentlist
				label.BackgroundColor3=Color3.fromRGB(254,206,254)
				label.BorderSizePixel=0
				label.Position=UDim2.new(0.0290316287,0,0.564245701,0)
				label.Size=UDim2.new(0,324,0,20)
				label.Font=Enum.Font.Gotham
				label.Text=text
				label.TextColor3=Color3.fromRGB(25,24,25)
				label.TextSize=15.000
				label.TextStrokeColor3=Color3.fromRGB(25,24,25)
				labelcorner.CornerRadius=UDim.new(0,5)
				labelcorner.Name='labelcorner'
				labelcorner.Parent=label
				local insidelabel={}
				function insidelabel:Refresh(newtext)label.Text=newtext end
				function insidelabel:Destroy(newtext)label:Destroy()end return insidelabel
			end
			function insidetab:CreateSlider(minvalue,currentvalue,maxvalue,info,callback)
				callback=callback or function()end local value=currentvalue
				local sliderbutton=Instance.new('TextButton')
				local sliderbuttoncorner=Instance.new('UICorner')
				local sliderpoint=Instance.new('Frame')
				local sliderpointcorner=Instance.new('UICorner')
				local sliderinfo=Instance.new('TextLabel')
				local slidervalue=Instance.new('TextLabel')
				local sliderinfocorner=Instance.new('UICorner')
				sliderinfo.Name='sliderinfo'
				sliderinfo.Parent=contentlist
				sliderinfo.BackgroundColor3=Color3.fromRGB(254,206,254)
				sliderinfo.BackgroundTransparency=1.000
				sliderinfo.BorderSizePixel=0
				sliderinfo.Position=UDim2.new(0.0290316287,0,0.564245701,0)
				sliderinfo.Size=UDim2.new(0,324,0,20)
				sliderinfo.Font=Enum.Font.Gotham
				sliderinfo.Text=info
				sliderinfo.TextColor3=Color3.fromRGB(200,200,200)
				sliderinfo.TextSize=15.000
				sliderinfo.TextStrokeColor3=Color3.fromRGB(25,24,25)
				sliderinfo.TextXAlignment=Enum.TextXAlignment.Left
				slidervalue.Name='slidervalue'
				slidervalue.Parent=sliderinfo
				slidervalue.BackgroundColor3=Color3.fromRGB(254,206,254)
				slidervalue.BackgroundTransparency=1.000
				slidervalue.BorderSizePixel=0
				slidervalue.Size=UDim2.new(0,324,0,20)
				slidervalue.Font=Enum.Font.Gotham
				slidervalue.Text=currentvalue..'/'..maxvalue
				slidervalue.TextColor3=Color3.fromRGB(200,200,200)
				slidervalue.TextSize=15.000
				slidervalue.TextStrokeColor3=Color3.fromRGB(25,24,25)
				slidervalue.TextXAlignment=Enum.TextXAlignment.Right
				sliderbutton.Name='sliderbutton'
				sliderbutton.Parent=contentlist
				sliderbutton.BackgroundColor3=Color3.fromRGB(206,206,254)
				sliderbutton.BorderSizePixel=0
				sliderbutton.Position=UDim2.new(0.524540544,0,0.0586592183,0)
				sliderbutton.Size=UDim2.new(0,324,0,7)
				sliderbutton.Font=Enum.Font.Gotham
				sliderbutton.Text=''
				sliderbutton.TextColor3=Color3.fromRGB(25,24,25)
				sliderbutton.TextSize=14.000
				sliderbuttoncorner.CornerRadius=UDim.new(0,5)
				sliderbuttoncorner.Name='sliderbuttoncorner'
				sliderbuttoncorner.Parent=sliderbutton
				sliderpoint.Name='sliderpoint'
				sliderpoint.Parent=sliderbutton
				sliderpoint.BackgroundColor3=Color3.fromRGB(254,239,206)
				sliderpoint.BorderSizePixel=0
				sliderpoint.Size=UDim2.new(0,13,0,7)
				sliderpointcorner.CornerRadius=UDim.new(0,5)
				sliderpointcorner.Name='sliderpointcorner'
				sliderpointcorner.Parent=sliderpoint
				sliderinfocorner.CornerRadius=UDim.new(0,5)
				sliderinfocorner.Name='sliderinfocorner'
				sliderinfocorner.Parent=slidervalue
				local mouse=game:GetService('Players').LocalPlayer:GetMouse()
				sliderbutton.MouseButton1Down:Connect(function()
					sliderpoint.Size=UDim2.new(0,math.clamp(mouse.X-sliderpoint.AbsolutePosition.X,0,324),0,7)
					value=math.floor((((tonumber(maxvalue)-tonumber(minvalue))/324)*sliderpoint.AbsoluteSize.X)+tonumber(minvalue))or 0 callback(value)
					slidervalue.Text=value..'/'..maxvalue
					local moveconnection
					moveconnection=mouse.Move:Connect(function()
						slidervalue.Text=value..'/'..maxvalue
						value=math.floor((((tonumber(maxvalue)-tonumber(minvalue))/324) * sliderpoint.AbsoluteSize.X)+tonumber(minvalue))callback(value)
						sliderpoint.Size=UDim2.new(0,math.clamp(mouse.X-sliderpoint.AbsolutePosition.X,0,324),0,7)
					end)
					local releaseconnection
					releaseconnection=uis.InputEnded:Connect(function(Mouse)
						if Mouse.UserInputType==Enum.UserInputType.MouseButton1 then
							value=math.floor((((tonumber(maxvalue)-tonumber(minvalue))/324) * sliderpoint.AbsoluteSize.X)+tonumber(minvalue))callback(value)
							sliderpoint.Size=UDim2.new(0,math.clamp(mouse.X-sliderpoint.AbsolutePosition.X,0,324),0,7)
							pcall(function()moveconnection:Disconnect()releaseconnection:Disconnect()end)
						end
					end)
					
				end)
			end
			function insidetab:CreateTextBox(info,callback)
				callback=callback or function()end
				local textbox=Instance.new('TextBox')
				local textboxcorner=Instance.new('UICorner')
				textbox.Name='textbox'
				textbox.Parent=contentlist
				textbox.BackgroundColor3=Color3.fromRGB(25,24,25)
				textbox.BorderColor3=Color3.fromRGB(0,0,0)
				textbox.BorderSizePixel=0
				textbox.Position=UDim2.new(-0.10272219,0,0.652234554,0)
				textbox.Size=UDim2.new(0,324,0,25)
				textbox.ClearTextOnFocus=false
				textbox.Font=Enum.Font.Gotham
				textbox.PlaceholderColor3=Color3.fromRGB(150,150,150)
				textbox.Text=''textbox.PlaceholderText=info
				textbox.TextColor3=Color3.fromRGB(200,200,200)
				textbox.TextSize=15.000
				textboxcorner.CornerRadius=UDim.new(0,5)
				textboxcorner.Name='textboxcorner'
				textboxcorner.Parent=textbox
				textbox.FocusLost:Connect(function(a)if a then callback(textbox.Text)end end)
			end
			function insidetab:CreateKeybind(button,info,callback)
				callback=callback or function()end local state=false local o=button
				local keybind=Instance.new('TextButton')
				local keybindcorner=Instance.new('UICorner')
				local keybindinfo=Instance.new('TextLabel')
				local keybindlist=Instance.new('UIListLayout')
				keybind.Name='keybind'
				keybind.Parent=contentlist
				keybind.BackgroundColor3=Color3.fromRGB(174,234,249)
				keybind.BorderSizePixel=0
				keybind.Position=UDim2.new(0.43683219,0,0.459150314,0)
				keybind.Size=UDim2.new(0,28,0,28)
				keybind.Font=Enum.Font.Gotham
				keybind.Text=button
				keybind.TextColor3=Color3.fromRGB(25,24,25)
				keybind.TextSize=15.000
				keybind.TextWrapped=false
				keybindlist.Name='keybindlist'
				keybindlist.Parent=keybind
				keybindlist.HorizontalAlignment=Enum.HorizontalAlignment.Right
				keybindlist.SortOrder=Enum.SortOrder.LayoutOrder
				keybindlist.VerticalAlignment=Enum.VerticalAlignment.Center
				keybindcorner.CornerRadius=UDim.new(0,5)
				keybindcorner.Name='keybindcorner'
				keybindcorner.Parent=keybind
				keybindinfo.Name='keybindinfo'
				keybindinfo.Parent=keybind
				keybindinfo.BackgroundColor3=Color3.fromRGB(0,0,0)
				keybindinfo.BackgroundTransparency=1.000
				keybindinfo.BorderSizePixel=0
				keybindinfo.Position=UDim2.new(-10.5714283,0,0,0)
				keybindinfo.Size=UDim2.new(0,324,0,28)
				keybindinfo.Font=Enum.Font.Gotham
				keybindinfo.Text=info
				keybindinfo.TextColor3=Color3.fromRGB(200,200,200)
				keybindinfo.TextSize=15.000
				keybindinfo.TextXAlignment=Enum.TextXAlignment.Left
				keybind.MouseButton1Click:Connect(function()
					if not state then
						state=not state
						keybind.Text='?'
						local a
						a=uis.InputBegan:Connect(function(b,p)if b.UserInputType~=Enum.UserInputType.MouseButton1 and b.UserInputType~=Enum.UserInputType.MouseButton2 and b.UserInputType~=Enum.UserInputType.MouseButton3 then
							state=not state
							o=b.KeyCode.Name
							keybind.Text=o a:Disconnect()
						end end)
					end
				end)
				local t spawn(function()
					while wait()do
						if keybind.Size.X.Offset+15~=keybind.TextBounds.X+15 then if t==nil or t~=nil and t.PlaybackState~=Enum.PlaybackState.Playing then
							if keybind.TextBounds.X+15>=28 then t=ts:Create(keybind,TweenInfo.new(.25),{Size=UDim2.new(0,keybind.TextBounds.X+15,0,28)}):Play()else
								t=ts:Create(keybind,TweenInfo.new(.25),{Size=UDim2.new(0,28,0,28)}):Play()
							end
						else keybind.TextWrapped=true end end
					end
				end)
				uis.InputBegan:Connect(function(a)if a.KeyCode.Name==o then
					if not state then callback(o)end
				end end)
			end
			return insidetab
		end
		function insideh:Init()RobloxCrashHandler.Enabled=not RobloxCrashHandler.Enabled end
		return insideh
	end
	return library
end
local lib=moselib()
local maf03={
	bloxfruits={
		4442272183,
		2753915549,
		7449423635
	},
	bokuno={1499872953},
	roghoul={914010731},
	aut={6846458508},
	aherodestiny={6461766546},
	kinglegacy={6381829480,4520749081},
	dbzfs={
		536102540,
		882399924,
		478132461,
		569994010,
		2046990924,
		3565304751,
		882375367,
		3552157537,
		2651456105,
		2050207304,
		535527772,
		3552158750,
		566006798
	},
	aba={1458767429},
	a3008={2768379856},
	babft={537413528}
}
local nameofthegame
if table.find(maf03.roghoul,game.PlaceId)then
	nameofthegame='Ro-Ghoul'
elseif table.find(maf03.bloxfruits,game.PlaceId)then 
	nameofthegame='Blox Fruits'
elseif table.find(maf03.aba,game.PlaceId)then
	nameofthegame='Anime Battle Arena'
elseif table.find(maf03.bokuno,game.PlaceId)then
	nameofthegame='Boku No Roblox'
elseif table.find(maf03.aut,game.PlaceId)then
	nameofthegame='A Universal Time'
elseif table.find(maf03.aherodestiny,game.PlaceId)then
	nameofthegame="A Hero's Destiny"
elseif table.find(maf03.dbzfs,game.PlaceId)then
	nameofthegame=' DBZFS   '
elseif table.find(maf03.kinglegacy,game.PlaceId)then
	nameofthegame='King Legacy'
elseif table.find(maf03.a3008,game.PlaceId)then
	nameofthegame=' 3008  '
elseif table.find(maf03.babft,game.PlaceId)then
	nameofthegame='BABFT'
end
local win=lib:Create(nameofthegame)
local function loadbloxfruits()
	repeat wait()until work.Characters:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('CharacterReady')
	local tpservice=game:GetService('TeleportService')
	local vu=game:GetService('VirtualUser')
	local currentsettings={
		AimLockBind='B',
		Prediction=0,
		HitboxSize=20,
		Speed=70,
		JumpPower=50,
		Fov=70,
		DFMasteryHealth=2000,
		DFMasterySkillZ=true,
		DFMasterySkillX=false,
		DFMasterySkillC=false,
		DFMasterySkillV=false,
		DFMasterySkillF=false
	}
	if gamedata then currentsettings=loadData(game.PlaceId)end
	local ts=game:GetService('TweenService')
	local tween
	local function createtween(part,vectordestination)
	    local s=(part.Position-vectordestination).magnitude/340
		tween=ts:Create(part,TweenInfo.new(s,Enum.EasingStyle.Linear),{CFrame=CFrame.new(vectordestination)})
		tween:Play()
		if not part:FindFirstChildOfClass('BodyVelocity')then
	        local bv=Instance.new('BodyVelocity',part)
	        bv.MaxForce=Vector3.new(100000,100000,100000)
			bv.Velocity=Vector3.new(0,0,0)
	        task.delay(s,function()
				bv:Destroy()
			end)
	    end
	end
	local nw=4442272183
	local sm=2753915549
	local tw=7449423635
	local lighting=game:GetService('Lighting')
	local asssupercock=game:GetService('ReplicatedStorage')
	local ultraasssupercum=lighting.FogEnd
	local s=win:CreateTab('Main')
	local ss
	if game.PlaceId==nw or game.PlaceId==tw then 
		ss=win:CreateTab('Raid')
	end
	local sss=win:CreateTab('Teleports')
	local ssss=win:CreateTab('Visuals')
	local sssss=win:CreateTab('Combat')
	local ssssss=win:CreateTab('Misc')
	local sssssss=win:CreateTab('Fun')
	s:CreateLabel('Farm')
	local levelfarm
	s:CreateToggle('Level Farm (May get you kicked)',function(state)levelfarm=state end)
	local bossfarm
	s:CreateToggle('Boss Farm',function(state)bossfarm=state end)
	local smbosses={'Ice Admiral ','Greybeard ','Cyborg ','Thunder God ','Wysper ','Fishman Lord ','Magma Admiral ','Swan ','Saber Expert ','Chief Warden ','Warden ','Vice Admiral '}
	local nwbosses={'Cursed Captain ','Order ','Darkbeard ','Don Swan ','Tide Keeper ','Awakened Ice Admiral ','Smoke Admiral ','Fajita ','Jeremy ','Diamond '}
	local twbosses={'Soul Reaper ','rip_indra True Form ','Longma ','Diablo ','Urban ','Deandre ','Captain Elephant ','Beautiful Pirate ','Kilo Admiral ','Island Empress ','Stone '}
	local extrabosses={'Soul Reaper ','rip_indra True Form ','Longma ','Diablo ','Urban ','Deandre ','Ice Admiral ','Greybeard ','Saber Expert ','Cursed Captain ','Order ','Darkbeard ','Don Swan '}
	local boss='ass'
	if game.PlaceId==sm then 
		s:CreateDropdown('Boss',smbosses,function(val)boss=val end)
	elseif game.PlaceId==nw then
		s:CreateDropdown('Boss',nwbosses,function(val)boss=val end)
	elseif game.PlaceId==tw then
		s:CreateDropdown('Boss',twbosses,function(val)boss=val end)
	end
	local autoequip
	s:CreateToggle('Auto Equip',function(state)autoequip=state end)
	local backpacktools={}
	local collectTools=function()
		for i,v in pairs(plr.Backpack:GetChildren())do
			if v:IsA('Tool')then
				table.insert(backpacktools,v.Name)
			end
		end
		for i,v in pairs(plr.Character:GetChildren())do
			if v:IsA('Tool')then
				table.insert(backpacktools,v.Name)
			end
		end
	end
	collectTools()
	local tool
	local toolsdropdown=s:CreateDropdown('Tool',backpacktools,function(val)tool=val end)
	s:CreateButton('Refresh Tools',function()
		table.clear(backpacktools)
		collectTools()
		toolsdropdown:Refresh(backpacktools)
	end)
	local autobuso
	local localheartbeat
	s:CreateToggle('Auto Busoshoku Haki',function(state)
		if state then
			localheartbeat=rs.Heartbeat:Connect(function()
				if not plr.Character:FindFirstChild('HasBuso')then asssupercock.Remotes['CommF_']:InvokeServer('Buso')end
			end)
		else
			localheartbeat:Disconnect()
		end
	end)
	s:CreateLabel('Mastery Farm')
	local dfmasterydf
	local dfmasdropdown=s:CreateDropdown('Devil Fruit',backpacktools,function(val)dfmasterydf=val end)
	local dfmasterymelee
	local mainweapondfmas=s:CreateDropdown('Main Weapon',backpacktools,function(val)dfmasterymelee=val end)
	s:CreateButton('Refresh Tools',function()
		table.clear(backpacktools)
		collectTools()
		dfmasdropdown:Refresh(backpacktools)
		mainweapondfmas:Refresh(backpacktools)
	end)
	local dfmashealth=currentsettings.DFMasteryHealth
	s:CreateSlider(5,dfmashealth,10000,'Health',function(val)
		dfmashealth=val
		currentsettings.DFMasteryHealth=val
		savedata(game.PlaceId,currentsettings)
	end)
	local dfmastery
	s:CreateToggle('DF Mastery',function(state)dfmastery=state end)
	local gunmode
	s:CreateToggle('Gun Mode',function(state)gunmode=state end)
	local dfz=currentsettings.DFMasterySkillZ
	local dfx=currentsettings.DFMasterySkillX
	local dfc=currentsettings.DFMasterySkillC
	local dfv=currentsettings.DFMasterySkillV
	local dff=currentsettings.DFMasterySkillF
	s:CreateLabel('DF Mastery Auto Skills')
	s:CreateToggle('Auto Skill Z',function(state)
		dfz=state
		currentsettings.DFMasterySkillZ=state
		savedata(game.PlaceId,currentsettings)
	end,dfz)
	s:CreateToggle('Auto Skill X',function(state)
		dfx=state
		currentsettings.DFMasterySkillX=state
		savedata(game.PlaceId,currentsettings)
	end,dfx)
	s:CreateToggle('Auto Skill C',function(state)
		dfc=state
		currentsettings.DFMasterySkillC=state
		savedata(game.PlaceId,currentsettings)
	end,dfc)
	s:CreateToggle('Auto Skill V',function(state)
		dfv=state
		currentsettings.DFMasterySkillV=state
		savedata(game.PlaceId,currentsettings)
	end,dfv)
	s:CreateToggle('Auto Skill F',function(state)
		dff=state
		currentsettings.DFMasterySkillF=state
		savedata(game.PlaceId,currentsettings)
	end,dff)
	s:CreateLabel('Auto Stats')
	local autostat
	s:CreateToggle('Add Stats',function(state)autostat=state end)
	local statstoadd={}
	s:CreateTableDropdown('Stats to Add',{'Melee','Defense','Sword','Gun','Demon Fruit'},function(val)statstoadd=val end)
	local autofindcolors,autolegendarysword
	if game.PlaceId==nw or game.PlaceId==tw then
		s:CreateLabel('Auto Dealers')
		s:CreateToggle('Auto Haki Colors',function(state)autofindcolors=state end)
	end 
	if game.PlaceId==nw then 
		s:CreateToggle('Auto Legendary SS',function(state)autolegendarysword=state end)
	end
	local killaura,autoislandteleports,autofactory,autopirateraid
	if game.PlaceId==nw or game.PlaceId==tw then
		ss:CreateLabel('Main')
		local localheartbeat
		ss:CreateToggle('KillAura',function(state)
			if state then
				localheartbeat=rs.Heartbeat:Connect(function()
					for i,v in pairs(work.Enemies:GetChildren())do
						if v:FindFirstChild('Humanoid')and v:FindFirstChild('HumanoidRootPart')and v.Humanoid.Health>0 and v:FindFirstChild('CharacterReady')and not asssupercock:FindFirstChild(v)then
							v.Humanoid.Health=0
						end
					end
				end)
			else
				localheartbeat:Disconnect()
			end
		end)
		ss:CreateToggle('Auto Islands Teleports',function(state)autoislandteleports=state end)
	end
	if game.PlaceId==nw then
		ss:CreateToggle('Auto Factory Raid',function(state)
			if state then
				localheartbeat=rs.Heartbeat:Connect(function()
					if work.Map.Dressrosa.SmileFactory.Core.Glass.Transparency==1 then
						local factorycore=work.Map.Dressrosa.SmileFactory.Core.Part
						if(rootpart.Position-factorycore.Position).magnitude<100 then
							rootpart.CFrame=factorycore.CFrame
						else
							createtween(rootpart,factorycore.Position)
						end
					end
				end)
			else
				localheartbeat:Disconnect()
			end
		end)
	end
	if game.PlaceId==tw then ss:CreateToggle('Auto Pirate Raid',function(state)autopirateraid=state end)end
	sss:CreateLabel('Main')
	if game.PlaceId==sm then
		sss:CreateButton('Starter Island',function()createtween(rootpart,Vector3.new(1091.8731689453,16.854053497314,1431.1193847656))end)
		sss:CreateButton('Middle Island',function()createtween(rootpart,Vector3.new(-794.37384033203,73.981246948242,1610.0255126953))end)
		sss:CreateButton('Jungle Island',function()createtween(rootpart,Vector3.new(-1621.1857910156,36.852085113525,146.57322692871))end)
		sss:CreateButton('Buggy Island',function()createtween(rootpart,Vector3.new(-1133.2296142578,57.161499023438,4169.6376953125))end)
		sss:CreateButton('Desert Island',function()createtween(rootpart,Vector3.new(1264.7130126953,14.959985733032,4529.7172851563))end)
		sss:CreateButton('Snow Island',function()createtween(rootpart,Vector3.new(1452.7147216797,37.348171234131,-1219.3538818359))end)
		sss:CreateButton('Marineford',function()createtween(rootpart,Vector3.new(-4999.7075195313,63.38468170166,4468.8383789063))end)
		sss:CreateButton('Colosseum',function()createtween(rootpart,Vector3.new(-1855.7446289063,80.371124267578,-3031.3745117188))end)
		sss:CreateButton('Sky Islands 1',function()createtween(rootpart,Vector3.new(-4749.5200195313,717.68627929688,-2686.1650390625))end)
		sss:CreateButton('Sky Islands 2',function()createtween(rootpart,Vector3.new(-7614.4936523438,5606.876953125,-1770.7192382813))end)
		sss:CreateButton('Fishman Teleport',function()createtween(rootpart,Vector3.new(3915.8500976563,12.287734985352,-1939.1176757813))end)
		sss:CreateButton('Volcano Island',function()createtween(rootpart,Vector3.new(-5468.7080078125,8.5906734466553,8887.697265625))end)
		sss:CreateButton('Prison',function()createtween(rootpart,Vector3.new(5668.6591796875,64.652229309082,873.83270263672))end)
		sss:CreateButton('Fountain Island',function()createtween(rootpart,Vector3.new(5049.6708984375,4.5012888908386,4194.7202148438))end)
	elseif game.PlaceId==nw then
		sss:CreateButton('Café',function()createtween(rootpart,Vector3.new(-380.411011,72.8180008,303.237))end)
		sss:CreateButton('Dark Arena',function()createtween(rootpart,Vector3.new(3958.2395019531,13.349345207214,-3202.9038085938))end)
		sss:CreateButton('Snow Mountain',function()createtween(rootpart,Vector3.new(342.01663208008,401.42193603516,-5391.5673828125))end)
		sss:CreateButton('Ice Castle',function()createtween(rootpart,Vector3.new(6419.8305664063,296.95727539063,-6842.0756835938))end)
		sss:CreateButton('Green Zone',function()createtween(rootpart,Vector3.new(-2563.7937011719,1624.9703369141,-3731.0810546875))end)
		sss:CreateButton('Hot Island',function()createtween(rootpart,Vector3.new(-5109.5327148438,143.73324584961,-5408.2270507813))end)
		sss:CreateButton('Cold Island',function()createtween(rootpart,Vector3.new(-5892.6064453125,15.951759338379,-4973.6557617188))end)
		sss:CreateButton('Forgotten Island',function()createtween(rootpart,Vector3.new(-2911.6203613281,115.84630584717,-9973.27734375))end)
		sss:CreateButton('Raid Room',function()createtween(rootpart,Vector3.new(-6501.3881835938,249.52967834473,-4511.8911132813))end)
		sss:CreateButton('Graveyard Island',function()createtween(rootpart,Vector3.new(-5675.5732421875,267.93341064453,-816.35729980469))end)
		sss:CreateButton('Cursed Ship',function()createtween(rootpart,Vector3.new(819.26702880859,125.05710601807,33119.55859375))end)
		sss:CreateButton('Colosseum',function()createtween(rootpart,Vector3.new(-1849.7058105469,10.43249130249,1732.3100585938))end)
	elseif game.PlaceId==tw then
		sss:CreateButton('Great Tree',function()createtween(rootpart,Vector3.new(2486.2551269531,272.98641967773,-7078.86328125))end)
		sss:CreateButton('Hydra Arena',function()createtween(rootpart,Vector3.new(5225.1787109375,51.482273101807,-1954.6181640625))end)
		sss:CreateButton('Beautiful Pirate Domain',function()createtween(rootpart,Vector3.new(5314.2465820313,22.536437988281,-102.07810211182))end)
		sss:CreateButton('Hydra Town',function()createtween(rootpart,Vector3.new(5204.1303710938,601.58325195313,496.2370300293))end)
		sss:CreateButton('Port',function()createtween(rootpart,Vector3.new(-370.24697875977,73.729919433594,5756.9409179688))end)
		sss:CreateButton('Sea Castle',function()createtween(rootpart,Vector3.new(-5502.1787109375,313.76892089844,-2863.4616699219))end)
		sss:CreateButton('Turtle Center',function()createtween(rootpart,Vector3.new(-12007.979492188,331.72320556641,-9178.580078125))end)
		sss:CreateButton('Turtle Entrance',function()createtween(rootpart,Vector3.new(-10163.96484375,331.76263427734,-8320.767578125))end)
		sss:CreateButton('Turtle Mansion',function()createtween(rootpart,Vector3.new(-12538.421875,332.61880493164,-7817.0708007813))end)
		sss:CreateButton('Turtle Mountain',function()createtween(rootpart,Vector3.new(-12856.61328125,844.36669921875,-10715.23046875))end)
		sss:CreateButton('Haunted Castle',function()createtween(rootpart,Vector3.new(-9625.3076171875,141.32684326172,5393.041015625))end)
	end
	sss:CreateLabel('Misc')
	sss:CreateButton('First World',function()asssupercock.Remotes['CommF_']:InvokeServer('TravelMain')end)
	sss:CreateButton('Second World',function()asssupercock.Remotes['CommF_']:InvokeServer('TravelDressrosa')end)
	sss:CreateButton('Third World',function()asssupercock.Remotes['CommF_']:InvokeServer('TravelZou')end)
	ssss:CreateLabel('Main')
	local localheartbeat
	ssss:CreateToggle('FullBright',function(state)
		if state then  
			localheartbeat=rs.Heartbeat:Connect(function()
				if lighting:FindFirstChild('Atmosphere')then
					lighting.Atmosphere.Density=0
				else
					lighting.FogEnd=9e9
				end
			end)
		else
			localheartbeat:Disconnect()
			if lighting:FindFirstChild('Atmosphere')then
				lighting.Atmosphere.Density=.25
			else
				lighting.FogEnd=ultraasssupercum
			end
		end
	end)
	local dfesp
	ssss:CreateToggle('Devil Fruit Esp',function(state)dfesp=state end)
	local floweresp
	if game.PlaceId==nw then ssss:CreateToggle('Flowers Esp',function(state)floweresp=state end)end
	ssss:CreateToggle('Esp Names',function(state)espnames=state end)
	sssss:CreateLabel('Main')
	local localheartbeat
	sssss:CreateToggle('NoSlow/AntiKnockback',function(state)
		if state then
			localheartbeat=rs.Heartbeat:Connect(function()
				if work.Characters:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('HumanoidRootPart')and plr.Character:FindFirstChild('Busy')then
					if rootpart:FindFirstChild('BodyPosition')then 
						rootpart.BodyPosition:Destroy()
					elseif rootpart:FindFirstChild('BodyVelocity')then 
						rootpart.BodyVelocity:Destroy()
					elseif plr.Character.Busy.Value then 
						plr.Character.Busy.Value=false
					elseif plr.Character.Stun.Value>0 then 
						plr.Character.Stun.Value=0
					end
				end
			end)
		else
			localheartbeat:Disconnect()
		end
	end)
	local aimbot,aimbottoggle
	aimbot=false
	sssss:CreateToggle('AimLock Toggle',function(state)aimbottoggle=state end)
	local currentaimbotbind=currentsettings.AimLockBind
	sssss:CreateKeybind(currentaimbotbind,'On/Off AimLock',function(val)
		aimbot=not aimbot
		currentsettings.AimLockBind=val
		savedata(game.PlaceId,currentsettings)
	end)
	local skillsaimbot
	local skillsaimbotwasturnedon
	local silentaimtarget=Vector3.new(0,0,0)
	sssss:CreateToggle('Skills Silent Aim',function(state)
		if not skillsaimbotwasturnedon and state then
			local old
			old=hookmetamethod(game,'__namecall',function(self,...)
			    local args={...}
			    if typeof(args[1])=='Vector3'and getnamecallmethod()=='FireServer'then args[1]=silentaimtarget
			        if skillsaimbot then
						return old(self,unpack(args))
					end
			    end
				return old(self,...)
			end)
			skillsaimbotwasturnedon=true
		end
		skillsaimbot=state
	end)
	local predict=currentsettings.Prediction
	sssss:CreateSlider(0,predict,100,'Prediction',function(val)
		predict=val
		currentsettings.Prediction=val
		savedata(game.PlaceId,currentsettings)
	end)
	sssss:CreateLabel('Misc')
	local hitboxes
	local hitboxeswasturnedon=false
	sssss:CreateToggle('Expand Players Hitboxes',function(state)
		hitboxes=state
		if state and not hitboxeswasturnedon then
			hitboxeswasturnedon=true
		end
	end)
	local hitboxsize=currentsettings.HitboxSize
	sssss:CreateSlider(5,hitboxsize,50,'Size',function(val)
		hitboxsize=val
		currentsettings.HitboxSize=val
		savedata(game.PlaceId,currentsettings)
	end)
	sssss:CreateLabel('Universal Combat Options')
	local teamcheck local aliescheck
	sssss:CreateToggle('Team Check',function(state)teamcheck=state end)
	sssss:CreateToggle('Allies Check',function(state)alliescheck=state end)
	ssssss:CreateLabel('Main')
	ssssss:CreateButton('Rejoin',function()tpservice:TeleportToPlaceInstance(game.PlaceId,game.JobId,plr)end)
	ssssss:CreateButton('Serverhop',function()
	    local PlaceID=game.PlaceId
		local AllIDs={}
		local foundAnything=''
		local actualHour=os.date('!*t').hour
		local Deleted=false
		local File=pcall(function()
		    AllIDs=http:JSONDecode(readfile('NotSameServers.json'))
		end)
		if not File then
		    table.insert(AllIDs,actualHour)
		    writefile('NotSameServers.json',http:JSONEncode(AllIDs))
		end
		local function TPReturner()
		    local Site;
		    if foundAnything==''then
		        Site=http:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/'.. PlaceID ..'/servers/Public?sortOrder=Asc&limit=100'))
		    else
		        Site=http:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/'.. PlaceID ..'/servers/Public?sortOrder=Asc&limit=100&cursor='..foundAnything))
		    end
		    local ID=''
		    if Site.nextPageCursor and Site.nextPageCursor~='null'and Site.nextPageCursor~=nil then
		        foundAnything=Site.nextPageCursor
		    end
		    local num=0;
			local ID
		    for i,v in pairs(Site.data)do
		        local Possible=true
		        local ID=tostring(v.id)
		        if tonumber(v.maxPlayers)>tonumber(v.playing)then
		            for _,Existing in pairs(AllIDs)do
		                if num~=0 then
		                    if ID==tostring(Existing)then
		                        Possible=false
		                    end
		                else
		                    if tonumber(actualHour)~=tonumber(Existing)then
		                        local delFile=pcall(function()
		                            delfile('NotSameServers.json')
		                            AllIDs={}
		                            table.insert(AllIDs,actualHour)
		                        end)
		                    end
		                end
		                num=num+1
		            end
		            if Possible then
		                table.insert(AllIDs,ID)
		                wait()
		                pcall(function()
		                    writefile('NotSameServers.json',http:JSONEncode(AllIDs))
		                    wait()
		                    tpservice:TeleportToPlaceInstance(PlaceID,ID,plr)
		                end)
		            end
		        end
		    end
		end
		local function Teleport()
		    while wait()do
		        pcall(function()
		            TPReturner()
		            if foundAnything~=''then
		                TPReturner()
		            end
		        end)
		    end
		end
		Teleport()
	end)
	local localheartbeat
	ssssss:CreateToggle('Jesus',function(state)
		if state then
			localheartbeat=rs.Heartbeat:Connect(function()
				if rootpart.Position.Y<=5 then
					if work:FindFirstChild('JesusPart')then
						local part=work.JesusPart
						part.Position=Vector3.new(rootpart.Position.X,-8.9,rootpart.Position.Z)
					else
						local part=Instance.new('Part',work)
						part.Name='JesusPart'
						part.Transparency=1
						part.Anchored=true
						part.Position=Vector3.new(rootpart.Position.X,-8.9,rootpart.Position.Z)
						part.Size=Vector3.new(10,10,10)
						task.delay(0.1,function()
							pcall(function()
								part:Destroy()
							end)
						end)
					end
				end
			end)
		else
			if work:FindFirstChild('JesusPart')then
				work.JesusPart:Destroy()
			end
			localheartbeat:Disconnect()
		end
	end)
	local nododgecd,nosorucd
	local connectnocdthings=function()
		local localheartbeat,localheartbeat1
		for i,v in pairs(getgc())do
		    for a,b in pairs(getupvalues(v))do
		        if type(b)=='table'and rawget(b,'LastUse')then
					if getfenv(v).script.Name=='Dodge'then
		            	localheartbeat=rs.Heartbeat:Connect(function()
							if nododgecd and b.LastUse~=0 then 
								b.LastUse=0
							end 
						end)
					elseif getfenv(v).script.Name=='Soru'then
		            	localheartbeat1=rs.Heartbeat:Connect(function()
							if nosorucd and b.LastUse~=0 then
								b.LastUse=0
							end 
						end)
					end
		        end
		    end
		end
		local localcharremoving localcharremoving=plr.CharacterRemoving:Connect(function()
			spawn(function()
				repeat wait()until not plr.Character:FindFirstChild('Dodge')and not plr.Character:FindFirstChild('Soru')
				wait(2)
				localheartbeat:Disconnect()
				localheartbeat1:Disconnect()
				localcharremoving:Disconnect()
			end)
		end)
	end
	connectnocdthings()
	plr.CharacterAdded:Connect(function()
		spawn(function()
			repeat wait()until plr.Character:FindFirstChild('Dodge')and plr.Character:FindFirstChild('Soru')and plr.Character:FindFirstChild('CharacterReady')
			wait(3)
			connectnocdthings()
		end)
	end)
	ssssss:CreateToggle('No Dodge Cooldown',function(state)nododgecd=state end)
	ssssss:CreateToggle('No Soru Cooldown',function(state)nosorucd=state end)
	ssssss:CreateLabel('Character')
	local ws,jp
	local speedvalue=currentsettings.Speed
	local jumpPowervalue=currentsettings.JumpPower
	ssssss:CreateToggle('Speed',function(state)ws=state end)
	ssssss:CreateSlider(0,speedvalue,350,'Value',function(val)
		speedvalue=val
		currentsettings.Speed=val
		savedata(game.PlaceId,currentsettings)
	end)
	ssssss:CreateToggle('Jump Power',function(state)jp=state end)
	ssssss:CreateSlider(0,jumpPowervalue,100,'Value',function(val)
		jumpPowervalue=val
		currentsettings.JumpPower=val
		savedata(game.PlaceId,currentsettings)
	end)
	local invisstate=false
	local invisbutton invisbutton=ssssss:CreateButton('Invisibility',function()
		local reseted=false
		if not invisstate then
			if work.Characters:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('LowerTorso')and plr.Character.LowerTorso:FindFirstChild('Root')then
				local lowertorsoclone=plr.Character.LowerTorso.Root:Clone()
				plr.Character.LowerTorso.Root:Destroy()
				lowertorsoclone.Parent=plr.Character.LowerTorso
				local localcharremoving localcharremoving=plr.CharacterRemoving:Connect(function()
					reseted=true
					invisstate=false
					invisbutton:RefreshText('Invisibility')
					localcharremoving:Disconnect()
				end)
				invisbutton:RefreshText('Stop Invisibility')
			end
		else
			if plr.Character.Humanoid.Health>0 then
				plr.Character.Humanoid.Health=0
			end
			invisbutton:RefreshText('Invisibility')
		end
		if not reseted then 
			invisstate=not invisstate
		end
	end)
	ssssss:CreateLabel('Change Teams')
	ssssss:CreateButton('Pirates',function()
		if plr.Team.Name~='Pirates'then
			for i,v in pairs(getnilinstances())do if string.find(v.Name,'Pirate Recruiter')and v:FindFirstChild('HumanoidRootPart')then rootpart.CFrame=v.HumanoidRootPart.CFrame end end
			delay(0.1,function()asssupercock.Remotes.CommF_:InvokeServer('SetTeam','Pirates')end)
		end
	end)
	ssssss:CreateButton('Marines',function()
		if plr.Team.Name~='Marines'then
			for i,v in pairs(getnilinstances())do if string.find(v.Name,'Marine Recruiter')and v:FindFirstChild('HumanoidRootPart')then rootpart.CFrame=v.HumanoidRootPart.CFrame end end
			delay(0.1,function()asssupercock.Remotes.CommF_:InvokeServer('SetTeam','Marines')end)
		end
	end)
	sssssss:CreateLabel('Main')
	local rainbowwater
	sssssss:CreateToggle('Rainbow Water',function(state)rainbowwater=state end)
	local localheartbeat
	sssssss:CreateToggle('Cool Jesus',function(state)
		if state then
			localheartbeat=rs.Heartbeat:Connect(function()
				if rootpart.Position.Y<=5 then
					local createcooljesuspart=function()
						local part=Instance.new('Part',work)
						local effect=game:GetService('ReplicatedStorage').Assets.Particles.IcyWind:Clone()
						part.Anchored=true 
						part.TopSurface='Smooth'
						part.Position=Vector3.new(rootpart.Position.X,-8.9,rootpart.Position.Z)
						part.Size=Vector3.new(9,10,9)
						part.CFrame=part.CFrame*CFrame.Angles(0,math.rad(math.random(0,95)),0)
						part.Material='Neon'
						part.BrickColor=BrickColor.new('Baby blue')
						effect.Enabled=true
						task.delay(.1,function()
							effect.Enabled=false
							ts:Create(part,TweenInfo.new(.2),{Size=Vector3.new(0,10,0)}):Play()
						end)
						task.delay(.3,function()
							pcall(function()
								part:Destroy()
							end)
						end)
					end
					for i=1,3 do
						createcooljesuspart()
					end
				end
			end)
		else
			localheartbeat:Disconnect()
		end
	end)
	local fov=currentsettings.Fov
	sssssss:CreateToggle('Custom Fov',function(state)
		if state then
			localheartbeat=rs.Heartbeat:Connect(function()
				work.Camera.FieldOfView=fov
			end)
		else
			localheartbeat:Disconnect()
			work.Camera.FieldOfView=70
		end
	end)
	sssssss:CreateSlider(1,fov,120,'Value',function(val)
		fov=val
		currentsettings.Fov=val
		savedata(game.PlaceId,currentsettings)
	end)
	local fallbutton
	fallbutton=sssssss:CreateButton('Fall',function()
		local state=plr.Character.Humanoid:GetState()
		if state==Enum.HumanoidStateType.Physics then
			plr.Character.Humanoid:ChangeState(2)
			fallbutton:RefreshText('Fall')
		else
			plr.Character.Humanoid:ChangeState(16)
			fallbutton:RefreshText('Stand Up')
		end
	end)
	local automob='cum'
	local function tpua(position)
	    sethiddenproperty(plr,'SimulationRadius',9e9)
	    for i,v in pairs(work.Enemies:GetChildren())do
	        local ti=TweenInfo.new(.0001,Enum.EasingStyle.Linear)
			local tp={CFrame=CFrame.new(position)}
	        if v:FindFirstChild('HumanoidRootPart')and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 and v.Name:find(automob)then
	        	ts:Create(v.HumanoidRootPart,ti,tp):Play()
	        end
	    end
	end
	local function startquest(questname,questvalue)
		asssupercock.Remotes['CommF_']:InvokeServer('StartQuest',questname,questvalue)
	end 
	local delay1=true
	local delaytime2=2
	local delaytime1=3
	local delay2=true
	local dfmasclicker=true
	local bdelay1=true
	local bdelay2=true
	local rainbowcolor,cock,tpuadelaypos,tpuadelayposset
	rs.Heartbeat:Connect(function()
		local quest=plr.PlayerGui.Main.Quest
		local currentgiver
		local startgiver={1056.25,16.516613006592,1544.9599609375}local monkegiver={-1596.4158935547,36.852123260498,147.75096130371}
		local buggygiver={-1146.1650390625,4.7520503997803,3833.4404296875}local desertgiver={900.29144287109,6.513249874115,4390.9716796875}
		local snowgiver={1385.4183349609,87.272766113281,-1302.1872558594}local marinegiver={-5035.6171875,28.652032852173,4320.802734375}
		local sky1giver={-4845.1303710938,717.66943359375,-2619.7658691406}local cologiver={-1574.2014160156,7.38933801651,-2988.3132324219}
		local lavagiver={-5318.9438476563,12.237722396851,8513.8330078125}local fishgiver={61120.1015625,18.471633911133,1570.1101074219}
		local sky2giver1={-7853.1279296875,5545.4916992188,-381.33126831055}local sky2giver2={-7903.2666015625,5635.9624023438,-1415.8642578125}
		local galleygiver={5257.4956054688,38.501129150391,4055.970703125}local dressrosagiver1={-425.67904663086,72.970520019531,1840.3392333984}
		local dressrosagiver2={635.24658203125,73.070526123047,913.29736328125}local greenbitgiver={-2446.3381347656,73.016082763672,-3218.3020019531}
		local graveyardgiver={-5491.0166015625,48.480117797852,-797.78656005859}local snowislandgiver={604.32348632813,401.42193603516,-5372.48828125}
		local icecirclegiver={-6063.4594726563,15.951759338379,-4908.5131835938}local firecirclegiver={-5425.1655273438,15.951759338379,-5294.7578125}
		local shipgiver1={1039.5695800781,125.05710601807,32914.44921875}local shipgiver2={968.43511962891,125.05710601807,33253.62890625}
		local frostislandgiver={5673.1748046875,28.176511764526,-6487.6879882813}local forgottengiver={-3057.8273925781,236.84628295898,-10146.616210938}
		local twgiver1={-294.56411743164,43.793209075928,5579.7778320313}local twgiver2={5830.0971679688,51.35135269165,-1105.0433349609}
		local twgiver3={5445.396484375,601.60363769531,748.73950195313}local twgiver4={2182.8579101563,28.705436706543,-6736.9350585938}
		local twgiver5={-10580.079101563,331.76263427734,-8755.0498046875}local twgiver6={-13229.26171875,332.37814331055,-7625.767578125}
		local twgiver7={-12682.30078125,390.86068725586,-9896.6708984375}local impelgiver={4854.82421875,5.6524415016174,740.92974853516}
		local hauntedcastlegiver1={-9482.27734375,142.10485839844,5562.244140625}local hauntedcastlegiver2={-9514.185546875,172.10485839844,6081.4223632813}
		local pirateraidmobs={
		   'Raider','Mercenary','Swan Pirate',
		   'Factory Staff','Marine Lieutenant',
		   'Marine Captain',
		   'Zombie','Vampire',
		   'Snow Trooper','Winter Warrior',
		   'Lab Subordinate','Horned Warrior',
		   'Magma Ninja','Lava Pirate',
		   'Ship Deckhand','Ship Engineer',
		   'Ship Steward','Ship Officer',
		   'Arctic Warrior','Snow Lurker',
		   'Sea Soldier','Water Fighter',
		   'Galley Pirate','Galley Captain'
		}
		local function checkforpirateraid(a)
			if game.PlaceId==tw and autopirateraid then
				for i,v in pairs(asssupercock:GetChildren())do
					for _,p in pairs(work.Enemies:GetChildren())do
						if table.find(pirateraidmobs,v.Name:split(' [')[1])and not table.find(pirateraidmobs,p.Name)then
							if a then 
								if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<100 then
									rootpart.CFrame=v.HumanoidRootPart.CFrame+Vector3.new(0,50,0)
								else
									createtween(rootpart,v.HumanoidRootPart.Position+Vector3.new(0,50,0))
								end
							end
						end
					end
				end
			end
		end
		if dfmasclicker or gunmode then 
			if levelfarm or bossfarm or autofactory or autopirateraid or dfmastery then
				vu:Button1Down(Vector2.new(-1000,-1000),work.CurrentCamera.CFrame)vu:Button1Up(Vector2.new(-1000,-1000),work.CurrentCamera.CFrame)
			end
		end
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
			elseif plr.Data.Level.Value>=1925 and plr.Data.Level.Value<=1974 then
		       automob='Musketeer Pirate'currentgiver=twgiver7
			elseif plr.Data.Level.Value>=1975 and plr.Data.Level.Value<=1999 then
		       automob='Reborn Skeleton'currentgiver=hauntedcastlegiver1
			elseif plr.Data.Level.Value>=2000 and plr.Data.Level.Value<=2024 then
		       automob='Living Zombie'currentgiver=hauntedcastlegiver1
			elseif plr.Data.Level.Value>=2025 and plr.Data.Level.Value<=2049 then
		       automob='Demonic Soul'currentgiver=hauntedcastlegiver2
			elseif plr.Data.Level.Value>=2050 then
		       automob='Posessed Mummy'currentgiver=hauntedcastlegiver2
		    end
		end
		local function minhealth(a,b)
			local health={}
			for i,v in pairs(work.Enemies:GetChildren())do
				if v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 then
					if a then
						if v.Name:find(automob)then
							table.insert(health,v.Humanoid.Health)
						end
					else
						for _,n in pairs(b)do
							if v.Name:find(n)then 
								table.insert(health,v.Humanoid.Health)
							end
						end
					end
				end
			end
			local minhealth
			if #health>0 then
				minhealth=math.min(table.unpack(health))
			end
			return minhealth
		end
		if levelfarm then
			local playingfactoryraid,playingpirateraid
			if game.PlaceId==nw and autofactory and work.Map.Dressrosa.SmileFactory.Core.Glass.Transparency==1 then
				playingfactoryraid=true
			end
			if game.PlaceId==tw and autopirateraid then
				for _,v in pairs(asssupercock:GetChildren())do
					if table.find(pirateraidmobs,v.Name:split(' [')[1])then
						playingpirateraid=true
					end
				end
				for _,v in pairs(work.Enemies:GetChildren())do
					if table.find(pirateraidmobs,v.Name:split(' [')[1])then
						playingpirateraid=true
					end
				end
			end
			if not playingpirateraid and not playingfactoryraid then
				if not quest.Visible then
					local distancetoquestgiver=(rootpart.Position-Vector3.new(unpack(currentgiver))).magnitude
					if distancetoquestgiver<100 then
						if tween and tween.PlaybackState.Name=='Playing'then
							tween:Cancel()
						end
						rootpart.CFrame=CFrame.new(unpack(currentgiver))
						if delay2 then
							delay2=false
							spawn(function()
								wait(delaytime1)delay1=false wait(delaytime2)delay1=true delay2=true megacum=true
							end)
						end
						if automob=='Bandit'then
							if not delay1 then startquest('BanditQuest1',1)end
						elseif automob=='Monkey'then
							if not delay1 then startquest('JungleQuest',1)end
						elseif automob=='Gorilla'then
							if not delay1 then startquest('JungleQuest',2)end
						elseif automob=='Pirate'then
							if not delay1 then startquest('BuggyQuest1',1)end
						elseif automob=='Brute'then
							if not delay1 then startquest('BuggyQuest1',2)end
						elseif automob=='Desert Bandit'then
							if not delay1 then startquest('DesertQuest',1)end
						elseif automob=='Desert Officer'then
							if not delay1 then startquest('DesertQuest',2)end
						elseif automob=='Snow Bandit'then
							if not delay1 then startquest('SnowQuest',1)end
						elseif automob=='Snowman'then
							if not delay1 then startquest('SnowQuest',2)end
						elseif automob=='Chief Petty Officer'then
							if not delay1 then startquest('MarineQuest2',1)end
						elseif automob=='Sky Bandit'then
							if not delay1 then startquest('SkyQuest',1)end
						elseif automob=='Dark Master'then
							if not delay1 then startquest('SkyQuest',2)end
						elseif automob=='Toga Warrior'then
							if not delay1 then startquest('ColosseumQuest',1)end
						elseif automob=='Gladiator'then
							if not delay1 then startquest('ColosseumQuest',2)end
						elseif automob=='Military Soldier'then
							if not delay1 then startquest('MagmaQuest',1)end
						elseif automob=='Military Spy'then
							if not delay1 then startquest('MagmaQuest',2)end
						elseif automob=='Fishman Warrior'then
							if not delay1 then startquest('FishmanQuest',1)end
						elseif automob=='Fishman Commando'then
							if not delay1 then startquest('FishmanQuest',2)end
						elseif automob=="God's Guard"then
							if not delay1 then startquest('SkyExp1Quest',1)end
						elseif automob=='Shanda'then
							if not delay1 then startquest('SkyExp1Quest',2)end
						elseif automob=='Royal Squad'then
							if not delay1 then startquest('SkyExp2Quest',1)end
						elseif automob=='Royal Soldier'then
							if not delay1 then startquest('SkyExp2Quest',2)end
						elseif automob=='Galley Pirate'then
							if not delay1 then startquest('FountainQuest',1)end
						elseif automob=='Galley Captain'then
							if not delay1 then startquest('FountainQuest',2)end
						elseif automob=='Raider'then
							if not delay1 then startquest('Area1Quest',1)end
						elseif automob=='Mercenary'then
							if not delay1 then startquest('Area1Quest',2)end
						elseif automob=='Swan Pirate'then
							if not delay1 then startquest('Area2Quest',1)end
						elseif automob=='Factory Staff'then
							if not delay1 then startquest('Area2Quest',2)end
						elseif automob=='Marine Lieutenant'then
							if not delay1 then startquest('MarineQuest3',1)end
						elseif automob=='Marine Captain'then
							if not delay1 then startquest('MarineQuest3',2)end
						elseif automob=='Zombie'then
							if not delay1 then startquest('ZombieQuest',1)end
						elseif automob=='Vampire'then
							if not delay1 then startquest('ZombieQuest',2)end
						elseif automob=='Snow Trooper'then
							if not delay1 then startquest('SnowMountainQuest',1)end
						elseif automob=='Winter Warrior'then
							if not delay1 then startquest('SnowMountainQuest',2)end
						elseif automob=='Lab Subordinate'then
							if not delay1 then startquest('IceSideQuest',1)end
						elseif automob=='Horned Warrior'then
							if not delay1 then startquest('IceSideQuest',2)end
						elseif automob=='Magma Ninja'then
							if not delay1 then startquest('FireSideQuest',1)end
						elseif automob=='Lava Pirate'then
							if not delay1 then startquest('FireSideQuest',2)end
						elseif automob=='Ship Deckhand'then
							if not delay1 then startquest('ShipQuest1',1)end
						elseif automob=='Ship Engineer'then
							if not delay1 then startquest('ShipQuest1',2)end
						elseif automob=='Ship Steward'then
							if not delay1 then startquest('ShipQuest2',1)end
						elseif automob=='Ship Officer'then
							if not delay1 then startquest('ShipQuest2',2)end
						elseif automob=='Arctic Warrior'then
							if not delay1 then startquest('FrostQuest',1)end
						elseif automob=='Snow Lurker'then
							if not delay1 then startquest('FrostQuest',2)end
						elseif automob=='Sea Soldier'then
							if not delay1 then startquest('ForgottenQuest',1)end
						elseif automob=='Water Fighter'then
							if not delay1 then startquest('ForgottenQuest',2)end
						elseif automob=='Pirate Millionaire'then
							if not delay1 then startquest('PiratePortQuest',1)end
						elseif automob=='Pistol Billionaire'then
							if not delay1 then startquest('PiratePortQuest',2)end
						elseif automob=='Dragon Crew Warrior'then
							if not delay1 then startquest('AmazonQuest',1)end
						elseif automob=='Dragon Crew Archer'then
							if not delay1 then startquest('AmazonQuest',2)end
						elseif automob=='Female Islander'then
							if not delay1 then startquest('AmazonQuest2',1)end
						elseif automob=='Giant Islander'then
							if not delay1 then startquest('AmazonQuest2',2)end
						elseif automob=='Marine Commodore'then
							if not delay1 then startquest('MarineTreeIsland',1)end
						elseif automob=='Marine Rear Admiral'then
							if not delay1 then startquest('MarineTreeIsland',2)end
						elseif automob=='Fishman Raider'then
							if not delay1 then startquest('DeepForestIsland3',1)end
						elseif automob=='Fishman Captain'then
							if not delay1 then startquest('DeepForestIsland3',2)end
						elseif automob=='Forest Pirate'then
							if not delay1 then startquest('DeepForestIsland',1)end
						elseif automob=='Mythological Pirate'then
							if not delay1 then startquest('DeepForestIsland',2)end
						elseif automob=='Jungle Pirate'then
							if not delay1 then startquest('DeepForestIsland2',1)end
						elseif automob=='Musketeer Pirate'then
							if not delay1 then startquest('DeepForestIsland2',2)end
						elseif automob=='Reborn Skeleton'then
							if not delay1 then startquest('HauntedQuest1',1)end
						elseif automob=='Living Zombie'then
							if not delay1 then startquest('HauntedQuest1',2)end
						elseif automob=='Demonic Soul'then
							if not delay1 then startquest('HauntedQuest2',1)end
						elseif automob=='Posessed Mummy'then
							if not delay1 then startquest('HauntedQuest2',2)end
						end
					else
						createtween(rootpart,Vector3.new(unpack(currentgiver)))
					end
				else
					if not quest.Container.QuestTitle.Title.Text:find(automob)then firesignal(quest.Abandon.MouseButton1Click)end
					if delay2 then
						for _,v in pairs(asssupercock:GetChildren())do
							if v.Name:split(' [')[1]==automob and not work.Enemies:FindFirstChild(v.Name:split(' [')[1])then
								if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<100 then
									rootpart.CFrame=v.HumanoidRootPart.CFrame+Vector3.new(0,50,0)
								else
									createtween(rootpart,v.HumanoidRootPart.Position+v.HumanoidRootPart.CFrame.LookVector*-10+Vector3.new(0,7,0))
								end
							end
						end
						for i,v in pairs(work.Enemies:GetChildren())do
						    if v:FindFirstChild('Humanoid')and v:FindFirstChild('HumanoidRootPart')and v.Humanoid.Health>0 and v.Name:find(automob)then
								v.HumanoidRootPart.Size=Vector3.new(25,25,25)v.HumanoidRootPart.CanCollide=false
								if v.Humanoid.Health==minhealth(true)then
									if not tpuadelayposset then tpuadelayposset=true delay(0.25,function()tpuadelaypos=v.HumanoidRootPart.Position tpuadelayposset=false end)end
									if tpuadelaypos then
										if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<100 then
											if tween and tween.PlaybackState.Name=='Playing'then
												tween:Cancel()
											end
											rootpart.CFrame=CFrame.new(tpuadelaypos)+v.HumanoidRootPart.CFrame.LookVector*-10+Vector3.new(0,7,0)
											tpua(tpuadelaypos)
										else
											createtween(rootpart,tpuadelaypos+v.HumanoidRootPart.CFrame.LookVector*-10+Vector3.new(0,7,0))
										end
									end
								end
							end
						end
					end
				end
			end
		end
		if bossfarm then
			if boss~='ass'then
				if table.find(extrabosses,boss)then
					for i,v in pairs(asssupercock:GetChildren())do
						if v.Name:split('[')[1]==boss then
							if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<100 then
								if tween and tween.PlaybackState.Name=='Playing'then
									tween:Cancel()
								end
								rootpart.CFrame=v.HumanoidRootPart.CFrame+Vector3.new(0,50,0)
							else
								createtween(rootpart,v.HumanoidRootPart.Position+Vector3.new(0,50,0))
							end
						else
							for i,v in pairs(work.Enemies:GetChildren())do
							    if v:FindFirstChild('Humanoid')and v:FindFirstChild('HumanoidRootPart')and v.Name:find(boss)then
									if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<100 then
										if tween and tween.PlaybackState.Name=='Playing'then
											tween:Cancel()
										end
						    			v.HumanoidRootPart.Size=Vector3.new(25,25,25)
						    			rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.lookVector*-15
									else
										createtween(rootpart,v.HumanoidRootPart.Position+v.HumanoidRootPart.CFrame.lookVector*-15)
									end
								end
							end
						end
					end
				else
					if not quest.Visible then
						local currentbossquestgiver
						if boss=='Vice Admiral 'then
							currentbossquestgiver=Vector3.new(unpack(marinegiver))
						elseif boss=='Warden 'then
							currentbossquestgiver=Vector3.new(unpack(impelgiver))
						elseif boss=='Chief Warden 'then
							currentbossquestgiver=Vector3.new(unpack(impelgiver))
						elseif boss=='Swan 'then
							currentbossquestgiver=Vector3.new(unpack(impelgiver))
						elseif boss=='Magma Admiral 'then
							currentbossquestgiver=Vector3.new(unpack(lavagiver))
						elseif boss=='Fishman Lord 'then
							currentbossquestgiver=Vector3.new(unpack(fishgiver))
						elseif boss=='Wysper 'then
							currentbossquestgiver=Vector3.new(unpack(sky2giver1))
						elseif boss=='Thunder God 'then
							currentbossquestgiver=Vector3.new(unpack(sky2giver2))
						elseif boss=='Cyborg 'then
							currentbossquestgiver=Vector3.new(unpack(galleygiver))
						elseif boss=='Diamond 'then
							currentbossquestgiver=Vector3.new(unpack(dressrosagiver1))
						elseif boss=='Jeremy 'then
							currentbossquestgiver=Vector3.new(unpack(dressrosagiver2))
						elseif boss=='Fajita 'then
							currentbossquestgiver=Vector3.new(unpack(greenbitgiver))
						elseif boss=='Smoke Admiral 'then
							currentbossquestgiver=Vector3.new(unpack(icecirclegiver))
						elseif boss=='Awakened Ice Admiral 'then
							currentbossquestgiver=Vector3.new(unpack(frostislandgiver))
						elseif boss=='Tide Keeper 'then
							currentbossquestgiver=Vector3.new(unpack(forgottengiver))
						elseif boss=='Stone 'then
							currentbossquestgiver=Vector3.new(unpack(twgiver1))
						elseif boss=='Beautiful Pirate 'then 
							currentbossquestgiver=Vector3.new(unpack(twgiver7))
						elseif boss=='Island Empress 'then 
							currentbossquestgiver=Vector3.new(unpack(twgiver3))
						elseif boss=='Captain Elephant 'then 
							currentbossquestgiver=Vector3.new(unpack(twgiver6))
						elseif boss=='Kilo Admiral 'then 
							currentbossquestgiver=Vector3.new(unpack(twgiver4))
						end
						if(rootpart.Position-currentbossquestgiver).magnitude<100 then
							if tween and tween.PlaybackState.Name=='Playing'then
								tween:Cancel()
							end
							rootpart.CFrame=CFrame.new(currentbossquestgiver)
							if bdelay1 and bdelay2 then
								spawn(function()
									bdelay2=false
									wait(delaytime1)bdelay1=false wait(delaytime2)
									bdelay1=true bdelay2=true
								end)
							end
							if boss=='Vice Admiral 'then
								if not bdelay1 then startquest('MarineQuest2',2)end
							elseif boss=='Warden 'then
								if not bdelay1 then startquest('ImpelQuest',1)end
							elseif boss=='Chief Warden 'then
								if not bdelay1 then startquest('ImpelQuest',2)end
							elseif boss=='Swan 'then
								if not bdelay1 then startquest('ImpelQuest',3)end
							elseif boss=='Magma Admiral 'then
								if not bdelay1 then startquest('MagmaQuest',3)end
							elseif boss=='Fishman Lord 'then
								if not bdelay1 then startquest('FishmanQuest',3)end
							elseif boss=='Wysper 'then
								if not bdelay1 then startquest('SkyExp1Quest',3)end
							elseif boss=='Thunder God 'then
								if not bdelay1 then startquest('SkyExp2Quest',3)end
							elseif boss=='Cyborg 'then
								if not bdelay1 then startquest('FountainQuest',3)end
							elseif boss=='Diamond 'then
								if not bdelay1 then startquest('Area1Quest',3)end
							elseif boss=='Jeremy 'then
								if not bdelay1 then startquest('Area2Quest',3)end
							elseif boss=='Fajita 'then
								if not bdelay1 then startquest('MarineQuest3',3)end
							elseif boss=='Smoke Admiral 'then
								if not bdelay1 then startquest('IceSideQuest',3)end
							elseif boss=='Awakened Ice Admiral 'then
								if not bdelay1 then startquest('FrostQuest',3)end
							elseif boss=='Tide Keeper 'then
								if not bdelay1 then startquest('ForgottenQuest',3)end
							elseif boss=='Stone 'then
								if not bdelay1 then startquest('PiratePortQuest',3)end
							elseif boss=='Beautiful Pirate 'then 
								if not bdelay1 then startquest('DeepForestIsland2',3)end
							elseif boss=='Island Empress 'then 
								if not bdelay1 then startquest('AmazonQuest2',3)end
							elseif boss=='Captain Elephant 'then 
								if not bdelay1 then startquest('DeepForestIsland',3)end
							elseif boss=='Kilo Admiral 'then 
								if not bdelay1 then startquest('MarineTreeIsland',3)end
							end
						else
							createtween(rootpart,currentbossquestgiver)
						end
					end
					if bdelay2 and quest.Visible then
						local foundbossinenemies
						for i,v in pairs(work.Enemies:GetChildren())do
							if v.Name:split('[')[1]==boss then foundbossinenemies=true end
						end
						if not foundbossinenemies then
							for i,v in pairs(asssupercock:GetChildren())do
								if v.Name:split('[')[1]==boss then
									if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<100 then
										if tween and tween.PlaybackState.Name=='Playing'then
											tween:Cancel()
										end
										rootpart.CFrame=v.HumanoidRootPart.CFrame+Vector3.new(0,50,0)
									else
										createtween(rootpart,v.HumanoidRootPart.Position+Vector3.new(0,50,0))
									end
								end
							end
						else
							for i,v in pairs(work.Enemies:GetChildren())do
							    if v:FindFirstChild('Humanoid')and v:FindFirstChild('HumanoidRootPart')and v.Name:find(boss)then
									if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<100 then
										if tween and tween.PlaybackState.Name=='Playing'then
											tween:Cancel()
										end
						    			v.HumanoidRootPart.Size=Vector3.new(25,25,25)
						    			rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.LookVector*-10+Vector3.new(0,7,0)
									else
										createtween(rootpart,v.HumanoidRootPart.Position+v.HumanoidRootPart.CFrame.LookVector*-10+Vector3.new(0,7,0))
									end
								end
							end
						end
					end
				end
			end
		end
		if autoequip and not dfmastery then
			if work.Characters:FindFirstChild(plr.Name)and plr.Character.Humanoid.Health>0 and plr.Character:FindFirstChild('CharacterReady')then
		        pcall(function()plr.Character.Humanoid:EquipTool(plr.Backpack[tool])end)
			end
		end
		if not dfmastery then dfmasclicker=true end
		if dfmastery and not levelfarm and not bossfarm then
			local playingfactoryraid,playingpirateraid
			if game.PlaceId==nw and autofactory and work.Map.Dressrosa.SmileFactory.Core.Glass.Transparency==1 then
				playingfactoryraid=true
			end
			if game.PlaceId==tw and autopirateraid then
				for _,v in pairs(asssupercock:GetChildren())do
					if table.find(pirateraidmobs,v.Name:split(' [')[1])then
						playingpirateraid=true
					end
				end
				for _,v in pairs(work.Enemies:GetChildren())do
					if table.find(pirateraidmobs,v.Name:split(' [')[1])then
						playingpirateraid=true
					end
				end
			end
			if not playingpirateraid and not playingfactoryraid then
				for _,v in pairs(asssupercock:GetChildren())do
					if v.Name:split(' [')[1]==automob and not work.Enemies:FindFirstChild(v.Name:split(' [')[1])then
						if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<100 then
							rootpart.CFrame=v.HumanoidRootPart.CFrame+Vector3.new(0,50,0)
						else
							createtween(rootpart,v.HumanoidRootPart.Position+v.HumanoidRootPart.CFrame.LookVector*-10+Vector3.new(0,7,0))
						end
					end
				end
				for i,v in pairs(work.Enemies:GetChildren())do
				    if v:FindFirstChild('Humanoid')and v:FindFirstChild('HumanoidRootPart')and v.Name:find(automob)then
						v.HumanoidRootPart.Size=Vector3.new(25,25,25)v.HumanoidRootPart.CanCollide=false
						if v.Humanoid.Health==minhealth(true)then
							if not tpuadelayposset then tpuadelayposset=true delay(0.25,function()tpuadelaypos=v.HumanoidRootPart.Position tpuadelayposset=false end)end
							if tpuadelaypos then
								if(rootpart.Position-v.HumanoidRootPart.Position).magnitude>100 then
									createtween(rootpart,v.HumanoidRootPart.Position+v.HumanoidRootPart.CFrame.LookVector*-10+Vector3.new(0,7,0))
								else
									tpua(tpuadelaypos)
									rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.LookVector*-10+Vector3.new(0,7,0)
									pcall(function()work.Camera.CFrame=CFrame.new(work.Camera.CFrame.p,v.HumanoidRootPart.Position)end)
									if minhealth(true)<=dfmashealth then dfmasclicker=false else dfmasclicker=true end
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
				end
			end
		end
		if autoislandteleports then
			if plr.PlayerGui.Main.Timer.Visible then
				local locations=work['_WorldOrigin'].Locations
				if locations:FindFirstChild('Island 1')and not locations:FindFirstChild('Island 2')and not locations:FindFirstChild('Island 3')and not locations:FindFirstChild('Island 4')and not locations:FindFirstChild('Island 5')then
					if(rootpart.Position-locations['Island 1'].Position).magnitude<100 then
						rootpart.CFrame=locations['Island 1'].CFrame
					else
						createtween(rootpart,locations['Island 1'].Position)
					end
				elseif locations:FindFirstChild('Island 1')and locations:FindFirstChild('Island 2')and not locations:FindFirstChild('Island 3')and not locations:FindFirstChild('Island 4')and not locations:FindFirstChild('Island 5')then
					if(rootpart.Position-locations['Island 2'].Position).magnitude<100 then
						rootpart.CFrame=locations['Island 2'].CFrame
					else
						createtween(rootpart,locations['Island 2'].Position)
					end
				elseif locations:FindFirstChild('Island 1')and locations:FindFirstChild('Island 2')and locations:FindFirstChild('Island 3')and not locations:FindFirstChild('Island 4')and not locations:FindFirstChild('Island 5')then
					if(rootpart.Position-locations['Island 3'].Position).magnitude<100 then
						rootpart.CFrame=locations['Island 3'].CFrame
					else
						createtween(rootpart,locations['Island 3'].Position)
					end
				elseif locations:FindFirstChild('Island 1')and locations:FindFirstChild('Island 2')and locations:FindFirstChild('Island 3')and locations:FindFirstChild('Island 4')and not locations:FindFirstChild('Island 5')then
					if(rootpart.Position-locations['Island 4'].Position).magnitude<100 then
						rootpart.CFrame=locations['Island 4'].CFrame
					else
						createtween(rootpart,locations['Island 4'].Position)
					end
				elseif locations:FindFirstChild('Island 1')and locations:FindFirstChild('Island 2')and locations:FindFirstChild('Island 3')and locations:FindFirstChild('Island 4')and locations:FindFirstChild('Island 5')then
					if(rootpart.Position-locations['Island 5'].Position).magnitude<100 then
						rootpart.CFrame=locations['Island 5'].CFrame
					else
						createtween(rootpart,locations['Island 5'].Position)
					end
				end
			end
		end
		if autopirateraid then
			checkforpirateraid(true)
			for i,v in pairs(work.Enemies:GetChildren())do
				if table.find(pirateraidmobs,v.Name:split(' [')[1])and v:FindFirstChild('Humanoid')then
					v.HumanoidRootPart.Size=Vector3.new(25,25,25)v.HumanoidRootPart.CanCollide=false
					if v.Humanoid.Health==minhealth(false,pirateraidmobs)then
						if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<100 then
							rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.lookVector*-10+Vector3.new(0,7,0)
						else
							createtween(rootpart,v.HumanoidRootPart.Position+v.HumanoidRootPart.CFrame.lookVector*-10+Vector3.new(0,7,0))
						end
					end
				end
			end
		end
		if dfesp then
			for i,v in pairs(work:GetChildren())do
				if v:IsA('Tool')and v:FindFirstChild('Handle')or v:IsA('Model')and v:FindFirstChild('Handle')then
					if not v.Handle:FindFirstChild('BillboardGui') then
						local BillboardGui=Instance.new('BillboardGui',v.Handle)
			    		local TextLabel=Instance.new('TextLabel',BillboardGui)
					    BillboardGui.AlwaysOnTop=true
					    BillboardGui.LightInfluence=1
					    BillboardGui.Size=UDim2.new(0,50,0,50)
					    BillboardGui.StudsOffset=Vector3.new(0,2,0)
					    TextLabel.BackgroundTransparency=1
					    TextLabel.Size=UDim2.new(1,0,1,0)
					    TextLabel.Text=v.Name
						if v:FindFirstChild('Fruit')then
							TextLabel.TextColor3=v.Fruit.Color
						else
							TextLabel.TextColor3=v.Handle.Color
						end
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
				if v.Name:find('Flower')then
					if not v:FindFirstChild('BillboardGui')then
						local BillboardGui=Instance.new('BillboardGui',v)
			    		local TextLabel=Instance.new('TextLabel',BillboardGui)
					    BillboardGui.AlwaysOnTop=true
					    BillboardGui.LightInfluence=1
					    BillboardGui.Size=UDim2.new(0,50,0,50)
					    BillboardGui.StudsOffset=Vector3.new(0,2,0)
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
				if v.Name:find('Flower')then
					if v:FindFirstChild('BillboardGui')then
						v.BillboardGui:Destroy()
					end
				end
			end
		end
		if espnames then
			for i,v in pairs(work.Characters:GetChildren())do
				if v.Name~=plr.Name then
					if v:FindFirstChild('Head')and not v.Head:FindFirstChild('BillboardGui')then
						local BillboardGui=Instance.new('BillboardGui',v.Head)
			    		local TextLabel=Instance.new('TextLabel',BillboardGui)
					    BillboardGui.AlwaysOnTop=true
					    BillboardGui.LightInfluence=1
					    BillboardGui.Size=UDim2.new(0,60,0,60)
					    BillboardGui.StudsOffset=Vector3.new(0,2,0)
					    TextLabel.BackgroundTransparency=1
					    TextLabel.Size=UDim2.new(1,0,1,0)
					    TextLabel.Text=v.Name
					    TextLabel.TextColor3=players:FindFirstChild(v.Name).TeamColor.Color
					    TextLabel.TextScaled=true
						TextLabel.Font='Gotham'
					end
				end
			end
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
					local expandhitboxes=function()
						v.HumanoidRootPart.Size=Vector3.new(hitboxsize,hitboxsize,hitboxsize)
						v.HumanoidRootPart.Transparency=0.75
						v.HumanoidRootPart.Color=rainbowcolor
					end
					local reducehitboxes=function()
						if v.HumanoidRootPart.Size~=Vector3.new(2,2,1)then
							v.HumanoidRootPart.Size=Vector3.new(2,2,1)
						end
					end
					if teamcheck then
						if players:FindFirstChild(v.Name).Team~=plr.Team then
							if alliescheck then
								if not plr.PlayerGui.Main.Allies.Container.Allies.ScrollingFrame.Frame:FindFirstChild(v.Name)then
									expandhitboxes()
								else
 									reducehitboxes()
								end
							else
								expandhitboxes()
							end
						else
							reducehitboxes()
						end
					else
						if alliescheck then
							if not plr.PlayerGui.Main.Allies.Container.Allies.ScrollingFrame.Frame:FindFirstChild(v.Name)then
								expandhitboxes()
							else
								reducehitboxes()
							end
						else
							expandhitboxes()
						end
					end
				end
			end end
		else
			if hitboxeswasturnedon then
				for i,v in pairs(work.Characters:GetChildren())do
					if v.Name~=plr.Name then
						if v:FindFirstChild('HumanoidRootPart')then
							v.HumanoidRootPart.Size=Vector3.new(2,2,1)
						end
					end
				end
			end
		end
		local hue=tick()%15/15
		local color=Color3.fromHSV(hue,1,1)
		rainbowcolor=color
		if rainbowwater then
			for i,v in pairs(work.Camera:GetChildren())do
				if v.Name:find('Water')then
					v.Color=rainbowcolor
				end
			end
		else
			for i,v in pairs(work.Camera:GetChildren())do
				if v.Name:find('Water')then
					v.Color=Color3.fromRGB(40,129,236)
				end
			end
		end
		local function getclosestplayer()
			local closestplayer
			local lastmagnitude=9e9
			for i,v in pairs(work.Characters:GetChildren())do
				if v.Name~=plr.Name and v:FindFirstChild('HumanoidRootPart')and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 then
					local currentmagnitude=(v.HumanoidRootPart.Position-rootpart.Position).magnitude
					if teamcheck then
						if players:FindFirstChild(v.Name).Team~=plr.Team then
							if alliescheck then
								if not plr.PlayerGui.Main.Allies.Container.Allies.ScrollingFrame.Frame:FindFirstChild(v.Name)then
									if currentmagnitude<lastmagnitude then
										lastmagnitude=currentmagnitude
										closestplayer=v.Name
									end
								end
							else
								if currentmagnitude<lastmagnitude then
									lastmagnitude=currentmagnitude
									closestplayer=v.Name
								end
							end
						end
					else
						if alliescheck then
							if not plr.PlayerGui.Main.Allies.Container.Allies.ScrollingFrame.Frame:FindFirstChild(v.Name)then
								if currentmagnitude<lastmagnitude then
									lastmagnitude=currentmagnitude
									closestplayer=v.Name
								end
							end
						else
							if currentmagnitude<lastmagnitude then
								lastmagnitude=currentmagnitude
								closestplayer=v.Name
							end
						end
					end
				end
			end
			return closestplayer
		end
		if aimbot and aimbottoggle then
			local closestplayer=work.Characters[getclosestplayer()].HumanoidRootPart
			work.Camera.CFrame=CFrame.new(work.Camera.CFrame.p,closestplayer.Position+closestplayer.CFrame.LookVector*predict)
		end
		if skillsaimbot then
			silentaimtarget=work.Characters[getclosestplayer()].HumanoidRootPart.Position+work.Characters[getclosestplayer()].HumanoidRootPart.CFrame.LookVector*predict
		end
	end)
	spawn(function()
		while wait(0.1)do 
			if autostat then
				for i,v in pairs(statstoadd)do
					asssupercock.Remotes['CommF_']:InvokeServer('AddPoint',v,1)
				end
			end
		end 
	end)
	spawn(function()
		while wait(2)do
			if autofindcolors then
				for i,v in pairs(getnilinstances())do
				    if v.Name:find('Master of Enhancement')then
						if v:FindFirstChild('HumanoidRootPart')and(v.HumanoidRootPart.Position-Vector3.new(0,-1000,0)).magnitude>25 then
							if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<100 then
								rootpart.CFrame=v.HumanoidRootPart.CFrame
							else
								createtween(rootpart,v.HumanoidRootPart.Position)
							end
						end 
					end
				end
			end 
			if autolegendarysword then
				for i,v in pairs(getnilinstances())do
				    if v.Name:find('Legendary Sword Dealer')then
						if v:FindFirstChild('HumanoidRootPart')and(v.HumanoidRootPart.Position-Vector3.new(0,-1000,0)).magnitude>25 then
							if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<100 then
								rootpart.CFrame=v.HumanoidRootPart.CFrame
							else
								createtween(rootpart,v.HumanoidRootPart.Position)
							end
						end
					end
				end
			end
		end
	end)
	rs.RenderStepped:Connect(function()
		if plr.Character:FindFirstChild('Humanoid')then
			if ws and plr.Character.Humanoid.JumpPower~=speedvalue then 
				plr.Character.Humanoid.WalkSpeed=speedvalue
			end
			if jp and plr.Character.Humanoid.JumpPower~=jumpPowervalue then
				plr.Character.Humanoid.JumpPower=jumpPowervalue
			end
		end
	end)
	rs.Stepped:Connect(function()
		if autoislandteleports or levelfarm or bossfarm or dfmastery or tween and tween.PlaybackState==Enum.PlaybackState.Playing then
			if work.Characters:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('Humanoid')and plr.Character.Humanoid.Health>0 then
				for i,v in pairs(plr.Character:GetChildren())do
					if v:IsA('BasePart')and v.CanCollide then
						v.CanCollide=false
					end
				end
			else
				if tween and tween.PlaybackState.Name=='Playing'then 
					tween:Cancel()
				end 
			end
		end
	end)
end
local function loadaba()
	repeat wait()until work.Live:FindFirstChild(plr.Name)
	local vim=game:GetService('VirtualInputManager')
	local currentsettings={SkillsDistance=20}
	if gamedata then currentsettings=loadData(game.PlaceId)end
	local s=win:CreateTab('Main')
	local ss=win:CreateTab('Misc')
	s:CreateLabel('Farm')
	local autoplay
	s:CreateToggle('AutoPlay',function(state)autoplay=state end)
	s:CreateLabel('AutoPlay Skills')
	local skillstouse={'0'}
	s:CreateTableDropdown('AutoSkills',{'1','2','3','4'},function(val)skillstouse=val end)
	local distanceforautoskills=currentsettings.SkillsDistance
	s:CreateSlider(2,distanceforautoskills,100,'Distance',function(val)
		distanceforautoskills=val
		currentsettings.SkillsDistance=val
		savedata(game.PlaceId,currentsettings)
	end)
	ss:CreateLabel('Main')
	ss:CreateButton('Hard Reset',function()
		plr.Character.Humanoid.Health=0
	end)
	local closetoenemy,respawning,hitobstacle,dodgeobstacleactivated,blocking
	rs.Heartbeat:Connect(function()
		if autoplay then
			if plr.PlayerGui:FindFirstChild('HUD')then
				if plr.PlayerGui:FindFirstChild('Respawning')or plr.PlayerGui.HUD.AFK.Visible then
					respawning=true
				else
					respawning=false
				end
			end
			if not respawning and not hitobstacle then
				vim:SendKeyEvent(true,'W',false,game)
				vim:SendKeyEvent(false,'S',false,game)
				vim:SendKeyEvent(true,'LeftShift',false,game)
			else
				vim:SendKeyEvent(false,'W',false,game)
				vim:SendKeyEvent(false,'LeftShift',false,game)
			end
			if plr:FindFirstChild('Backpack')then 
				if plr.Character:FindFirstChild('Humanoid')and plr.Character.Humanoid.Health<=60 then
					plr.Backpack.ServerTraits.Input:FireServer('g')
				end
				if not blocking then
					for i,v in pairs(work.Live:GetChildren())do
						if v.Name~=plr.Name then
							if v:FindFirstChild('HumanoidRootPart')and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 then
								if v:FindFirstChildOfClass('Tool')or v:FindFirstChild('Attacking')or v:FindFirstChild('LightAttacked')or v:FindFirstChild('UsingSkill')then
									if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<10 then
										blocking=true
										task.spawn(function()
											plr.Backpack.ServerTraits.Input:FireServer('f')
											repeat wait()until not v:FindFirstChildOfClass('Tool')and not v:FindFirstChild('Attacking')and not v:FindFirstChild('LightAttacked')or(rootpart.Position-v.HumanoidRootPart.Position).magnitude>=10 or v.Humanoid.Health<1
											plr.Backpack.ServerTraits.Input:FireServer('foff')
											blocking=false
										end)
									end
								end
							end
						end
					end
				end
			end
			local closestplayer
			local closestplayermagnitude=9e9
			for i,v in pairs(work.Live:GetChildren())do
				if v.Name~=plr.Name and v:FindFirstChild('HumanoidRootPart')and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 and not v:FindFirstChild('i')then
					local currentmagnitude=(rootpart.Position-v.HumanoidRootPart.Position).magnitude
					if not plr.Team then
						if currentmagnitude<closestplayermagnitude then
							closestplayermagnitude=currentmagnitude
							closestplayer=v.Name
						end
					else
						if players:FindFirstChild(v.Name)and players[v.Name].Team~=plr.Team then
							if currentmagnitude<closestplayermagnitude then
								closestplayermagnitude=(rootpart.Position-v.HumanoidRootPart.Position).magnitude
								closestplayer=v.Name
							end
						end
					end
				end
			end
			if not respawning then
				pcall(function()
					work.Camera.CFrame=CFrame.new(work.Camera.CFrame.Position,work.Live[closestplayer].HumanoidRootPart.Position)
				end)
			end
			local presskey=function(key,delaytime)
				if not delaytime then
					delaytime=0
				end
				vim:SendKeyEvent(true,key,false,game)
				task.delay(delaytime,function()
					vim:SendKeyEvent(false,key,false,game)
				end)
			end
			if closestplayermagnitude<distanceforautoskills then
				if table.find(skillstouse,'1')then
					presskey(0x31)
				end
				if table.find(skillstouse,'2')then
					presskey(0x32)
				end
				if table.find(skillstouse,'3')then
					presskey(0x33)
				end
				if table.find(skillstouse,'4')then
					presskey(0x34)
				end
			end
			if closestplayermagnitude>10 and not respawning then
				presskey('Q')
			end
			if closestplayermagnitude<=10 then
				closetoenemy=true
			else
				closetoenemy=false
			end
			if hitobstacle and not dodgeobstacleactivated then
				task.spawn(function()
					dodgeobstacleactivated=true
					presskey('Space',.1)
					wait(.5)
					presskey('Space',.1)
					wait(.1)
					if hitobstacle then
						vim:SendKeyEvent(false,'W',false,game)
						vim:SendKeyEvent(true,'S',false,game)
						wait(.2)
						presskey('Q')
						wait(.2)
						vim:SendKeyEvent(false,'S',false,game)
					end
					dodgeobstacleactivated=false
				end)
			end
		end
	end)
	task.spawn(function()
		while wait(.1)do
			if autoplay then
				if closetoenemy then
					vim:SendMouseButtonEvent(0,0,0,true,game,1)
					vim:SendMouseButtonEvent(0,0,0,false,game,1)
				end
				if not respawning and not hitobstacle then
					local ray=Ray.new(rootpart.Position,rootpart.CFrame.LookVector*6)
					local part,hitpos=work:FindPartOnRayWithIgnoreList(ray,{work.Live})
					if part then
						task.spawn(function()
							hitobstacle=true
							wait(.1)
							hitobstacle=false
						end)
					end
				end
			end
		end
	end)
end
local function loadroghoul()
	repeat wait()until work:FindFirstChild(plr.Name)
	local ts=game:GetService('TweenService')
	local tween
	local function createtween(part,vectordestination)
	    local s=(part.Position-vectordestination).magnitude/200
		tween=ts:Create(part,TweenInfo.new(s,Enum.EasingStyle.Linear),{CFrame=CFrame.new(vectordestination)})
		tween:Play()
		if not part:FindFirstChildOfClass('BodyVelocity')then
	        local bv=Instance.new('BodyVelocity',part)
	        bv.MaxForce=Vector3.new(100000,100000,100000)
			bv.Velocity=Vector3.new(0,0,0)
	        task.delay(s,function()
				bv:Destroy()
			end)
	    end
	end
	local currentsettings={FarmDistance=5,Auto_Kagune_Quinque_Stage=1}
	if gamedata then currentsettings=loadData(game.PlaceId)end
	local s=win:CreateTab('Main')
	s:CreateLabel('Farm')
	local farm
	s:CreateToggle('Farm',function(state)farm=state end)
	local farmablemobs={
		'Human',
		'Athlete',
		'Low Rank Aogiri Member',
		'Mid Rank Aogiri Member',
		'High Rank Aogiri Member',
		'Rank 2 Investigator',
		'Rank 1 Investigator',
		'First Class Investigator'
	}
	--local farmablebosses={'Nishiki Nishio','Koutarou Amon','Eto Yoshimura'}
	local currentmobs={'Rank 2 Investigator','Rank 1 Investigator','Low Rank Aogiri Member','Mid Rank Aogiri Member'}
	s:CreateTableDropdown('Mobs To Farm',farmablemobs,function(val)currentmobs=val end)
	local farmdistance=currentsettings.FarmDistance
	s:CreateSlider(0,farmdistance,20,'Distance',function(val)
		farmdistance=val
		currentsettings.FarmDistance=val
		savedata(game.PlaceId,currentsettings)
	end)
	local autokagune
	s:CreateToggle('AutoEquip Kagune/Quinque',function(state)autokagune=state end)
	local stage=currentsettings.Auto_Kagune_Quinque_Stage
	s:CreateSlider(1,stage,6,'Stage',function(val)
		stage=val
		currentsettings.Auto_Kagune_Quinque_Stage=val 
		savedata(game.PlaceId,currentsettings)
	end)
	local autoskills
	s:CreateToggle('AutoSkills',function(state)autoskills=state end)
	local hidename
	s:CreateToggle('HideName',function(state)hidename=state end)
	local vim=game:GetService('VirtualInputManager')
	local closetotheenemy
	spawn(function()
		while wait(0.15)do
			if farm and closetotheenemy then
				vim:SendMouseButtonEvent(0,0,0,true,game,1)
				vim:SendMouseButtonEvent(0,0,0,false,game,1)
			end
			if autoskills and closetotheenemy then 
				vim:SendKeyEvent(true,'E',false,game)
				vim:SendKeyEvent(true,'R',false,game)
				vim:SendKeyEvent(true,'F',false,game)
			end 
			if autokagune and not plr.Character:FindFirstChild('Quinque')and not plr.Character:FindFirstChild('Kagune')then
				local stageusing='One'
				if stage==1 then
					stageusing='One'
				elseif stage==2 then 
					stageusing='Two'
				elseif stage==3 then
					stageusing='Three'
				elseif stage==4 then
					stageusing='Four'
				elseif stage==5 then
					stageusing='Five'
				elseif stage==6 then
					stageusing='Six'
				end 
				vim:SendKeyEvent(true,stageusing,false,game)
			end 
		end 
	end)
	local nearestmobmagnitude=9e9
	local nearestcorpsemagnitude=9e9
	local nearestmob,nearestcorpse
	rs.Heartbeat:Connect(function()
		if farm then
			for i,v in pairs(work.NPCSpawns:GetChildren())do
				for i,v in pairs(v:GetChildren())do
					if v:FindFirstChild('HumanoidRootPart')and table.find(currentmobs,v.Name)then
						local mobinsafezone
						for _,b in pairs(work.SafeZones:GetChildren())do
							if(Vector3.new(b.Position.X,0,0)-Vector3.new(v.HumanoidRootPart.Position.X,0,0)).magnitude<=b.Size.X/2 and(Vector3.new(0,0,b.Position.Z)-Vector3.new(0,0,v.HumanoidRootPart.Position.Z)).magnitude<=b.Size.Z/2 then
								mobinsafezone=true
							end
						end
						if not mobinsafezone then
							if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<nearestmobmagnitude then
								nearestmobmagnitude=(rootpart.Position-v.HumanoidRootPart.Position).magnitude
								nearestmob=v
							end
							if v==nearestmob then
								if nearestmobmagnitude>50 then
									closetotheenemy=false
									createtween(rootpart,v.HumanoidRootPart.Position)
								else
									if tween and tween.PlaybackState.Name=='Playing'then 
										tween:Cancel()
									end
									rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.LookVector*-farmdistance
									closetotheenemy=true
								end
							end
						end
					end
				end
			end
			for i,v in pairs(work.NPCSpawns:GetChildren())do
				for i,v in pairs(v:GetChildren())do
					if v:FindFirstChild(v.Name..' Corpse')and v[v.Name..' Corpse']:FindFirstChild('ClickPart')and table.find(currentmobs,v.Name)then
						local clickpart=v[v.Name..' Corpse'].ClickPart
						if(rootpart.Position-clickpart.Position).magnitude<nearestmobmagnitude then
							if(rootpart.Position-clickpart.Position).magnitude<50 and nearestmobmagnitude>50 and not closetotheenemy then
								if tween and tween.PlaybackState.Name=='Playing'then 
									tween:Cancel()
								end
								rootpart.CFrame=clickpart.CFrame+clickpart.CFrame.LookVector*-2
								fireclickdetector(clickpart:FindFirstChildOfClass('ClickDetector'))
							end
						end
					end
				end
			end
			if not table.find(currentmobs,nearestmob)then
				nearestmob=nil 
				nearestmobmagnitude=9e9
			end
		else
			if tween and tween.PlaybackState.Name=='Playing'then 
				tween:Cancel()
			end
		end
		if hidename then
			if work:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('Head')and plr.Character.Head:FindFirstChild('PlayerStatus')then
				plr.Character.Head.PlayerStatus:Destroy()
			end
		end
	end)
	rs.Stepped:Connect(function()
		if farm then
			if work:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('Humanoid')and plr.Character.Humanoid.Health>0 then
				for i,v in pairs(plr.Character:GetChildren())do
					if v:IsA('BasePart')and v.CanCollide then
						v.CanCollide=false
					end
				end
			else
				if tween and tween.PlaybackState.Name=='Playing'then 
					tween:Cancel()
				end 
			end
		end
	end)
end
local function loadbokunoroblox()
	repeat wait()until work:FindFirstChild(plr.Name)
	local currentsettings={
		FarmDistance=5,
		SkillZ=false,
		SkillX=false,
		SkillC=false,
		SkillV=false,
		SkillB=false,
		SkillQ=false,
		SkillE=false,
		SkillF=false
	}
	if gamedata then currentsettings=loadData(game.PlaceId)end
	local npcs=work.NPCs
	local s=win:CreateTab('Farm')
	local ss=win:CreateTab('Misc')
	local function namemobs()
		for i,v in pairs(npcs:GetChildren())do
		    if v.Name:find('1')then 
				v.Name=v.Name:gsub('1','')
			elseif v.Name:find('2')then
				v.Name=v.Name:gsub('2','')
			elseif v.Name:find('3')then
				v.Name=v.Name:gsub('3','')
			elseif v.Name:find('4')then
				v.Name=v.Name:gsub('4','')
			elseif v.Name:find('5')then
				v.Name=v.Name:gsub('5','')
			elseif v.Name:find('6')then
				v.Name=v.Name:gsub('6','')
		    end
		end
	end 
	local mobstable={}
	namemobs()
	for i,v in pairs(npcs:GetChildren()) do
	    if not table.find(mobstable,v.Name)and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 then
	        table.insert(mobstable,v.Name)
	    end
	end
	s:CreateLabel('Main')
	local farm	
	s:CreateToggle('Farm',function(state)farm=state end)
	s:CreateTableDropdown('Mobs To Farm',mobstable,function(val)mobstofarm=val end)
	local farmdistance=currentsettings.FarmDistance
	s:CreateSlider(0,farmdistance,100,'Distance',function(val)
		farmdistance=val
		currentsettings.FarmDistance=val
		savedata(game.PlaceId,currentsettings)
	end)
	s:CreateLabel('Auto Skills')
	local skillz=currentsettings.SkillZ
	local skillx=currentsettings.SkillX
	local skillc=currentsettings.SkillC
	local skillv=currentsettings.SkillV
	local skillb=currentsettings.SkillB
	local skillq=currentsettings.SkillQ
	local skille=currentsettings.SkillE
	local skillf=currentsettings.SkillF
	s:CreateToggle('Auto Skill Z',function(state)
		skillz=state
		currentsettings.SkillZ=state
		savedata(game.PlaceId,currentsettings)
	end,skillz)
	s:CreateToggle('Auto Skill X',function(state)
		skillx=state
		currentsettings.SkillX=state
		savedata(game.PlaceId,currentsettings)
	end,skillx)
	s:CreateToggle('Auto Skill C',function(state)
		skillc=state
		currentsettings.SkillC=state
		savedata(game.PlaceId,currentsettings)
	end,skillc)
	s:CreateToggle('Auto Skill V',function(state)
		skillv=state
		currentsettings.SkillV=state
		savedata(game.PlaceId,currentsettings)
	end,skillv)
	s:CreateToggle('Auto Skill B',function(state)
		skillb=state
		currentsettings.SkillB=state
		savedata(game.PlaceId,currentsettings)
	end,skillb)
	s:CreateToggle('Auto Skill Q',function(state)
		skillq=state
		currentsettings.SkillQ=state
		savedata(game.PlaceId,currentsettings)
	end,skillq)
	s:CreateToggle('Auto Skill E',function(state)
		skille=state
		currentsettings.SkillE=state
		savedata(game.PlaceId,currentsettings)
	end,skille)
	s:CreateToggle('Auto Skill F',function(state)
		skillf=state
		currentsettings.SkillF=state
		savedata(game.PlaceId,currentsettings)
	end,skillf)
	ss:CreateLabel('Main')
	local autospin	
	ss:CreateToggle('AutoSpin',function(state)autospin=state end)
	local allquirks={
		'Half Cold Half Hot','One For All',
		'Quirkless','Explosion',
		'Overhaul','Warp Gate',
		'Air Propulsion','Shock Absorption',
		'Blackhole','Dark Shadow',
		'Cremation','Muscle Augmentation',
		'Permetion','Decay',
		'Acid','Pop Off',
		'Creation','Clones',
		'All For One','Frog',
		'Fierce Wings','Orcinus',
		'Manifes','Big Fist'
	}
	local quirkstospin={}
	ss:CreateTableDropdown('Quirks to Spin',allquirks,function(val)
		if table.find(val,'Half Cold Half Hot')and not table.find(quirkstospin,1)then
			table.insert(quirkstospin,1)
		elseif not table.find(val,'Half Cold Half Hot')and table.find(quirkstospin,1)then
			for i,v in pairs(quirkstospin)do
				if v==1 then 
					table.remove(quirkstospin,i)
				end
			end 
		elseif table.find(val,"One For All")and not table.find(quirkstospin,2)then
		    table.insert(quirkstospin,2)
		elseif not table.find(val,"One For All")and table.find(quirkstospin,2)then
		    for i,v in pairs(quirkstospin)do
		        if v==2 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Quirkless")and not table.find(quirkstospin,3)then
		    table.insert(quirkstospin,3)
		elseif not table.find(val,"Quirkless")and table.find(quirkstospin,3)then
		    for i,v in pairs(quirkstospin)do
		        if v==3 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Explosion")and not table.find(quirkstospin,6)then
		    table.insert(quirkstospin,6)
		elseif not table.find(val,"Explosion")and table.find(quirkstospin,6)then
		    for i,v in pairs(quirkstospin)do
		        if v==6 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Overhaul")and not table.find(quirkstospin,16)then
		    table.insert(quirkstospin,16)
		elseif not table.find(val,"Overhaul")and table.find(quirkstospin,16)then
		    for i,v in pairs(quirkstospin)do
		        if v==16 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Warp Gate")and not table.find(quirkstospin,8)then
		    table.insert(quirkstospin,8)
		elseif not table.find(val,"Warp Gate")and table.find(quirkstospin,8)then
		    for i,v in pairs(quirkstospin)do
		        if v==8 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Air Propulsion")and not table.find(quirkstospin,11)then
		    table.insert(quirkstospin,11)
		elseif not table.find(val,"Air Propulsion")and table.find(quirkstospin,11)then
		    for i,v in pairs(quirkstospin)do
		        if v==11 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Shock Absorption")and not table.find(quirkstospin,12)then
		    table.insert(quirkstospin,12)
		elseif not table.find(val,"Shock Absorption")and table.find(quirkstospin,12)then
		    for i,v in pairs(quirkstospin)do
		        if v==12 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Blackhole")and not table.find(quirkstospin,18)then
		    table.insert(quirkstospin,18)
		elseif not table.find(val,"Blackhole")and table.find(quirkstospin,18)then
		    for i,v in pairs(quirkstospin)do
		        if v==18 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Dark Shadow")and not table.find(quirkstospin,20)then
		    table.insert(quirkstospin,20)
		elseif not table.find(val,"Dark Shadow")and table.find(quirkstospin,20)then
		    for i,v in pairs(quirkstospin)do
		        if v==20 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Cremation")and not table.find(quirkstospin,19)then
		    table.insert(quirkstospin,19)
		elseif not table.find(val,"Cremation")and table.find(quirkstospin,19)then
		    for i,v in pairs(quirkstospin)do
		        if v==19 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Muscle Augmentation")and not table.find(quirkstospin,21)then
		    table.insert(quirkstospin,21)
		elseif not table.find(val,"Muscle Augmentation")and table.find(quirkstospin,21)then
		    for i,v in pairs(quirkstospin)do
		        if v==21 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Permetion")and not table.find(quirkstospin,22)then
		    table.insert(quirkstospin,22)
		elseif not table.find(val,"Permetion")and table.find(quirkstospin,22)then
		    for i,v in pairs(quirkstospin)do
		        if v==22 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Decay")and not table.find(quirkstospin,26)then
		    table.insert(quirkstospin,26)
		elseif not table.find(val,"Decay")and table.find(quirkstospin,26)then
		    for i,v in pairs(quirkstospin)do
		        if v==26 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Acid")and not table.find(quirkstospin,27)then
		    table.insert(quirkstospin,27)
		elseif not table.find(val,"Acid")and table.find(quirkstospin,27)then
		    for i,v in pairs(quirkstospin)do
		        if v==27 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Pop Off")and not table.find(quirkstospin,23)then
		    table.insert(quirkstospin,23)
		elseif not table.find(val,"Pop Off")and table.find(quirkstospin,23)then
		    for i,v in pairs(quirkstospin)do
		        if v==23 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Creation")and not table.find(quirkstospin,28)then
		    table.insert(quirkstospin,28)
		elseif not table.find(val,"Creation")and table.find(quirkstospin,28)then
		    for i,v in pairs(quirkstospin)do
		        if v==28 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Clones")and not table.find(quirkstospin,29)then
		    table.insert(quirkstospin,29)
		elseif not table.find(val,"Clones")and table.find(quirkstospin,29)then
		    for i,v in pairs(quirkstospin)do
		        if v==29 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"All For One")and not table.find(quirkstospin,30)then
		    table.insert(quirkstospin,30)
		elseif not table.find(val,"All For One")and table.find(quirkstospin,30)then
		    for i,v in pairs(quirkstospin)do
		        if v==30 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Frog")and not table.find(quirkstospin,32)then
		    table.insert(quirkstospin,32)
		elseif not table.find(val,"Frog")and table.find(quirkstospin,32)then
		    for i,v in pairs(quirkstospin)do
		        if v==32 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Fierce Wings")and not table.find(quirkstospin,33)then
		    table.insert(quirkstospin,33)
		elseif not table.find(val,"Fierce Wings")and table.find(quirkstospin,33)then
		    for i,v in pairs(quirkstospin)do
		        if v==33 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Orcinus")and not table.find(quirkstospin,35)then
		    table.insert(quirkstospin,35)
		elseif not table.find(val,"Orcinus")and table.find(quirkstospin,35)then
		    for i,v in pairs(quirkstospin)do
		        if v==35 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Manifest")and not table.find(quirkstospin,36)then
		    table.insert(quirkstospin,36)
		elseif not table.find(val,"Manifest")and table.find(quirkstospin,36)then
		    for i,v in pairs(quirkstospin)do
		        if v==36 then
		            table.remove(quirkstospin,i)
		        end
		    end
		elseif table.find(val,"Big Fist")and not table.find(quirkstospin,37)then
		    table.insert(quirkstospin,37)
		elseif not table.find(val,"Big Fist")and table.find(quirkstospin,37)then
		    for i,v in pairs(quirkstospin)do
		        if v==37 then
		            table.remove(quirkstospin,i)
		        end
		    end
		end
	end)
	rs.Heartbeat:Connect(function()
		pcall(function()
			if not plr.PlayerGui.SaveGui.AntiAutoClick.AntiAutoClickScript.Disabled then
				plr.PlayerGui.SaveGui.AntiAutoClick.AntiAutoClickScript.Disabled=true
			end
		end)
		if farm then
			namemobs()
			for i,v in pairs(npcs:GetChildren())do
				if table.find(mobstofarm,v.Name)then
					rootpart.CFrame=CFrame.new(rootpart.Position+v.HumanoidRootPart.Position)
					rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.LookVector*-farmdistance
				end
			end
			local presskey=function(key)
				local vim=game:GetService('VirtualInputManager')
				vim:SendKeyEvent(true,key,false,game)
				vim:SendKeyEvent(false,key,false,game)
			end
			if skillz then
				presskey('Z')
			end
			if skillx then
				presskey('X')
			end
			if skillc then
				presskey('C')
			end
			if skillv then
				presskey('V')
			end
			if skillb then
				presskey('B')
			end
			if skillq then
				presskey('Q')
			end
			if skille then
				presskey('E')
			end
			if skillf then
				presskey('F')
			end
		end
	end)
	spawn(function()
		while wait(1)do
			if autospin then
				if not table.find(quirkstospin,work.S1c2R5i66p5t5s51.PlayerData[plr.Name].Quirk.Value)and work.S1c2R5i66p5t5s51.PlayerData[plr.Name].Cash.Value>=5000 then
					work.S1c2R5i66p5t5s51.Spin.Spinner:InvokeServer('Commons')
				end
			end
		end
	end)
end
local function loadaut()
	local living=work.Living
	repeat wait()until living:FindFirstChild(plr.Name)
	local tween
	local function createtween(part,vectordestination)
	    local s=(part.Position-vectordestination).magnitude/500
		tween=game:GetService('TweenService'):Create(part,TweenInfo.new(s,Enum.EasingStyle.Linear),{CFrame=CFrame.new(vectordestination)})
		tween:Play()
		if not part:FindFirstChildOfClass('BodyVelocity')then
	        local bv=Instance.new('BodyVelocity',part)
	        bv.MaxForce=Vector3.new(100000,100000,100000)
			bv.Velocity=Vector3.new(0,0,0)
	        task.delay(s,function()
				bv:Destroy()
			end)
	    end
	end
	local s=win:CreateTab('Main')
	local ss=win:CreateTab('Misc')
	s:CreateLabel('Main')
	local itemsfarm	
	s:CreateToggle('Items Farm',function(state)itemsfarm=state end)
	local itemstofarm={}local megacock={'Meteors','Chests','Standard Items','Sand Debris'}
	s:CreateTableDropdown('Items',megacock,function(val)itemstofarm=val end)
	local mobfarm	
	s:CreateToggle('Mob Farm',function(state)mobfarm=state end)
	mobsinliving={}
	for i,v in pairs(living:GetChildren())do
		if not v.Name:find('Dummy')and v.Name~='Akira_DEV'and not players:FindFirstChild(v.Name)and v:FindFirstChild('HumanoidRootPart')then
			table.insert(mobsinliving,v.Name)
		end
	end
	local mobtofarm
	local mobsdropdown=s:CreateDropdown('Mob',mobsinliving,function(val)mobtofarm=val end)
	s:CreateButton('Refresh Mobs',function()
		table.clear(mobsinliving)
		for i,v in pairs(living:GetChildren())do
			if not v.Name:find('Dummy')and v.Name~='Akira_DEV'and not players:FindFirstChild(v.Name)and v:FindFirstChild('HumanoidRootPart')then
				table.insert(mobsinliving,v.Name)
			end
		end
		mobsdropdown:Refresh(mobsinliving)
	end)
	ss:CreateLabel('Main')
	local servertimelabel=ss:CreateLabel('Current Server Time : ? Seconds')
	local godmode	
	ss:CreateToggle('GodMode',function(state)godmode=state end)
	local presskeycd
	local function presskey(key)
		local vim=game:GetService('VirtualInputManager')
		vim:SendKeyEvent(true,key,false,game)
		task.delay(2,function()
			vim:SendKeyEvent(false,key,false,game)
		end)
	end
	rs.Heartbeat:Connect(function()
		local servertimeinseconds=work.ServerInformation.ServerTime.Value
		local servertime=tostring(math.floor(servertimeinseconds/3600))..' Hours '
		pcall(function()
			servertimelabel:Refresh('Current Server Time : '..servertime)
		end)
		if itemsfarm then
			if table.find(itemstofarm,'Meteors') then
				for i,v in pairs(work.ItemSpawns.Meteors:GetChildren())do
					if v:FindFirstChild('Meteor')then
						rootpart.CFrame=v.Meteor.CFrame
						presskeycd=true
						task.delay(2,function()
							presskeycd=false
						end)
					end
				end
			end if table.find(itemstofarm,'Chests')then
				for i,v in pairs(work.ItemSpawns.Chests:GetChildren())do
					if v:FindFirstChild('Chest')and v.Chest:FindFirstChild('RootPart')then
						createtween(rootpart,v.Chest.RootPart.Position)
						presskeycd=true
						task.delay(2,function()
							presskeycd=false
						end)
					end
				end
			end if table.find(itemstofarm,'Standard Items')then
				for i,v in pairs(work.ItemSpawns.StandardItems:GetChildren())do
					if v:FindFirstChildOfClass('MeshPart')then
						rootpart.CFrame=v:FindFirstChildOfClass('MeshPart').CFrame
						presskeycd=true
						task.delay(2,function()
							presskeycd=false
						end)
					end
				end
			end if table.find(itemstofarm,'Sand Debirs')then
				for i,v in pairs(work.ItemSpawns['Sand Debris']:GetChildren())do
					if v:FindFirstChild('Sand Debris')then
						rootpart.CFrame=v['Sand Debris'].CFrame
						presskeycd=true
						task.delay(2,function()
							presskeycd=false
						end)
					end
				end
			end
		else
			if tween and tween.PlaybackState.Name=='Playing'then
				tween:Cancel()
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
			if plr.Character:FindFirstChild('Values')and living:FindFirstChild(plr.Name)and plr.Character.Values:FindFirstChild('Block')then
				pcall(function()
					plr.Character.Values.Block:Destroy()
				end)
			end
		end
	end)
	rs.Stepped:Connect(function()
		if itemsfarm then
			if living:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('Humanoid')and plr.Character.Humanoid.Health>0 then
				for i,v in pairs(plr.Character:GetChildren())do
					if v:IsA('BasePart')and v.CanCollide then
						v.CanCollide=false
					end
				end
			else
				if tween and tween.PlaybackState.Name=='Playing'then 
					tween:Cancel()
				end 
			end
		end
	end)
	task.spawn(function()
		while wait(2)do
			if presskeycd then
				presskey('E')
			end
		end
	end)
end
local function loadaherodestiny()
	repeat wait()until work:FindFirstChild(plr.Name)
	local currentsettings={
		FarmDistance=5,
		SkillQ=false,
		SkillE=false,
		SkillR=false,
		SkillC=false,
		SkillF=false
	}
	if gamedata then currentsettings=loadData(game.PlaceId)end
	local s=win:CreateTab('Main')
	local ss=win:CreateTab('Misc')
	s:CreateLabel('Main')
	local questfarm	
	s:CreateToggle('Quest Farm',function(state)questfarm=state end)
	local quest='Quest 1'
	local quests={}
	for i,v in pairs(work.StaticHumanoids:GetChildren())do
		if v.Name~='Class Changer'and v.Name~='Quest 9'and not table.find(quests,v.Name)then
			table.insert(quests,v.Name)
		end
	end
	table.sort(quests,function(a,b)return a<b end)
	s:CreateDropdown('Quest',quests,function(val)quest=val end)
	local farmdistance=currentsettings.FarmDistance
	s:CreateSlider(2,farmdistance,350,'Distance',function(val)
		farmdistance=val
		currentsettings.FarmDistance=val
		savedata(game.PlaceId,currentsettings)
	end)
	s:CreateButton('Skip Quest',function(state)
		pcall(function()
			plr.PlayerGui.ScreenGui.QuestBackground.Visible=false
		end)
	end)
	s:CreateLabel('AutoSkills')
	local sq=currentsettings.SkillQ
	local se=currentsettings.SkillE
	local sr=currentsettings.SkillR
	local sc=currentsettings.SkillC
	local sf=currentsettings.SkillF
	s:CreateToggle('Auto Q',function(state)
		sq=state
		currentsettings.SkillQ=state
		savedata(game.PlaceId,currentsettings)
	end,sq)
	s:CreateToggle('Auto E',function(state)
		se=state
		currentsettings.SkillE=state
		savedata(game.PlaceId,currentsettings)
	end,se)
	s:CreateToggle('Auto R',function(state)
		sr=state
		currentsettings.SkillR=state
		savedata(game.PlaceId,currentsettings)
	end,sr)
	s:CreateToggle('Auto C',function(state)
		sc=state
		currentsettings.SkillC=state
		savedata(game.PlaceId,currentsettings)
	end,sc)
	s:CreateToggle('Auto F',function(state)
		sf=state
		currentsettings.SkillF=state
		savedata(game.PlaceId,currentsettings)
	end,sf)
	s:CreateLabel('Misc')
	local autoawakening,autoclick
	s:CreateToggle('AutoAwakening',function(state)autoawakening=state end)
	s:CreateToggle('AutoClick',function(state)autoclick=state end)
	ss:CreateLabel('Main')
	local autospin	
	ss:CreateToggle('AutoSpin',function(state)autospin=state end)
	local classes={
		'Superhuman','Alien',
		'Cyborg','Esper',
		'Ninja','Watchdog',
		'Angel','Dark Esper',
		'Metal Bat','Phoenix',
		'Toxin','Arcane Knight',
		'Demon','G.O.D','Thor',
		'Ultrahuman'
	}
	local classestospin
	ss:CreateTableDropdown('Class',classes,function(val)classestospin=val end)
	ss:CreateButton('Buy Spins',function(state)
		pcall(function()
			firesignal(plr.PlayerGui.ScreenGui.ClassBackground.BuySpinAll.MouseButton1Click)
		end)
	end)
	local function presskey(key)
		local vim=game:GetService('VirtualInputManager')
		vim:SendKeyEvent(true,key,false,game)
		vim:SendKeyEvent(false,key,false,game)
	end
	rs.Heartbeat:Connect(function()
		if questfarm then
			if sq then
				presskey('Q')
			end
			if se then
				presskey('E')
			end
			if sr then
				presskey('R')
			end
			if sc then
				presskey('C')
			end
			if sf then
				presskey('F')
			end
			if plr.PlayerGui:FindFirstChild('ScreenGui')then
				if plr.PlayerGui.ScreenGui.QuestBackground.Visible then
					for i,v in pairs(work.Spawns:GetChildren())do
						for i,v in pairs(v:GetChildren())do
							if v:FindFirstChild('HumanoidRootPart')and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 and v.HumanoidRootPart:FindFirstChild('HealthBar')and v.HumanoidRootPart.HealthBar:FindFirstChild('BG')and v.HumanoidRootPart.HealthBar.BG:FindFirstChild('NameLabel')then
								if plr.PlayerGui.ScreenGui.QuestBackground.ProgressLabel.ProgressLabel.Text:find('Werewolves')then
									plr.PlayerGui.ScreenGui.QuestBackground.ProgressLabel.ProgressLabel.Text='Defeat Crowned Sea Monster'
								elseif plr.PlayerGui.ScreenGui.QuestBackground.ProgressLabel.ProgressLabel.Text:find('Crowned Sea Monster')then
									plr.PlayerGui.ScreenGui.QuestBackground.ProgressLabel.ProgressLabel.Text='Defeat Werewolfes'
								end
								if plr.PlayerGui.ScreenGui.QuestBackground.ProgressLabel.ProgressLabel.Text:lower():find(v.HumanoidRootPart.HealthBar.BG.NameLabel.Text:lower())then
									rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.LookVector*-farmdistance+Vector3.new(0,3,0)
									rootpart.CFrame=CFrame.new(rootpart.Position,v.HumanoidRootPart.Position)
									if sq or se or sr or sc or sf then 
										work.Camera.CFrame=CFrame.new(work.Camera.CFrame.p,v.HumanoidRootPart.Position)
									end
								end
							end
						end
					end
				else
					rootpart.CFrame=work.StaticHumanoids[quest].QuestPart.CFrame
					if not plr.PlayerGui.ScreenGui.QuestBackground.Visible then
						fireclickdetector(work.StaticHumanoids[quest].QuestPart.ClickDetector)
						if plr.PlayerGui.Dialogue.Frame.Visible then
							firesignal(plr.PlayerGui.Dialogue.Frame.PurchaseButton.MouseButton1Click)
						end
					end
				end
			end
		end
	end)
	task.spawn(function()
		while wait(1)do
			if autoawakening then
				if work:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('Form')and plr:FindFirstChild('Stats')then
					if plr.Character.Form.Value:lower()~=plr.Stats.Class.Value:lower()then
						presskey('G')
					end
				end
			end
		end 
	end)
	task.spawn(function()
		while wait(.1)do
			if autospin then
				if not table.find(classestospin,plr.Stats.Class.Value)and plr.Stats.Spins.Value>0 then
					game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer()
				end
			end
		end
	end)
	task.spawn(function()
		while wait(.1)do
			if autoclick and questfarm then
				local vu=game:GetService('VirtualUser')
				vu:Button1Down(Vector2.new(-1000,-1000),work.CurrentCamera.CFrame)
				vu:Button1Up(Vector2.new(-1000,-1000),work.CurrentCamera.CFrame)
			end
		end
	end)
end
local function loadkinglegacy()
	repeat wait()until work:FindFirstChild(plr.Name)
	local npcs=work.AntiTPNPC
	local currentsettings={
		FarmDistance=-6,
		SkillZ=false,
		SkillX=false,
		SkillC=false,
		SkillV=false,
		SkillB=false,
		SkillE=false
	}
	if gamedata then currentsettings=loadData(game.PlaceId)end
	local s=win:CreateTab('Main')
	local ss=win:CreateTab('Teleports')
	local sss=win:CreateTab('Misc')
	s:CreateLabel('Main')
	local autofarm	
	s:CreateToggle('AutoFarm',function(state)autofarm=state end)
	local farmdistance=currentsettings.FarmDistance
	s:CreateSlider(-20,farmdistance,20,'Distance',function(val)
		farmdistance=val
		currentsettings.FarmDistance=val
		savedata(game.PlaceId,currentsettings)
	end)
	local autoequip
	s:CreateToggle('Auto Equip',function(state)autoequip=state end)
	local tools={}
	local collectTools=function()
		for i,v in pairs(plr.Backpack:GetChildren())do
			if v:IsA('Tool')then
				table.insert(tools,v.Name)
			end
		end
		for i,v in pairs(plr.Character:GetChildren())
			do if v:IsA('Tool')then
				table.insert(tools,v.Name)
			end
		end
	end
	collectTools()
	local tool
	local toolsdropdown=s:CreateDropdown('Tool',tools,function(val)tool=val end)
	s:CreateButton('Refresh Tools',function()
		table.clear(tools)
		collectTools()
		toolsdropdown:RefreshDropdown(tools)
	end)
	s:CreateLabel('AutoSkills')
	local skillz=currentsettings.SkillZ
	local skillx=currentsettings.SkillX
	local skillc=currentsettings.SkillC
	local skillv=currentsettings.SkillV
	local skillb=currentsettings.SkillB
	local skille=currentsettings.SkillE
	s:CreateToggle('Auto Z',function(state)
		skillz=state
		currentsettings.SkillZ=state
		savedata(game.PlaceId,currentsettings)
	end,skillz)
	s:CreateToggle('Auto X',function(state)
		skillx=state
		currentsettings.SkillX=state
		savedata(game.PlaceId,currentsettings)
	end,skillx)
	s:CreateToggle('Auto C',function(state)
		skillc=state
		currentsettings.SkillC=state
		savedata(game.PlaceId,currentsettings)
	end,skillc)
	s:CreateToggle('Auto V',function(state)
		skillv=state
		currentsettings.SkillV=state
		savedata(game.PlaceId,currentsettings)
	end,skillv)
	s:CreateToggle('Auto B',function(state)
		skillb=state
		currentsettings.SkillB=state
		savedata(game.PlaceId,currentsettings)
	end,skillb)
	s:CreateToggle('Auto E',function(state)
		skille=state
		currentsettings.SkillE=state
		savedata(game.PlaceId,currentsettings)
	end,skille)
	ss:CreateLabel('Main')
	local sortedspawnpoints={}
	for i,v in pairs(work.SpawnPoints:GetChildren())do
		local gsubbedstring=v.Name:gsub('Spawn','')
		table.insert(sortedspawnpoints,tonumber(gsubbedstring))
	end
	table.sort(sortedspawnpoints)
	for i,v in pairs(sortedspawnpoints)do
		ss:CreateButton('Spawn '..v,function()
			rootpart.CFrame=work.SpawnPoints['Spawn'..v].CFrame
		end)
	end
	sss:CreateLabel('Main')
	local collectfruits	
	sss:CreateToggle('Auto Collect Fruits',function(state)collectfruits=state end)
	local storage=game:GetService('ReplicatedStorage')
	rs.Heartbeat:Connect(function()
		if not plr:FindFirstChild('PlayerStats')then return end
		local lvl=plr.PlayerStats.lvl local vu=game:GetService('VirtualUser')
		if autofarm then
			local function presskey(key)
				local vim=game:GetService('VirtualInputManager')
				vim:SendKeyEvent(true,key,false,game)
				vim:SendKeyEvent(false,key,false,game)
			end
			if skillz then
				presskey('Z')
			end
			if skillx then
				presskey('X')
			end
			if skillc then
				presskey('C')
			end
			if skillv then
				presskey('V')
			end
			if skillb then
				presskey('B')
			end
			if skille then
				presskey('E')
			end
			local splittedtable={}
			local minimaldiffrence
			for i,v in pairs(npcs:GetChildren())do
				if v.Name:find('Quest')then
					table.insert(splittedtable,v.Name:split('Lvl')[2])
				end	
			end
			for i,v in pairs(npcs:GetChildren())do
				if v.Name:find('Quest')then
					local lastdiffrence=9e9
					for i,v in pairs(splittedtable)do
						local diffrence=math.abs(lvl.Value-v)
						if diffrence<lastdiffrence and tonumber(v)<=lvl.Value then
							lastdiffrence=diffrence
							minimaldiffrence=v
						end
					end
				end
			end
			if not minimaldiffrence then
				minimaldiffrence=1
			end
			local foundquestinstorage
			for i,v in pairs(storage.MAP:GetChildren())do
				if v.Name:find('Quest')and v.Name:find('Lvl')and tonumber(v.Name:split('QuestLvl')[2])<=lvl.Value then
					if tonumber(v.Name:split('QuestLvl')[2])>tonumber(minimaldiffrence)then
						foundquestinstorage=true
						delay(2,function()
							foundquestinstorage=false
						end)
						rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.LookVector*5
					end
				end
			end
			if not foundquestinstorage then
				for i,v in pairs(npcs:GetChildren())do
					if v.Name:find('Quest')and v.Name:split('Lvl')[2]==minimaldiffrence then
						if not plr.PlayerGui.Quest.QuestBoard.Visible then
							rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.LookVector*5
							if not plr.PlayerGui:FindFirstChild(v.Name)then
								storage.Remotes.Functions.CheckQuest:InvokeServer(v)
							else
								local button=plr.PlayerGui[v.Name].Dialogue.Accept
								button.Size=UDim2.new(10,10,10,10)
								button.Position=UDim2.new(-4.5,-4.5,-4.5,-4.5)
								vu:Button1Down(Vector2.new(0,0),work.Camera.CFrame)
								vu:Button1Up(Vector2.new(0,0),work.Camera.CFrame)
							end
						else
							for i,v in pairs(plr.PlayerGui:GetChildren())do
								if v.Name:find('Quest')and v:FindFirstChild('Dialogue')then
									local button=plr.PlayerGui[v.Name].Dialogue.Decline
									button.Size=UDim2.new(10,10,10,10)
									button.Position=UDim2.new(-4.5,-4.5,-4.5,-4.5)
									vu:Button1Down(Vector2.new(0,0),work.Camera.CFrame)
									vu:Button1Up(Vector2.new(0,0),work.Camera.CFrame)
								end
							end
						end
					end
				end
				if plr.PlayerGui.Quest.QuestBoard.Visible then
					vu:Button1Down(Vector2.new(0,0),work.Camera.CFrame)
					vu:Button1Up(Vector2.new(0,0),work.Camera.CFrame)
					local questnpc=plr.PlayerGui.Quest.QuestBoard.QuestCount.Text
					local mobshealth={}
					if questnpc:find('-')then
						local a=questnpc:split('-')[1]
						local b=questnpc:split('-')[2]
						questnpc=a..b
					end
					for i,v in pairs(work.Monster:GetChildren())do
						for i,v in pairs(v:GetChildren())do
							if v:FindFirstChild('HumanoidRootPart')and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 and questnpc:find(v.Name:split(' [')[1])then
								if not table.find(mobshealth,v.Humanoid.Health)then
									table.insert(mobshealth,v.Humanoid.Health)
								end
							end
						end
					end
					local minimalhealth
					if #mobshealth>0 then
						minimalhealth=math.min(table.unpack(mobshealth))
					end
					for i,v in pairs(work.Monster:GetChildren())do
						for i,v in pairs(v:GetChildren())do
							if v.Name:find('-')then
								local a=v.Name:split('-')[1]
								local b=v.Name:split('-')[2]v.Name=a..b
							end
							if v:FindFirstChild('HumanoidRootPart')and v:FindFirstChild('Humanoid')and v.Humanoid.Health==minimalhealth and questnpc:find(v.Name:split(' [')[1])then
								rootpart.CFrame=v.HumanoidRootPart.CFrame+Vector3.new(0,farmdistance,0)+v.HumanoidRootPart.CFrame.LookVector*-3
								rootpart.CFrame=CFrame.new(rootpart.Position,v.HumanoidRootPart.Position)
							end
						end
					end
				end
			end
		end
		if autoequip then
			if work:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('Humanoid')and plr.Character.Humanoid.Health>0 then
		        pcall(function()
					plr.Character.Humanoid:EquipTool(plr.Backpack[tool])
				end)
			end
		end
		if collectfruits then
			for i,v in pairs(work.AllspawnDF:GetChildren())do 
				pcall(function()
					rootpart.CFrame=v.Handle.CFrame
				end)
			end
			for i,v in pairs(work:GetChildren())do
				if v:IsA('Tool')and v.Name:find('DF')then
					pcall(function()
						rootpart.CFrame=v.Handle.CFrame
					end)
				end
			end
		end
	end)
end
local function loaddbzfs()
	local live=work.Live
	repeat wait()until live:FindFirstChild(plr.Name)
	local currentsettings={FarmDistance=4,Fov=70}
	if gamedata then currentsettings=loadData(game.PlaceId)end
	local earth=536102540
	local namek=882399924
	local space=478132461
	local future=569994010
	local secretworld=2046990924
	local lobby=3565304751
	local htc=882375367
	local heaven=3552157537
	local zaros=2651456105
	local broly=2050207304
	local top=535527772
	local hardtop=3552158750
	local tourtament=566006798
	local s=win:CreateTab('Main')
	local ss=win:CreateTab('Teleports')
	local sss=win:CreateTab('Misc')
	local ssss=win:CreateTab('Fun')
	local mobs={}
	local collectmobs=function()
		for i,v in pairs(live:GetChildren())do
			if not table.find(mobs,v.Name:split(' Lvl')[1])and not players:FindFirstChild(v.Name)and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 then
				table.insert(mobs,v.Name:split(' Lvl')[1])
			end
		end
	end
	collectmobs()
	s:CreateLabel('Main')
	local mobstofarm={'megacock'}
	local mobfarm
	local levelfarm
	local autohtc
	local farmdistance=currentsettings.FarmDistance
	if game.PlaceId~=htc then
		s:CreateToggle('Mob Farm',function(state)mobfarm=state end)
		local ass=s:CreateTableDropdown('Mob',mobs,function(val)mobstofarm=val end)
		s:CreateButton('Refresh Mobs',function()
			table.clear(mobs)
			collectmobs()
			ass:Refresh(mobs)
		end)
		s:CreateToggle('Level Farm',function(state)levelfarm=state end)
	else 
		s:CreateToggle('Auto HTC (must have Dragon Crush)',function(state)autohtc=state end)
		farmdistance=2
	end
	s:CreateSlider(1,farmdistance,10,'Distance',function(val)
		farmdistance=val
		currentsettings.FarmDistance=val
		savedata(game.PlaceId,currentsettings)
	end)
	ss:CreateLabel('Main')
	local tpservice=game:GetService('TeleportService')
	if game.PlaceId~=earth then ss:CreateButton('Earth',function()tpservice:Teleport(earth,plr)end)end
	if game.PlaceId~=namek then ss:CreateButton('Namek',function()tpservice:Teleport(namek,plr)end)end
	if game.PlaceId~=space then ss:CreateButton('Space',function()tpservice:Teleport(space,plr)end)end
	if game.PlaceId~=future then ss:CreateButton('Future',function()tpservice:Teleport(future,plr)end)end
	if game.PlaceId~=secretworld then ss:CreateButton('Secret World',function()tpservice:Teleport(secretworld,plr)end)end
	if game.PlaceId~=zaros then ss:CreateButton('Zaros',function()tpservice:Teleport(zaros,plr)end)end
	if game.PlaceId~=lobby then ss:CreateButton('Queue World',function()tpservice:Teleport(lobby,plr)end)end
	sss:CreateLabel('Main')
	local fullbright
	local startfog=game:GetService('Lighting').FogEnd	
	sss:CreateToggle('FullBright',function(state)fullbright=state end)
	local spambeans,noslow,toprespawn
	if game.PlaceId~=htc then
		sss:CreateToggle('Spam Beans/Jars',function(state)spambeans=state end)
	end
	if game.PlaceId~=htc then
		sss:CreateToggle('NoSlow',function(state)noslow=state end)
	end
	if game.PlaceId==top or game.PlaceId==hardtop then
		sss:CreateToggle('Top Respawn',function(state)toprespawn=state end)
	end
	sss:CreateLabel('Misc')
	local invisstate=false
	local invisbutton
	invisbutton=sss:CreateButton('Invisibility',function()
		local reseted=false
		if not invisstate then
			if live:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('LowerTorso')and plr.Character.LowerTorso:FindFirstChild('Root')then
				local lowertorsoclone=plr.Character.LowerTorso.Root:Clone()
				plr.Character.LowerTorso.Root:Destroy()
				lowertorsoclone.Parent=plr.Character.LowerTorso
				local localcharremoving
				task.spawn(function()
					repeat wait()until plr.Character.Humanoid.Health<=5
					reseted=true
					invisstate=false
					invisbutton:RefreshText('Invisibility')
				end)
				invisbutton:RefreshText('Stop Invisibility')
			end
		else
			if plr.Character.Humanoid.Health>0 then
				plr.Character.Humanoid.Health=0
			end
			invisbutton:RefreshText('Invisibility')
		end
		if not reseted then 
			invisstate=not invisstate
		end
	end)
	local earthgodmode,godmode
	if game.PlaceId==earth then
		sss:CreateToggle('Earth Godmode',function(state)earthgodmode=state end)
	else
		sss:CreateToggle('Basic/Ranked Godmode',function(state)
			if state and plr.Charcter.Stats:FindFirstChild('Ki-Resist')and plr.Charcter.Stats:FindFirstChild('Phys-Resist')then
				plr.Character.Stats['Ki-Resist']:Destroy()
				plr.Character.Stats['Phys-Resist']:Destroy()
			else
				pcall(function()
					plr.Character.Humanoid.Health=0
				end)
			end
		end)
	end
	sss:CreateButton('Hard Reset',function()plr.Character.Humanoid.Health=0 end)
	ssss:CreateLabel('Main')
	local changefov ssss:CreateToggle('Change Fov',function(state)changefov=state end)
	local fov=currentsettings.Fov
	ssss:CreateSlider(1,fov,120,'Fov',function(val)
		fov=val
		currentsettings.Fov=val
		savedata(game.PlaceId,currentsettings)
	end)	
	ssss:CreateLabel('Stats Checker')
	local playerstable={}
	local collectplayers=function()
		for i,v in pairs(players:GetChildren())do
			table.insert(playerstable,v.Name)
		end
	end
	collectplayers()
	local playertocheckstats
	local playersdropdown=ssss:CreateDropdown('Player',playerstable,function(val)playertocheckstats=val end)
	ssss:CreateButton('Refresh Players',function()
		table.clear(playerstable)
		collectplayers()
		playersdropdown:Refresh(playerstable)
	end)
	local stats1=ssss:CreateLabel('Race: ')
	local stats2=ssss:CreateLabel('Health Max: ')
	local stats3=ssss:CreateLabel('Ki Max: ')
	local stats4=ssss:CreateLabel('Melee Damage: ')
	local stats5=ssss:CreateLabel('Ki Damage: ')
	local stats6=ssss:CreateLabel('Melee Resistance: ')
	local stats7=ssss:CreateLabel('Ki Resistance: ')
	local stats8=ssss:CreateLabel('Speed: ')
	ssss:CreateButton('Show Stats',function()
		spawn(function()
			repeat wait()until work.Live:FindFirstChild(playertocheckstats)
			stats1:Refresh('Race: '..work.Live[playertocheckstats].Race.Value)
			stats2:Refresh('Health Max: '..work.Live[playertocheckstats].Stats['Health-Max'].Value)
			stats3:Refresh('Ki Max: '..work.Live[playertocheckstats].Stats['Ki-Max'].Value)
			stats4:Refresh('Melee Damage: '..work.Live[playertocheckstats].Stats['Phys-Damage'].Value)
			stats5:Refresh('Ki Damage: '..work.Live[playertocheckstats].Stats['Ki-Damage'].Value)
			stats6:Refresh('Melee Resistance: '..work.Live[playertocheckstats].Stats['Phys-Resist'].Value)
			stats7:Refresh('Ki Resistance: '..work.Live[playertocheckstats].Stats['Ki-Resist'].Value)
			stats8:Refresh('Speed: '..work.Live[playertocheckstats].Stats['Speed'].Value)
		end)
	end)
	local function getquest()
		local questmarker
		for i,v in pairs(work:GetChildren())do
			if v:IsA('MeshPart')and v.Name~='100SnakeQuest'and v.Name~='Quest3'and v.Name~='LostMoss'and not v.Name:find('DragonBall')and v.Name~='Quest1'and v.Name~='BigQuest'and v.Name~='Quest2'and v.Name~='10Entry'and v.Name~='BrolyBoss2'and v.Name~='JCQuest'and v.Name~='50Gorillas'and v.Name~='AlienQuest'and v.Name~='10Wins'and v.Name~='RelicQuest'and v.Name~='HuntQuest'and v.Name~='NamekQuest'and v.Name~='PopoQuest'and v.Name~='KrillinQuest'and v.Name~='RoshiQuest'and v.Name~='Bkp Quest'and v.Name~='WTQuest'and v.Name~='Quest1'and v.Name~='RedRibbonQuest'and v.Position~=Vector3.new(-726.52966308594,28.934972763062,-2919.5256347656)then
				if v.Color==Color3.fromRGB(0,255,0)then
					questmarker=v
				end
				if not questmarker then
					if v.Color==Color3.fromRGB(0,255,255)then
						questmarker=v
					end
				end
			end
		end
		local lastmagnitude=9e9
		local quest
		if questmarker then
			for i,v in pairs(work.FriendlyNPCs:GetChildren())do
				if v:FindFirstChild('HumanoidRootPart')then
					local currentmagnitude=(questmarker.Position-v.HumanoidRootPart.Position).magnitude
					if(questmarker.Position-v.HumanoidRootPart.Position).magnitude<lastmagnitude then
						lastmagnitude=currentmagnitude
						quest=v
					end
				end
			end
		end
		return quest
	end
	local tween
	local function createtween(part,vectordestination)
	    local s=(part.Position-vectordestination).magnitude/2500
		tween=game:GetService('TweenService'):Create(part,TweenInfo.new(s),{CFrame=CFrame.new(vectordestination)})
		tween:Play()
		if not part:FindFirstChildOfClass('BodyVelocity')then
	        local bv=Instance.new('BodyVelocity',part)
	        bv.MaxForce=Vector3.new(100000,100000,100000)
			bv.Velocity=Vector3.new(0,0,0)
	        task.delay(s,function()
				bv:Destroy()
			end)
	    end
	end
	local cock,gokubugged,dcbugged
	rs.Heartbeat:Connect(function()
		if levelfarm or mobfarm or htcfarm then
			if live:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('Humanoid')and plr.Character.Humanoid.Health>0 then
				plr.Character.Humanoid:ChangeState(6)
			end
		end
		if not levelfarm and not mobfarm then
			if tween and tween.PlaybackState.Name=='Playing'then
				tween:Cancel()
			end
		end
		if levelfarm then
			if not mobfarm and getquest()then
				if not plr.PlayerGui.HUD.FullSize.Quests:FindFirstChild('Copy')then
					if(rootpart.Position-getquest().HumanoidRootPart.Position).magnitude<150 then
						if tween and tween.PlaybackState.Name=='Playing'then
							tween:Cancel()
						end
						if not plr.PlayerGui.HUD.Bottom.ChatGui.Visible then
							fireclickdetector(getquest().ClickDetector)
						else
							if not plr.PlayerGui.HUD.Bottom.ChatGui.Opt1.Visible then
								plr.Backpack.ServerTraits.ChatAdvance:FireServer({'k'})
							else
								firesignal(plr.PlayerGui.HUD.Bottom.ChatGui.Opt1.MouseButton1Click)
							end
						end
					else 
						createtween(rootpart,getquest().HumanoidRootPart.Position)
					end
				else
					local questnpc
					for i,v in pairs(plr.PlayerGui.HUD.FullSize.Quests:GetChildren())do
						if v:IsA('TextLabel')then
							if v.Name=='Copy'and v.Text~='EXP'and v.Text~='Zenni'and v.Text~='Rewards:'and v:FindFirstChild('Num')and v.Num.Text~='0'then
								questnpc=v.Text:split('Defeat ')[2]:split('s')[1]
							end
						end
					end
					local mobshealth={}
					local minimalhealth
					for i,v in pairs(live:GetChildren())do
						if v:FindFirstChild('HumanoidRootPart')and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 and questnpc==v.Name:split(' Lvl')[1]:split('s')[1]then
							table.insert(mobshealth,v.Humanoid.Health)
						end
					end
					if #mobshealth>0 then
						minimalhealth=math.min(table.unpack(mobshealth))
					end
					for i,v in pairs(live:GetChildren())do
						if not players:FindFirstChild(v.Name)and v:FindFirstChild('Humanoid')and v.Humanoid.Health==minimalhealth and v:FindFirstChild('HumanoidRootPart')and v.HumanoidRootPart.Position~=Vector3.new(0,100000,0)and questnpc==v.Name:split(' Lvl')[1]:split('s')[1]then
							if(rootpart.Position-v.HumanoidRootPart.Position).magnitude>150 then
								createtween(rootpart,v.HumanoidRootPart.Position)
							else
								rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.LookVector*-farmdistance
								work.Camera.CFrame=v.HumanoidRootPart.CFrame
								if tween and tween.PlaybackState.Name=='Playing'then
									tween:Cancel()
								end
							end
						end
					end
				end
			end
		end
		if mobfarm then
			if not levelfarm then
				local mobshealth={}
				local minimalhealth
				for i,v in pairs(live:GetChildren())do
					if v:FindFirstChild('HumanoidRootPart')and v:FindFirstChild('Humanoid')and v.Humanoid.Health>0 and table.find(mobstofarm,v.Name:split(' Lvl')[1])then
						table.insert(mobshealth,v.Humanoid.Health)
					end
				end
				if #mobshealth>0 then
					minimalhealth=math.min(table.unpack(mobshealth))
				end
				for i,v in pairs(live:GetChildren())do
					if v:FindFirstChild('Humanoid')and v.Humanoid.Health==minimalhealth and v:FindFirstChild('HumanoidRootPart')and v.HumanoidRootPart.Position~=Vector3.new(0,100000,0)and table.find(mobstofarm,v.Name:split(' Lvl')[1])then
						if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<150 then
							rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.LookVector*-farmdistance
							work.Camera.CFrame=v.HumanoidRootPart.CFrame
							if tween and tween.PlaybackState.Name=='Playing'then
								tween:Cancel()
							end
						else
							createtween(rootpart,v.HumanoidRootPart.Position)
						end
					end
				end
			end
		end
		if autohtc then
			if not noslow then noslow=true end
			for i,v in pairs(live:GetChildren())do
				if v.Name:find('Goku')and v:FindFirstChild('Humanoid')and v:FindFirstChild('HumanoidRootPart')and v.Humanoid.Health>0 and not players:FindFirstChild(v.Name)then
					if(rootpart.Position-v.HumanoidRootPart.Position).magnitude<50 then
						rootpart.CFrame=v.HumanoidRootPart.CFrame+v.HumanoidRootPart.CFrame.LookVector*-farmdistance
						work.Camera.CFrame=v.HumanoidRootPart.CFrame
						if tween and tween.PlaybackState.Name=='Playing'then
							tween:Cancel()
						end
					else
						createtween(rootpart,v.HumanoidRootPart.Position)
					end
					if not gokubugged then
						if plr.Backpack:FindFirstChild('Dragon Crush')then
							pcall(function()
								plr.Character.Humanoid:EquipTool(plr.Backpack['Dragon Crush'])
							end)
						end
						if plr.Character:FindFirstChild('Dragon Crush')then
							local dragoncrush=plr.Character['Dragon Crush']
							if dcbugged then
								local spawnfunctionactivated
								if not spawnfunctionactivated then
									spawn(function()
										spawnfunctionactivated=true
										dragoncrush:Activate()
										task.wait(2)
										gokubugged=true
									end)
								end
							else
								for i,v in pairs(dragoncrush.Activator:GetChildren())do
									if i==2 then
										dcbugged=true
									else
										if v.Name~='Spun'and v.Name~='Spinner'then
											v:Destroy()
										end
									end
								end
							end
						end
					end
				end
			end
		end
		if earthgodmode then
			local god=work.Touchy.Part
			firetouchinterest(god,rootpart,0)
			firetouchinterest(god,rootpart,1)
			if plr.PlayerGui:FindFirstChild('Popup')then
				plr.PlayerGui.Popup:Destroy()
			end
		end
		if fullbright then
			game:GetService('Lighting').FogEnd=9e9
		else
			game:GetService('Lighting').FogEnd=startfog
		end
		if noslow then
			if plr.Character:FindFirstChild('Action')then
				plr.Character.Action:Destroy()
			elseif plr.Character:FindFirstChild('Attacking')then
				plr.Character.Attacking:Destroy()
			elseif plr.Character:FindFirstChild('Using')then
				plr.Character.Using:Destroy()
			elseif plr.Character:FindFirstChild('hyper')then
				plr.Character.hyper:Destroy()
			elseif plr.Character:FindFirstChild('Hyper')then
				plr.Character.Hyper:Destroy()
			elseif plr.Character:FindFirstChild('heavy')then
				plr.Character.heavy:Destroy()
			elseif plr.Character:FindFirstChild('KiBlasted')then
				plr.Character.KiBlasted:Destroy()
			elseif plr.Character:FindFirstChild('Tele')then
				plr.Character.Tele:Destroy()
			elseif plr.Character:FindFirstChild('tele')then
				plr.Character.tele:Destroy()
			elseif plr.Character:FindFirstChild('Killed')then
				plr.Character.Killed:Destroy()
			elseif plr.Character:FindFirstChild('Slow')then
				plr.Character.Slow:Destroy()
			end
		end
		if changefov then
			work.Camera.FieldOfView=fov
		else 
			work.Camera.FieldOfView=70
		end
		if toprespawn then
			if plr.Character:FindFirstChild('SuperAction')then
				plr.Character.SuperAction:Destroy()
			elseif work:FindFirstChild('Borders')then
				work.Borders:Destroy()
			end
		end
	end)
	spawn(function()
		while wait(.3)do
			local vim=game:GetService('VirtualInputManager')
			if mobfarm and not autohtc then
				vim:SendMouseButtonEvent(0,0,0,true,game,1)
				vim:SendMouseButtonEvent(0,0,0,false,game,1)
			end
			if levelfarm and plr.PlayerGui.HUD.FullSize.Quests:FindFirstChild('Copy')then
				vim:SendMouseButtonEvent(0,0,0,true,game,1)
				vim:SendMouseButtonEvent(0,0,0,false,game,1)
			end
			if autohtc then
				vim:SendMouseButtonEvent(0,0,1,true,game,1)
				vim:SendMouseButtonEvent(0,0,1,false,game,1)
			end
			if spambeans then
				plr.Backpack.ServerTraits.EatSenzu:FireServer(true)
			end
		end
	end)
	rs.RenderStepped:Connect(function()
		if changefov then
			work.Camera.FieldOfView=fov
		else 
			work.Camera.FieldOfView=70
		end
		if fullbright then
			game:GetService('Lighting').FogEnd=9e9
		else
			game:GetService('Lighting').FogEnd=startfog
		end
	end)
end
local function loadbabft()
	repeat wait()until work:FindFirstChild(plr.Name)
	local currentsettings={FarmSpeed=400}
	if gamedata then currentsettings=loadData(game.PlaceId)end
	local s=win:CreateTab('Farm')
	s:CreateLabel('Main')
	local farmgold
	s:CreateToggle('FarmGold',function(state)farmgold=state end)
	local farmspeed=currentsettings.FarmSpeed
	s:CreateSlider(100,farmspeed,1000,'Speed',function(val)
		farmspeed=val
		currentsettings.FarmSpeed=val
		savedata(game.PlaceId,currentsettings)
	end)
	local tween
	local function createtween(part,vectordestination)
	    local s=(part.Position-vectordestination).magnitude/340
		tween=game:GetService('TweenService'):Create(part,TweenInfo.new(s,Enum.EasingStyle.Linear),{CFrame=CFrame.new(vectordestination)})
		tween:Play()
		if not part:FindFirstChildOfClass('BodyVelocity')then
	        local bv=Instance.new('BodyVelocity',part)
	        bv.MaxForce=Vector3.new(100000,100000,100000)
			bv.Velocity=Vector3.new(0,0,0)
	        task.delay(s,function()
				bv:Destroy()
			end)
	    end
	end
	local farmstage1=true
	local farmstage2=false
	local farmstage3=false
	local spawnfunctionactivated
	rs.Heartbeat:Connect(function()
		if plr.Character:FindFirstChild('Humanoid')then 
			if plr.Character.Humanoid.Health<1 then
				farmstage1=true
				farmstage2=false
				farmstage3=false
				return
			end
		else
			farmstage1=true
			farmstage2=false
			farmstage3=false
			return
		end
		if farmgold then
			if not plr.Character:FindFirstChild('HumanoidRootPart')and plr.Character:FindFirstChild('Humanoid')then
				plr.Character.Humanoid.Health=0
			end
			if farmstage1 then
				local darknesspart1=work.BoatStages.NormalStages.CaveStage1.DarknessPart
				createtween(rootpart,darknesspart1.Position)
				if(rootpart.Position-darknesspart1.Position).magnitude<1 then 
					farmstage1=false
					farmstage2=true
				end
			elseif farmstage2 then
				local darknesspart2=work.BoatStages.NormalStages.CaveStage10.DarknessPart
				createtween(rootpart,darknesspart2.Position)
				if(rootpart.Position-darknesspart2.Position).magnitude<1 then
					farmstage2=false
					farmstage3=true
				end
			elseif farmstage3 then
				rootpart.CFrame=work.BoatStages.NormalStages.TheEnd.GoldenChest.Trigger.CFrame
				if not spawnfunctionactivated then
					task.spawn(function()
						spawnfunctionactivated=true
						wait(3.5)
						plr.Character.Humanoid.Health=0
						spawnfunctionactivated=false 
					end)
				end
			end
		end
	end)
	rs.Stepped:Connect(function()
		if farmgold then
			if work:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('Humanoid')and plr.Character.Humanoid.Health>0 then
				for i,v in pairs(plr.Character:GetChildren())do
					if v:IsA('BasePart')and v.CanCollide then
						v.CanCollide=false
					end
				end
			else
				if tween and tween.PlaybackState.Name=='Playing'then 
					tween:Cancel()
				end 
			end
		end
	end)
end
local function load3008()
	repeat wait()until work:FindFirstChild(plr.Name)
	local lighting=game:GetService('Lighting')
	local standartfogend=lighting.FogEnd
	local currentsettings={Speed=12,JumpPower=40}
	if gamedata then currentsettings=loadData(game.PlaceId)end
	local old
	old=hookmetamethod(game,'__namecall',function(self,...)
	    local args={...}
	    if getnamecallmethod()=='InvokeServer'and self.Name=='MainEvent'and #args<1 or getnamecallmethod()=='BreakJoints'then
	        return
	    end
	    return old(self,...)  
	end)
	local s=win:CreateTab('Visuals')
	local ss=win:CreateTab('Character')
	s:CreateLabel('Main')
	local itemsesp,namesesp,fullbright,items
	items={'Medkit'}
	s:CreateToggle('Items Esp',function(state)itemsesp=state end)
	local itemsingame={}
	for i,v in pairs(work.GameObjects.Physical.Items:GetChildren())do
		if not table.find(itemsingame,v.Name)then
			table.insert(itemsingame,v.Name)
		end
	end
	s:CreateTableDropdown('Items',itemsingame,function(val)items=val end)
	s:CreateLabel('Misc')
	s:CreateToggle('FullBright',function(state)fullbright=state end)
	s:CreateToggle('Names Esp',function(state)namesesp=state end)
	ss:CreateLabel('Main')
	local speed,jumppower
	local speedval=currentsettings.Speed
	local jumppowerval=currentsettings.JumpPower
	ss:CreateToggle('Speed',function(state)speed=state end)
	ss:CreateSlider(0,speedval,300,'Value',function(val)
		speedval=val
		currentsettings.Speed=val
		savedata(game.PlaceId,currentsettings)end)
	ss:CreateToggle('Jump Power',function(state)jumppower=state end)
	ss:CreateSlider(0,jumppowerval,500,'Value',function(val)
		jumppowerval=val
		currentsettings.JumpPower=val
		savedata(game.PlaceId,currentsettings)
	end)
	ss:CreateLabel('Misc')
	local nofalldamage,noclip
	ss:CreateToggle('No Fall Damage',function(state)nofalldamage=state end)
	ss:CreateToggle('Noclip',function(state)noclip=state end)
	rs.Heartbeat:Connect(function()
		if itemsesp then
			for i,v in pairs(work.GameObjects.Physical.Items:GetChildren())do
				local handle=v:FindFirstChildWhichIsA('BasePart')
				if handle then
					if table.find(items,v.Name)then
						if not handle:FindFirstChild('BillboardGui')then
							local billboardgui=Instance.new('BillboardGui')
				    		local text=Instance.new('TextLabel')
						    billboardgui.Parent=handle
							billboardgui.AlwaysOnTop=true
						    billboardgui.Size=UDim2.new(0,50,0,50)
							billboardgui.LightInfluence=1
							billboardgui.StudsOffset=Vector3.new(0,2,0)
						    text.Parent=billboardgui
							text.BackgroundTransparency=1
						    text.Size=UDim2.new(1,0,1,0)text.Text=v.Name
							text.TextColor3=handle.Color
							text.TextScaled=true
							text.Font='Gotham'
							if text.TextColor3==Color3.fromRGB(163,162,165)then 
								text.TextColor3=Color3.fromRGB(254,239,206)
							end
						end
					else
						if handle:FindFirstChild('BillboardGui')then
							handle.BillboardGui:Destroy()
						end
					end
				end
			end
		else
			for i,v in pairs(work.GameObjects.Physical.Items:GetChildren())do
				local handle=v:FindFirstChildWhichIsA('BasePart')
				if handle and handle:FindFirstChild('BillboardGui')then
					handle.BillboardGui:Destroy()
				end
			end
		end
		if work:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('Humanoid')and plr.PlayerGui:FindFirstChild('MainPlayerInformation')then
			if nofalldamage then
				if plr.Character:FindFirstChild('falldamage')and not plr.Character.falldamage.Disabled then
					plr.Character.falldamage.Disabled=true
				end
			end
			local playerinfo=require(plr.PlayerGui.MainPlayerInformation).PlayerInfo 
			if speed then 
				playerinfo.DefaultSpeed=speedval
				playerinfo.RunningSpeed=speedval
				plr.Character.Humanoid.WalkSpeed=speedval
			else
				playerinfo.DefaultSpeed=12
				playerinfo.RunningSpeed=18
				plr.Character.Humanoid.WalkSpeed=speedval
			end
			if jumppower then
				plr.Character.Humanoid.JumpPower=jumppowerval
			else
				plr.Character.Humanoid.JumpPower=40
			end
		end
		if namesesp then
			for i,v in pairs(players:GetChildren())do
				if v~=plr and work:FindFirstChild(v.Name)and v.Character:FindFirstChild('Humanoid')and v.Character.Humanoid.Health>0 and v.Character:FindFirstChild('Head')and not v.Character.Head:FindFirstChild('BillboardGui')then
					local billboardgui=Instance.new('BillboardGui')
		    		local text=Instance.new('TextLabel')
				    billboardgui.Parent=v.Character.Head
					billboardgui.AlwaysOnTop=true
				    billboardgui.Size=UDim2.new(0,50,0,50)
					billboardgui.LightInfluence=1
					billboardgui.StudsOffset=Vector3.new(0,2,0)
				    text.Parent=billboardgui
					text.BackgroundTransparency=1
				    text.Size=UDim2.new(1,0,1,0)
					text.Text=v.Name
					text.TextColor3=Color3.fromRGB(206,206,254)
					text.TextScaled=true
					text.Font='Gotham'
				end
			end
		else
			for i,v in pairs(players:GetChildren())do
				if v~=plr and work:FindFirstChild(v.Name)and v.Character:FindFirstChild('Humanoid')and v.Character.Humanoid.Health>0 and v.Character:FindFirstChild('Head')and v.Character.Head:FindFirstChild('BillboardGui')then
					v.Character.Head.BillboardGui:Destroy()
				end
			end
		end
		if fullbright then
			lighting.FogEnd=9e9
			if lighting:FindFirstChild('Bloodmoon_Atmosphere')then
				lighting.Bloodmoon_Atmosphere:Destroy()
			end
			if lighting:FindFirstChild('FoggyDay')then
				lighting.FoggyDay:Destroy()
			end
			if lighting:FindFirstChild('FogDof')then
				lighting.FogDof:Destroy()
			end
		else
			if lighting.FogEnd==9e9 then
				lighting.FogEnd=standartfogend
			end
		end
	end)
	rs.Stepped:Connect(function()
		if noclip then
			if work:FindFirstChild(plr.Name)and plr.Character:FindFirstChild('Humanoid')and plr.Character.Humanoid.Health>0 then
				for i,v in pairs(plr.Character:GetChildren())do
					if v:IsA('BasePart')and v.CanCollide then
						v.CanCollide=false
					end
				end
			else
				if tween and tween.PlaybackState.Name=='Playing'then
					tween:Cancel()
				end
			end
		end
	end)
end
if table.find(maf03.roghoul,game.PlaceId)then
	loadroghoul()
elseif table.find(maf03.bloxfruits,game.PlaceId)then
	loadbloxfruits()
elseif table.find(maf03.aba,game.PlaceId)then
	loadaba()
elseif table.find(maf03.bokuno,game.PlaceId)then
	loadbokunoroblox()
elseif table.find(maf03.aut,game.PlaceId)then
	loadaut()
elseif table.find(maf03.aherodestiny,game.PlaceId)then
	loadaherodestiny()
elseif table.find(maf03.dbzfs,game.PlaceId)then
	loaddbzfs()
elseif table.find(maf03.kinglegacy,game.PlaceId)then
	loadkinglegacy()
elseif table.find(maf03.babft,game.PlaceId)then
	loadbabft()
elseif table.find(maf03.a3008,game.PlaceId)then
	load3008()
end
local h=win:CreateTab('Options')
h:CreateLabel('Main')
local librarysettings={Hide_Show_Ui='RightControl'}
if isfile('Mose Hub\\library.Lua')then librarysettings=loadData('library')end
local currentkeybind=librarysettings.Hide_Show_Ui
h:CreateKeybind(currentkeybind,'Hide/Show Ui',function(val)
	win:Init()
	librarysettings.Hide_Show_Ui=val
	savedata('Library',librarysettings)
end)
h:CreateButton('Copy Discord',function()
	setclipboard('https://discord.gg/SHbAfEnAkK')
end)

getgenv().moseloaded=true

pcall(function()game:HttpGet(('https://cheats-server.herokuapp.com/countApp/addNewLogin?source='..SUPERULTRACUMYESASSDUPER:gsub(' ','_')))end)
