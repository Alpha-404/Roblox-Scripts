if getconnections() == nil then print("Unsupported Exploit (get another one lmao)") return end
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function()
    local hum = game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")
    wait(.5)
    for _,c in pairs(getconnections(hum:GetPropertyChangedSignal("WalkSpeed"))) do c:Disable() end
end)
