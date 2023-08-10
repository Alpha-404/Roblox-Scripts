-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local stat = Instance.new("TextLabel")
local tar = Instance.new("TextLabel")
local option2 = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local option1 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local option3 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local option4 = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local option5 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local target = nil
local net = false
local sethidden = sethiddenproperty or set_hidden_property or set_hidden_prop
local setsimulation = setsimulationradius or set_simulation_radius

if syn and syn.protect_gui then
	syn.protect_gui(ScreenGui)
end

local function antigrav(part)    
	if part:FindFirstChild("Gravity Gun Force") then return end
	stat.Text = "Status : Creating Force"
	local bf = Instance.new("BodyForce")
	bf.Name = "Gravity Gun Force"
	bf.Force = part:GetMass() * Vector3.new(0,workspace.Gravity,0)
	stat.Text = "Status : Setting Mass"
	bf.Parent = part
	stat.Text = "Disabled Gravity On : " .. part.Name
end

local function grav(part)
	for i,c in pairs(part:GetChildren()) do
		if c:IsA("BodyGyro") or c:IsA("BodyPosition") or c:IsA("BodyForce") then
			c:Destroy()
		end
		stat.Text = "Enabled Gravity on : " .. part.Name
	end
end

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Frame.Position = UDim2.new(0.604095578, 0, 0.299757272, 0)
Frame.Size = UDim2.new(0.142491475, 0, 0.317961127, 0)
Frame.BorderSizePixel = 0

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderSizePixel = 0
title.Position = UDim2.new(0, 0, -0.111443162, 0)
title.Size = UDim2.new(0.999999881, 0, 0.111443236, 0)
title.Font = Enum.Font.SciFi
title.Text = "Gravity Gun"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

stat.Name = "stat"
stat.Parent = Frame
stat.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
stat.BackgroundTransparency = 1.000
stat.BorderSizePixel = 0
stat.Position = UDim2.new(0, 0, 0.0424528085, 0)
stat.Size = UDim2.new(1, 0, 0.0941235796, 0)
stat.Font = Enum.Font.SciFi
stat.Text = "Status : nil"
stat.TextColor3 = Color3.fromRGB(255, 255, 255)
stat.TextScaled = true
stat.TextSize = 14.000
stat.TextWrapped = true

tar.Name = "tar"
tar.Parent = Frame
tar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
tar.BackgroundTransparency = 1.000
tar.BorderSizePixel = 0
tar.Position = UDim2.new(0, 0, 0.168695077, 0)
tar.Size = UDim2.new(1, 0, 0.0977328122, 0)
tar.Font = Enum.Font.SciFi
tar.Text = "Target : nil"
tar.TextColor3 = Color3.fromRGB(255, 255, 255)
tar.TextScaled = true
tar.TextSize = 14.000
tar.TextWrapped = true

option2.Name = "option2"
option2.Parent = Frame
option2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
option2.BorderSizePixel = 0
option2.Position = UDim2.new(0.197604775, 0, 0.453082234, 0)
option2.Size = UDim2.new(0.598999977, 0, 0.0930000022, 0)
option2.Font = Enum.Font.SciFi
option2.Text = "Disable Gravity"
option2.TextColor3 = Color3.fromRGB(255, 255, 255)
option2.TextSize = 14.000
option2.MouseButton1Click:Connect(function()
	if target ~= nil then
		antigrav(target)
	else
		stat.Text = "Attempt To Modify A Nil Object"
	end
end)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = option2

option1.Name = "option1"
option1.Parent = Frame
option1.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
option1.BorderSizePixel = 0
option1.Position = UDim2.new(0.197604775, 0, 0.318522304, 0)
option1.Size = UDim2.new(0.598802328, 0, 0.0930073559, 0)
option1.Font = Enum.Font.SciFi
option1.Text = "Enable Gravity"
option1.TextColor3 = Color3.fromRGB(255, 255, 255)
option1.TextSize = 14.000
option1.MouseButton1Click:Connect(function()
	if target ~= nil then
		grav(target)
	else
		stat.Text = "Attempt To Modify A Nil Object"
	end
end)


UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = option1

