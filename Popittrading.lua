if game.PlaceId == 7346416636 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Elbolis Hub | Pop It Trading ✨!", HidePremium = false, IntroText = "Elbolis Hub", SaveConfig = true, ConfigFolder = "esbanuwu"})

--Values

_G.autoBuy = true
_G.selectItem = "Box Toy Air"
_G.autoBuy1 = true
_G.selectItem1 = "Green Ooze"
_G.autoBuy2 = true
_G.selectItem2 = "A"
_G.autoBuy3 = true
_G.selectItem3 = "Hand Yellow"

--Functions

function autoBuy()
    while _G.autoBuy == true do
game:GetService("ReplicatedStorage").RemoteEvents.BuyItemCash:FireServer(_G.selectItem)
    wait(.1)
   end
end

function autoBuy1()
    while _G.autoBuy1 == true do
game:GetService("ReplicatedStorage").RemoteEvents.BuyItemCash:FireServer(_G.selectItem1)
    wait(.1)
   end
end

function autoBuy2()
    while _G.autoBuy2 == true do
game:GetService("ReplicatedStorage").RemoteEvents.BuyItemCash:FireServer(_G.selectItem2)
    wait(.1)
   end
end

function autoBuy3()
    while _G.autoBuy3 == true do
game:GetService("ReplicatedStorage").RemoteEvents.BuyItemCash:FireServer(_G.selectItem3)
    wait(.1)
   end
end

--Tabs

local ItemBuyTab = Window:MakeTab({
	Name = "Box Toy",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local ItemBuyTab2 = Window:MakeTab({
	Name = "Stranger Things",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local ItemBuyTab3 = Window:MakeTab({
	Name = "alphabet",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local ItemBuyTab4 = Window:MakeTab({
	Name = "Hands",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local DropTab = Window:MakeTab({
	Name = "Drop Items",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Buttons

DropTab:AddButton({
	Name = "Auto Drop Ui!",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/ElbolisHub/ElbolisScript/main/AutoDrop.lua"))()
  	end    
})

MiscTab:AddButton({
	Name = "Infinite Yield!",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
  	end    
})

MiscTab:AddButton({
	Name = "Xray!",
	Callback = function()
      		game.Players.localPlayer.XRay.Value = true
  	end    
})

MiscTab:AddButton({
	Name = "Anti AFK!",
	Callback = function()
      		loadstring(game:HttpGet("https://pastebin.com/raw/Btt5A3CC"))()
  	end    
})

MiscTab:AddButton({
	Name = "Fake Drop!",
	Callback = function()
      		loadstring(game:HttpGet("https://gist.githubusercontent.com/domdaobfuscater/09214a11b8a30bab47ceff281116195f/raw/40356a0ff4542a51283ab5de0a642233a6ceb6f9/gistfile1.txt"))()
  	end    
})

MiscTab:AddButton({
	Name = "Rejoin Server!",
	Callback = function()
      		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
  	end    
})

MiscTab:AddButton({
	Name = "Safe Place!",
	Callback = function()
	Instance.new('Part',workspace)
Local = game:GetService('Players').LocalPlayer
Char  = Local.Character
touched,tpdback = false, false
Local.CharacterAdded:connect(function(char)
   if script.Disabled ~= true then
       wait(.25)
       loc = Char.HumanoidRootPart.Position
       Char:MoveTo(box.Position + Vector3.new(0,.5,0))
   end
end)
game:GetService('UserInputService').InputBegan:connect(function(key)
   if key.KeyCode == Enum.KeyCode.Equals then
       if script.Disabled ~= true then
           script.Disabled = true
           print'you may re-execute'
       end
   end
end)
box = Instance.new('Part',workspace)
box.Anchored = true
box.CanCollide = true
box.Size = Vector3.new(180,1,180)
box.Position = Vector3.new(198273,916455,133113)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(198273,916470,133113)
  	end    
})

--Toggles

ItemBuyTab:AddToggle({
	Name = "Auto Buy Box Toy",
	Default = false,
	Callback = function(Value)
		_G.autoBuy = Value
    autoBuy()
	end
})

ItemBuyTab2:AddToggle({
	Name = "Auto Buy Stranger Things",
	Default = false,
	Callback = function(Value)
		_G.autoBuy1 = Value
    autoBuy1()
	end
})

ItemBuyTab3:AddToggle({
	Name = "Auto Buy alphabet",
	Default = false,
	Callback = function(Value)
		_G.autoBuy2 = Value
    autoBuy2()
	end
})

ItemBuyTab4:AddToggle({
	Name = "Auto Buy Hands",
	Default = false,
	Callback = function(Value)
		_G.autoBuy3 = Value
    autoBuy3()
	end
})

--Dropdowns

ItemBuyTab:AddDropdown({
	Name = "BuyItem",
	Default = "Box Toy Air",
	Options = {"Box Toy Air","Box Toy Egg","Box Toy Box Toy","Box Toy Noob","Box Toy  House","Box Toy Sanic","Box Toy SandMan","Box Toy Lem","Box Toy Harambe"},
	Callback = function(Value)
		_G.selectItem = Value
    print(_G.selectItem)
	end    
})

ItemBuyTab2:AddDropdown({
	Name = "BuyItem",
	Default = "Green Ooze",
	Options = {"Green Ooze","Walky Talky","Retro Bike","Demogorgan","Demogorgan Kawaii","Dart"},
	Callback = function(Value)
		_G.selectItem1 = Value
    print(_G.selectItem1)
	end    
})

ItemBuyTab3:AddDropdown({
	Name = "BuyItem",
	Default = "A",
	Options = {"A","B","C","D","E","F"},
	Callback = function(Value)
		_G.selectItem2 = Value
    print(_G.selectItem2)
	end    
})

ItemBuyTab4:AddDropdown({
	Name = "BuyItem",
	Default = "Hand Yellow",
	Options = {"Hand Yellow","Hand Green","Hand Cyan","Hand Blue","Hand Purple","Hand Pink","Hand Orange","Hand Red","Hand","Hand White","Hand Black","Hand Rainbow"},
	Callback = function(Value)
		_G.selectItem3 = Value
    print(_G.selectItem3)
	end    
})



end
OrionLib:Init()
