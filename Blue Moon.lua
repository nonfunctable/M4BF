local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local l__TweenService__1 = game:GetService("TweenService");
-- Settings
bind = "h" -- has to be lowercase
mouse.KeyDown:connect(function(key)
if key == bind then
            require(game.ReplicatedStorage.Notification).new("Your <Mirror Fractal> has resonated with the moon."):Display();
local script = game.ReplicatedStorage.Effect.Container.LightRay
local l__TweenService__1 = game:GetService("TweenService");
local l__Lighting__1 = game:GetService("Lighting");
function getObjectDirection()
	return l__Lighting__1:GetMoonDirection();
end;
function getPosition(p1, p2)
	return (p1 or Vector3.new()) + getObjectDirection() * (p2 and 10);
end;
local u2 = require(game.ReplicatedStorage.Util);
local l__RunService__3 = game:GetService("RunService");
local p3 = game.Players.LocalPlayer.Character.LowerTorso
	local l__CurrentCamera__2 = workspace.CurrentCamera;
	local u4 = getPosition(l__CurrentCamera__2.CFrame.p, 20);
	local l__Root__5 = p3.Root;
	task.spawn(function()
		local v3 = script.Reference:Clone();
		v3.CFrame = CFrame.new(u4);
		v3.Parent = workspace._WorldOrigin;
		while l__Root__5:IsDescendantOf(workspace) and not l__Root__5:GetAttribute("NoMoon") do
				v3.CFrame = CFrame.new((getPosition(l__CurrentCamera__2.CFrame.p, 20)));
				v3.Parent = workspace._WorldOrigin;
			l__RunService__3.PreRender:Wait();		
		end;
		local l__next__4 = next;
		local v5, v6 = v3.Sol:GetChildren();
		while true do
			local v7, v8 = l__next__4(v5, v6);
			if not v7 then
				break;
			end;
			v6 = v7;
			if v8:IsA("ParticleEmitter") then
				v8.Enabled = false;
			end;		
		end;
		task.wait(2);
		v3:Destroy();
	end);
    end
end)  
