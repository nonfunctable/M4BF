	function tweenTarget(targetPos, targetCFrame)
		local tweenfunc = {}
		local tween_s = game:service"TweenService"
		local info = TweenInfo.new((targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/325, Enum.EasingStyle.Linear)
		local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
		tween:Play()
	
		function tweenfunc:Stop()
			tween:Cancel()
			return tween
		end
	
		if not tween then return tween end
		return tweenfunc
	end

game:GetService("Players").LocalPlayer.Chatted:Connect(function(message)
       if message == "/tp Cafe" then
            tweenTarget(CFrame.new(-385.250916, 73.0458984, 297.388397).Position,CFrame.new(-385.250916, 73.0458984, 297.388397))
       elseif message == "/rt2" then
           if game:GetService("Players").LocalPlayer.Character:FindFirstChild("RaceEnergy") then
               game:GetService("Players").LocalPlayer.Character.RaceEnergy.Value = 1
            end
           elseif message == "/rt" then
               local RaceEnergy = Instance.new("NumberValue")
RaceEnergy.Name = "RaceEnergy"
RaceEnergy.Value = 0
RaceEnergy.Parent = game.Players.LocalPlayer.Character
local RaceTransformed = Instance.new("BoolValue")
RaceTransformed.Name = "RaceTransformed"
RaceTransformed.Value = false
RaceTransformed.Parent = game.Players.LocalPlayer.Character
local t = Instance.new("Tool")
t.Parent = game.Players.LocalPlayer.Backpack
t.Name = "Awakening"
           elseif message == "/Kamui" then
local t = Instance.new("Tool")
t.Parent = game.Players.LocalPlayer.Backpack
t.Name = "Pheoyu Kamui"
        end
end)
