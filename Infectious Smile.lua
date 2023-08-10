game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
    wait(1)
    while game:GetService("Players").LocalPlayer.Character ~= nil do
        if game:GetService("Players").LocalPlayer.Character.Stats.Downed.Value then
           game:GetService("Players").LocalPlayer.Character.Torso.Neck:Destroy()
        end
        wait()
    end
end)

game:GetService("Players").LocalPlayer.Character.Torso.Neck:Destroy()

loadstring(game:HttpGet('https://raw.githubusercontent.com/Alpha-404/Roblox-Scripts/main/EggRepublicIntro'))()
