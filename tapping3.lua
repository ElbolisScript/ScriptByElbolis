if game.PlaceId == 11901437921 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Elbolis Hub | [🎉1MIL + 3x🍀] Tapping Fantasy!, HidePremium = false, IntroText = "Elbolis Hub", SaveConfig = true, ConfigFolder = "esbanuwu"})

--Values
_G.autoTap = true
_G.autoHatch = true
_G.selectEgg = "Common Egg"
_G.autoHatch1 = true
_G.selectEgg1 = "Youtuber Egg"
_G.autoRebirth = true
_G.selectRebirth = 1
_G.autoUpgrade = true
_G.selectUpgrade = "Pet Equipped"

--Functions

function autoTap()
    while _G.autoTap == true do   game:GetService("ReplicatedStorage").Events.Tap:FireServer()
    wait(.0001)
  end
end

function autoHatch()
    while _G.autoHatch == true do 
local args = {
    [1] = _G.selectEgg,
    [2] = true,
    [4] = true,
    [5] = {
        ["1"] = true,
        ["4"] = false,
        ["3"] = true,
        ["2"] = true
    }
}

game:GetService("ReplicatedStorage").Events.OpenEgg:FireServer(unpack(args))

      wait(.1)
    end
 end

function autoHatch1()
    while _G.autoHatch1 == true do 
local args = {
    [1] = _G.selectEgg1,
    [2] = true,
    [4] = true,
    [5] = {
        ["1"] = true,
        ["4"] = false,
        ["3"] = true,
        ["2"] = true
    }
}

game:GetService("ReplicatedStorage").Events.OpenEgg:FireServer(unpack(args))

      wait(.1)
    end
 end

function autoRebirth()
    while _G.autoRebirth == true do 
game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(_G.selectRebirth)
    wait(.01)
end
end

function autoCraftAll()
    while _G.autoCraftAll == true do
game:GetService("ReplicatedStorage").Events.PetAction:InvokeServer("CraftAll")
    wait(20)
end
end

function autoUpgrade()
    while _G.autoUpgrade == true do
game:GetService("ReplicatedStorage").Functions.BuyUpgrade:InvokeServer("_G.selectUpgrade")
    wait(.1)
end
end

--Tabs
local FarmTab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TeleportTab = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local RebirthTab = Window:MakeTab({
	Name = "Rebirth",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local UpgradeTab = Window:MakeTab({
	Name = "Upgrade",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Toggles
FarmTab:AddToggle({
	Name = "Auto Tap",
	Default = false,
	Callback = function(Value)
		_G.autoTap = Value
    autoTap()
	end
})

RebirthTab:AddToggle({
	Name = "Auto Rebirth[more Coming soon",
	Default = false,
	Callback = function(Value)
		_G.autoRebirth = Value
    autoRebirth()
	end
})

EggsTab:AddToggle({
	Name = "Auto Craft All",
	Default = false,
	Callback = function(Value)
		_G.autoCraftAll = Value
    autoCraftAll()
	end
})

EggsTab:AddToggle({
	Name = "Auto Hatch = all eggs",
	Default = false,
	Callback = function(Value)
		_G.autoHatch = Value
    autoHatch()
	end
})

EggsTab:AddToggle({
	Name = "Auto Hatch = Exclusives",
	Default = false,
	Callback = function(Value)
		_G.autoHatch1 = Value
    autoHatch1()
	end
})


UpgradeTab:AddToggle({
	Name = "Auto Upgrade",
	Default = false,
	Callback = function(Value)
		_G.autoUpgrade = Value
    autoUpgrade()
	end
})

-- Buttons

TeleportTab:AddButton({
	Name = "Teleport To Electric!",
	Callback = function()
      		-- Script generated by TurtleSpy, made by Intrer#0421

game:GetService("ReplicatedStorage").Events.PortalTP:FireServer("Electric")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Candy!",
	Callback = function()
      		-- Script generated by TurtleSpy, made by Intrer#0421

game:GetService("ReplicatedStorage").Events.PortalTP:FireServer("Candy")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Heaven!",
	Callback = function()
      		-- Script generated by TurtleSpy, made by Intrer#0421

game:GetService("ReplicatedStorage").Events.PortalTP:FireServer("Heaven")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Radioactive!",
	Callback = function()
      		-- Script generated by TurtleSpy, made by Intrer#0421

game:GetService("ReplicatedStorage").Events.PortalTP:FireServer("Radioactive")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Magma!",
	Callback = function()
      		-- Script generated by TurtleSpy, made by Intrer#0421

game:GetService("ReplicatedStorage").Events.PortalTP:FireServer("Magma")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Pixel!",
	Callback = function()
      		-- Script generated by TurtleSpy, made by Intrer#0421

game:GetService("ReplicatedStorage").Events.PortalTP:FireServer("Pixel")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Digital!",
	Callback = function()
      		-- Script generated by TurtleSpy, made by Intrer#0421

game:GetService("ReplicatedStorage").Events.PortalTP:FireServer("Digital")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Galaxy!",
	Callback = function()
      		-- Script generated by TurtleSpy, made by Intrer#0421

game:GetService("ReplicatedStorage").Events.PortalTP:FireServer("Galaxy")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Honey!",
	Callback = function()
      		-- Script generated by TurtleSpy, made by Intrer#0421

game:GetService("ReplicatedStorage").Events.PortalTP:FireServer("Honey")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Ocean!",
	Callback = function()
      		-- Script generated by TurtleSpy, made by Intrer#0421

game:GetService("ReplicatedStorage").Events.PortalTP:FireServer("Ocean")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Moon!",
	Callback = function()
      		-- Script generated by TurtleSpy, made by Intrer#0421

game:GetService("ReplicatedStorage").Events.PortalTP:FireServer("Moon")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Home!",
	Callback = function()
      		-- Script generated by TurtleSpy, made by Intrer#0421

game:GetService("ReplicatedStorage").Events.PortalTP:FireServer("Home")
  	end    
})
  
-- Dropdowns

RebirthTab:AddDropdown({
	Name = "Select Rebirth",
	Default = 1,
	Options = {1,5,10,50,100,250,500,1000,4200,10000,25000,50000,75000,420000,910000,1200000,10000000,50000000,100000000,150000000,500000000,750000000,1000000000},
	Callback = function(Value)
		_G.selectRebirth = Value
    print(_G.selectRebirth)
	end
})

EggsTab:AddDropdown({
	Name = "Select Egg",
	Default = "Common Egg",
	Options = {"Common Egg", "Aqua Egg", "Inferno Egg","Release Egg","Moon Egg","Space Egg","Astronaut Egg","Water Egg","Ocean Egg","Honey Egg","Galaxy Egg","Digital Egg","Pixel Egg","Magma Egg","Radioactive Egg"},
	Callback = function(Value)
		_G.selectEgg = Value
    print(_G.selectEgg)
	end
})

EggsTab:AddDropdown({
	Name = "Select Event Egg",
	Default = "Youtuber Egg",
	Options = {"Youtuber Egg","Pixle Egg","Anime Egg","Hearts Egg","Valentine Egg","Gifts Egg","Demon Egg"},
	Callback = function(Value)
		_G.selectEgg1 = Value
    print(_G.selectEgg1)
	end
})


UpgradeTab:AddDropdown({
	Name = "Select Upgrade",
	Default = "Pet Equipped",
	Options = {"Pet Equipped","Pet Storage","Extra Gems","Extra Luck","More Speed","Jump Boost"},
	Callback = function(Value)
		_G.selectUpgrade = Value
    print(_G.selectUpgrade)
	end
})



end
OrionLib:Init()
--1m Egg Coming soon--
