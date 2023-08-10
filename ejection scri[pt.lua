--heyyyyyyyyy ;)
--you ever felt AKWARD
--you ever felt like leaving but don't know how?
--you ever want the most unakward way to leave the game without saying bye?
--introducing the ejection script
--it chucks you into the air giving you the perfect time to leave
local p = game:GetService("Players").LocalPlayer
local Root = p.Character.HumanoidRootPart
local BV = Instance.new("BodyVelocity", Root) 
BV.Velocity = Vector3.new(0,0,0)
if p.Character:FindFirstChildOfClass("Humanoid").Sit == true then
    p.Character:FindFirstChildOfClass("Humanoid").Sit = false
end
BV.Velocity = Vector3.new(0,9999,0)
wait()
p.Character:FindFirstChildOfClass("Humanoid").Sit = true
wait(1.9)
BV:Destroy()
