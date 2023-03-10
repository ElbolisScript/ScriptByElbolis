local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "KeySystem By Elbolis", HidePremium = false, IntroText = "Elbolis Hub", SaveConfig = true, ConfigFolder = "esbanuwu"})

OrionLib:MakeNotification({
	Name = "Elbolis KeySystem",
	Content = "The KeySystem By Elbolis.",
	Time = 5
})

_G.Key = "Elbolis"
_G.KeyInput = "string"

function MakeScriptHub()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/ElbolisHub/HubByMe/main/ElbolisHubm.lua')))()

end


function CorrectKeyNotifications()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You can now use Kelvin!",
        Time = 5
    })
end

function WrongKeyNotifications()
    OrionLib:MakeNotification({
        Name = " Wrong Key!",
        Content = "Sorry, you inputted the incorrect key.",
        Time = 5
    })
end

local Tab = Window:MakeTab({
	Name = "Key",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
        _G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
        if _G.KeyInput == _G.Key then
         MakeScriptHub()
         CorrectKeyNotifications()
     else
        WrongKeyNotifications()
        end
  	end    
})