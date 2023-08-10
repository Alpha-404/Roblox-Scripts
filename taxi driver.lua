--while true do --uncomment while true do to make it loop
local g,b = pcall(function()
local p = game:GetService("Players").LocalPlayer
function findTarget()
   	for i,v in pairs(workspace.npcs:GetChildren()) do
	    if v:IsA("Model") and v:FindFirstChild("car").Value == nil then
	        return v
	    end
	end 
end
if p.Character:FindFirstChild("car") then
    p.Character.Archivable = true
    local car = p.Character.car
    local Root = p.Character.HumanoidRootPart
    local BP = Instance.new("BodyPosition", Root)
	local BG = Instance.new("BodyGyro", Root)
	BG.MaxTorque = Vector3.new(5000,5000,5000)
	BP.Position = p.Character.HumanoidRootPart.Position + Vector3.new(0,100,0)
	wait(0.2)
	BP.MaxForce = Vector3.new(9000000,9000000,9000000)
	wait(3)
	local target = findTarget()
	BP.Position = target.HumanoidRootPart.Position + Vector3.new(0,100,0)
	wait(3)
	BP.Position = target.HumanoidRootPart.Position
	repeat 
	    wait()
	until target.car.Value == car and car.passenger.Occupant == target.Humanoid
	--wait(3)
	print(target.location.Value)
	BP.Position = p.Character.HumanoidRootPart.Position + Vector3.new(0,100,0)
	wait(1)
	BP.Position = target.location.Value.Position + Vector3.new(0,100,0)
	wait(3)
	BP.Position = target.location.Value.Position
	wait(4)
	BP:Destroy()
	BG:Destroy()
else
   print("get in a car")
end
end)
if not g then print(b) end
--end --uncomment this along with the top  to make it loop
