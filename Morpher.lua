local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local l__TweenService__1 = game:GetService("TweenService");
-- Settings
    local ColorCorrection = Instance.new("ColorCorrectionEffect")
local Customization = game:GetObjects("rbxassetid://14198378634")[1]
local Skins = game:GetObjects("rbxassetid://14198380758")[1]

local function AddItemToChar(ItemName, Player)
	local NewWeld = Instance.new("Weld")
	local Hat = Customization[ItemName]
	local ItemHatThing = Hat:Clone()
	ItemHatThing.Parent = workspace
	for i,v in pairs(ItemHatThing:GetDescendants()) do
		if v.Name == "Body" then
			print("FOUND THE ITEM POGGERS")
			NewWeld.Parent = v.Parent
			NewWeld.Part1 = v.Parent
			NewWeld.Part0 = Player.Character[v.Parent.Body.Value]
			ItemHatThing.Parent = Player.Character
		end
	end
end
local function AddSkinToChar(ItemName, Player)
	for i,v in pairs(Skins[ItemName .. "Stuff"]:GetChildren()) do
		v:Clone().Parent = Player.Character
	end
end
local function Clear(Player)
    for i,v in pairs(Player.Character:GetDescendants()) do
        if v.Name == "CapMiddle" then
            v.Parent:Destroy()
        end
end
    if Player.Character:FindFirstChild("Shirt") then
    Player.Character.Shirt:Destroy()
    Player.Character.Pants:Destroy()
    Player.Character["Body Colors"]:Destroy()
end
end

local function Dress(Name, Player)
	AddItemToChar(Name,Player)
	AddSkinToChar(Name,Player)
end
game:GetService("Players").LocalPlayer.Chatted:Connect(function(message)
	for i,v in pairs(Customization:GetChildren()) do
		if message == "/morph " .. v.Name then
		    local Player = game.Players.LocalPlayer
			Clear(game.Players.LocalPlayer)
			Dress(v.Name, game.Players.LocalPlayer)
			end
		end
end)
game:GetService("Players").LocalPlayer.Chatted:Connect(function(message)
	for i,v in pairs(Customization:GetChildren()) do
	    for b,n in pairs(game.Players:GetChildren()) do
		if message == "/morph " .. v.Name .. " " .. n.Name then
			Clear(n)
			Dress(v.Name, n)
			end
			end
		end
end)
