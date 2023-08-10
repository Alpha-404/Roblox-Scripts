--you have to be pretty bad at parkour to use this

local p = game:GetService("Players").LocalPlayer
loadstring(game:HttpGet("https://github.com/Alpha-404/Roblox-Scripts/blob/main/EggRepublicIntro")()
while wait() do
    if p.Character ~= nil then
        if p.Character.Humanoid.Health < 20 then
            game:GetService("ReplicatedStorage").UpdateRespawnPosition:FireServer(p.Character.HumanoidRootPart.CFrame);
            game:GetService("ReplicatedStorage").Respawn:FireServer()
        end
    end
end
