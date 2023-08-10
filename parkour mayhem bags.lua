for i,v in pairs(workspace:GetChildren()) do
    if v:FindFirstChild("Rarity") then
        if v.Dropped.Value == false then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Main.CFrame
            print("BAG!!! POGGERS")
            wait(1)
        end
    end
end