if game.PlaceId == 12480945489 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Ice Clicker", HidePremium = false, IntroText = "Elbolis Hub", SaveConfig = true, ConfigFolder = "esbanuwu"})

--Values

_G.autoTap = true
_G.autoSell = true
_G.autoHatch = true
_G.selectEgg = "Basic Egg"
_G.autoHatch1 = true
_G.selectEgg1 = "100K Egg"

--Functions

function autoTap()
    while _G.autoTap == true do
game:GetService("ReplicatedStorage").Remote:FireServer("Roll2")
    wait(.0001)
  end
end

function autoSell()
    while _G.autoSell == true do
game:GetService("ReplicatedStorage").Remote:FireServer("Sell2",workspace.Sells.Lobby)
    wait(.0001)
  end
end

function autoHatch()
    while _G.autoHatch == true do 
game:GetService("ReplicatedStorage").Remote:FireServer("Pet","Egg","Hatch",_G.selectEgg,3)

      wait(.1)
    end
 end

function autoHatch1()
    while _G.autoHatch1 == true do 
game:GetService("ReplicatedStorage").Remote:FireServer("Pet","Egg","Hatch",_G.selectEgg1,3)
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

local EggsTab = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Toggles
FarmTab:AddToggle({
	Name = "Auto Lick",
	Default = false,
	Callback = function(Value)
		_G.autoTap = Value
    autoTap()
	end
})

FarmTab:AddToggle({
	Name = "Auto Sell",
	Default = false,
	Callback = function(Value)
		_G.autoSell = Value
    autoSell()
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


-- Buttons

TeleportTab:AddButton({
	Name = "Teleport To Radioactive!",
	Callback = function()
game:GetService("ReplicatedStorage").Remote:FireServer("Zone","Travel","Radioactive")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Galaxy!",
	Callback = function()
game:GetService("ReplicatedStorage").Remote:FireServer("Zone","Travel","Galaxy")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Vulcano!",
	Callback = function()
game:GetService("ReplicatedStorage").Remote:FireServer("Zone","Travel","Vulcano")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Aqua!",
	Callback = function()
game:GetService("ReplicatedStorage").Remote:FireServer("Zone","Travel","Aqua")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Hot Chocolate!",
	Callback = function()
game:GetService("ReplicatedStorage").Remote:FireServer("Zone","Travel","Hot Chocolate")
  	end    
})

TeleportTab:AddButton({
	Name = "Teleport To Lobby!",
	Callback = function()
game:GetService("ReplicatedStorage").Remote:FireServer("Zone","Travel","Lobby")
  	end    
})
  
-- Dropdowns

EggsTab:AddDropdown({
	Name = "Select Egg",
	Default = "Basic Egg",
	Options = {"Basic Egg","Novice Egg","Advanced Egg","Chocolate Egg","Aqua Egg","Magma Egg","Galaxy Egg","Toxic Etg"},
	Callback = function(Value)
		_G.selectEgg = Value
    print(_G.selectEgg)
	end
})

EggsTab:AddDropdown({
	Name = "Select Event Egg",
	Default = "100K Egg",
	Options = {"100K Egg"},
	Callback = function(Value)
		_G.selectEgg1 = Value
    print(_G.selectEgg1)
	end
})


end
OrionLib:Init()
