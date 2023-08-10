--Since this is open source at least give credit
--I reccomend you lower your volume if you don't want to hear a bmw critical engine failure alert

for i,target in pairs(game:GetService("Players"):GetPlayers()) do
    spawn(function()
        while wait() do 
            game:GetService("ReplicatedStorage").GrappleSoundEffect:FireServer(target.Character.Head.Position) --and thats why you protect your remote events
        end
    end)
end
