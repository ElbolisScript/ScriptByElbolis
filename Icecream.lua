if game.PlaceId == 12480945489 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Elbolis Hub | [🎉RELEASE!🎉] Ice Cream Clicker!", HidePremium = false, IntroText = "Elbolis Hub", SaveConfig = true, ConfigFolder = "esbanuwu"})

--Values
_G.autoTap = true
_G.autoSell = true
_G.autoHatch = true
_G.selectEgg = "Basic Egg"
_G.autoHatch1 = true
_G.selectEgg1 = "ReleaseEgg"

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

EggsTab:AddDropdown({
	Name = "Select Egg",
	Default = "Basic Egg",
	Options = {"Basic Egg","Novice Egg","Advanced Egg"},
	Callback = function(Value)
		_G.selectEgg = Value
    print(_G.selectEgg)
	end
})

EggsTab:AddDropdown({
	Name = "Select Event Egg",
	Default = "Release Egg",
	Options = {"Release Egg"},
	Callback = function(Value)
		_G.selectEgg1 = Value
    print(_G.selectEgg1)
	end
})


end
OrionLib:Init()
