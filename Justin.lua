local A_1 = "My Friend Here Justin, He's Already tak en And Hes CRACKED At Fortnite My Guy"
local A_2 = "All"
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
Event:FireServer(A_1, A_2)
wait(3)
local ScreenGui = Instance.new("ScreenGui")
local TextLabel = Instance.new("TextLabel")
local Sound = Instance.new("Sound", game:GetService("SoundService"))
UserSettings():GetService("UserGameSettings").MasterVolume = 10

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.IgnoreGuiInset = true

TextLabel.Parent = ScreenGui
TextLabel.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "justin"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Sound.SoundId = "rbxassetid://6104330851"
Sound.Looped = true
Sound.Volume = 10
Sound:Play()

while wait() do
	TextLabel.TextColor3 = Color3.new(255/255,0/255,0/255)
	for i = 0,255,10 do
		wait(0)
		TextLabel.TextColor3 = Color3.new(255/255,i/255,0/255)
	end
	for i = 255,0,-10 do
		wait(0)
		TextLabel.TextColor3 = Color3.new(i/255,255/255,0/255)
	end
	for i = 0,255,10 do
		wait(0)
		TextLabel.TextColor3 = Color3.new(0/255,255/255,i/255)
	end
	for i = 255,0,-10 do
		wait(0)
		TextLabel.TextColor3 = Color3.new(0/255,i/255,255/255)
	end
	for i = 0,255,10 do
		wait(0)
		TextLabel.TextColor3 = Color3.new(i/255,0/255,255/255)
	end
	for i = 255,0,-10 do
		wait(0)
		TextLabel.TextColor3 = Color3.new(255/255,0/255,i/255)
	end
end

print("Commit Justin")
