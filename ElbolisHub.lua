local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Elbolis Hub | Supported Games!", HidePremium = false, IntroText = "Elbolis Hub", SaveConfig = true, ConfigFolder = "esbanuwu"})

local HubTab = Window:MakeTab({
	Name = "HubScripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

HubTab:AddButton({
	Name = "Tapping Fantasy!",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/ElbolisScript/ScriptByElbolis/main/tapping3.lua", true))()
  	end    
})

HubTab:AddButton({
	Name = "Pop It Trading!",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/ElbolisScript/ScriptByElbolis/main/Popittrading.lua", true))()
  	end    
})

HubTab:AddButton({
	Name = "Ice Cream Cliker!",
	Callback = function()
      		loadstring(game:HttpGet("https://raw.githubusercontent.com/ElbolisScript/ScriptByElbolis/main/Icecream.lua", true))()
  	end    
})
