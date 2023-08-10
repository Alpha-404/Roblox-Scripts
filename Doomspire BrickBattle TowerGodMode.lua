local SHP = sethiddenproperty or set_hidden_property or set_hidden_prop
local p = game:GetService("Players").LocalPlayer

if SHP then
	function getTeam()
		return game:GetService("Players").LocalPlayer.Team.Name
	end

	if getTeam() == "GREEN" then
		local tower = workspace.Doomspires.GREEN
		for i,v in pairs(tower:GetDescendants()) do
			if v:IsA("Part") or v:IsA("BasePart") or v:IsA("UnionOperation") then
				for i,c in pairs(v:GetChildren()) do
					if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
						c:Destroy()
					end
				end
				local bodypos = Instance.new("BodyPosition")
				bodypos.Parent = v
				bodypos.Position = v.Position
				bodypos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				local bodygyro = Instance.new("BodyGyro")
				bodygyro.Parent = v
				bodygyro.CFrame = v.CFrame
				bodygyro.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			end
			wait()
			for i,c in pairs(p.Character:GetDescendants()) do
				if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
					c:Destroy()
				end
			end
		end
		print("Started Protection For Green Tower")
	elseif getTeam() == "RED" then
		local tower = workspace.Doomspires.RED
		for i,v in pairs(tower:GetDescendants()) do
			if v:IsA("Part") or v:IsA("BasePart") or v:IsA("UnionOperation") then
				for i,c in pairs(v:GetChildren()) do
					if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
						c:Destroy()
					end
				end
				local bodypos = Instance.new("BodyPosition")
				bodypos.Parent = v
				bodypos.Position = v.Position
				bodypos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				local bodygyro = Instance.new("BodyGyro")
				bodygyro.Parent = v
				bodygyro.CFrame = v.CFrame
				bodygyro.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			end
			wait()
			for i,c in pairs(p.Character:GetDescendants()) do
				if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
					c:Destroy()
				end
			end
		end
		print("Started Protection For Red Tower")
	elseif getTeam() == "BLUE" then
		local tower = workspace.Doomspires.BLUE
		for i,v in pairs(tower:GetDescendants()) do
			if v:IsA("Part") or v:IsA("BasePart") or v:IsA("UnionOperation") then
				for i,c in pairs(v:GetChildren()) do
					if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
						c:Destroy()
					end
				end
				local bodypos = Instance.new("BodyPosition")
				bodypos.Parent = v
				bodypos.Position = v.Position
				bodypos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				local bodygyro = Instance.new("BodyGyro")
				bodygyro.Parent = v
				bodygyro.CFrame = v.CFrame
				bodygyro.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			end
			wait()
			for i,c in pairs(p.Character:GetDescendants()) do
				if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
					c:Destroy()
				end
			end
		end
		print("Started Protection For Blue Tower")
	elseif getTeam() == "YELLOW" then
		local tower = workspace.Doomspires.YELLOW
		for i,v in pairs(tower:GetDescendants()) do
			if v:IsA("Part") or v:IsA("BasePart") or v:IsA("UnionOperation") then
				for i,c in pairs(v:GetChildren()) do
					if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
						c:Destroy()
					end
				end
				local bodypos = Instance.new("BodyPosition")
				bodypos.Parent = v
				bodypos.Position = v.Position
				bodypos.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				local bodygyro = Instance.new("BodyGyro")
				bodygyro.Parent = v
				bodygyro.CFrame = v.CFrame
				bodygyro.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			end
			wait()
			for i,c in pairs(p.Character:GetDescendants()) do
				if c:IsA("BodyPosition") or c:IsA("BodyGyro") then
					c:Destroy()
				end
			end
		end
		print("Started Protection For Yellow Tower")
	else
	    print("You are not teamed to a tower")
	end
end