option3.Name = "option3"
option3.Parent = Frame
option3.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
option3.BorderSizePixel = 0
option3.Position = UDim2.new(0.197604775, 0, 0.58292526, 0)
option3.Size = UDim2.new(0.598999977, 0, 0.0926488489, 0)
option3.Font = Enum.Font.SciFi
option3.Text = "Net"
option3.TextColor3 = Color3.fromRGB(255, 255, 255)
option3.TextSize = 14.000
option3.MouseButton1Click:Connect(function()
	if net == false then
		if setsimulation then
			stat.Text = "Status : Enabling net"
			net = true
			spawn(function()
				game["Run Service"].RenderStepped:Connect(function()
					game:GetService("Players").LocalPlayer.ReplicationFocus = workspace
					settings().Physics.AllowSleep = false
					settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
					setsimulation(math.huge,math.huge,math.huge,math.huge)
					sethidden(game.Players.LocalPlayer, "SimulationRadius",math.huge,math.huge,math.huge,math.huge)
					sethidden(game.Players.LocalPlayer, "MaximumSimulationRadius",math.huge)
					game:GetService("RunService").Heartbeat:wait()
				end) 
			end)
			wait(0.8)
			stat.Text = "Status : Net Enabled"
		else
			stat.Text = "Attempt To Modify A Nil Object"
		end
	end
end)

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = option3

option4.Name = "option4"
option4.Parent = Frame
option4.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
option4.BorderSizePixel = 0
option4.Position = UDim2.new(0.197604775, 0, 0.713668525, 0)
option4.Size = UDim2.new(0.598999977, 0, 0.0926488489, 0)
option4.Font = Enum.Font.SciFi
option4.Text = "Delete"
option4.TextColor3 = Color3.fromRGB(255, 255, 255)
option4.TextSize = 14.000
option4.MouseButton1Click:Connect(function()
	if target ~= nil then
		stat.Text = "Deleting : " .. target.Name
		target.CanCollide = false
		target.CFrame = CFrame.new(999999, workspace.FallenPartsDestroyHeight + 5, 999999)
		wait(1)
		stat.Text = "Deleted : " .. target.Name 
	else
		stat.Text = "Attempt To Modify A Nil Object"
	end
end)

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = option4

option5.Name = "option5"
option5.Parent = Frame
option5.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
option5.BorderSizePixel = 0
option5.Position = UDim2.new(0.191616759, 0, 0.847256303, 0)
option5.Size = UDim2.new(0.598999977, 0, 0.0926488489, 0)
option5.Font = Enum.Font.SciFi
option5.Text = "Freeze"
option5.TextColor3 = Color3.fromRGB(255, 255, 255)
option5.TextSize = 14.000
option5.MouseButton1Click:Connect(function()
	if target ~= nil then
		stat.Text = "Freezing : " .. target.Name
		local bodypos = Instance.new("BodyPosition")
		bodypos.Name = "Gravity Gun Force"
		bodypos.Parent = target
		bodypos.Position = target.Position
		bodypos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		local bodygyro = Instance.new("BodyGyro")
		bodygyro.Name = "Gravity Gun Force"
		bodygyro.Parent = target
		bodygyro.CFrame = target.CFrame
		bodygyro.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
		wait(1)
		stat.Text = "Froze : " .. target.Name
	else
		stat.Text = "Attempt To Modify A Nil Object"
	end
end)

UICorner_5.CornerRadius = UDim.new(0, 4)
UICorner_5.Parent = option5

game:GetService("Players").LocalPlayer:GetMouse().Button1Down:Connect(function()
	target = game:GetService("Players").LocalPlayer:GetMouse().Target
	tar.Text = "Target : " .. game:GetService("Players").LocalPlayer:GetMouse().Target.Name
end)

local L_1_ = game:GetService("UserInputService")
function drag(L_2_arg1)
	dragToggle = nil
	local dragSpeed = 0.23
	dragInput = nil
	dragStart = nil
	local dragPos = nil
	function updateInput(L_3_arg1)
		local Delta = L_3_arg1.Position - dragStart
		local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(L_2_arg1, TweenInfo.new(0.25), {
			Position = Position
		}):Play()
	end
	L_2_arg1.InputBegan:Connect(function(L_4_arg1)
		if (L_4_arg1.UserInputType == Enum.UserInputType.MouseButton1 or L_4_arg1.UserInputType == Enum.UserInputType.Touch) and L_1_:GetFocusedTextBox() == nil then
			dragToggle = true
			dragStart = L_4_arg1.Position
			startPos = L_2_arg1.Position
			L_4_arg1.Changed:Connect(function()
				if L_4_arg1.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	L_2_arg1.InputChanged:Connect(function(L_5_arg1)
		if L_5_arg1.UserInputType == Enum.UserInputType.MouseMovement or L_5_arg1.UserInputType == Enum.UserInputType.Touch then
			dragInput = L_5_arg1
		end
	end)
	game:GetService("UserInputService").InputChanged:Connect(function(L_6_arg1)
		if L_6_arg1 == dragInput and dragToggle then
			updateInput(L_6_arg1)
		end
	end)
end
drag(Frame)
