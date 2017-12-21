PossessionsFu = AceLibrary("AceAddon-2.0"):new("AceDB-2.0", "FuBarPlugin-2.0")
PossessionsFu.hasIcon = "Interface\\AddOns\\FuBar_PossessionsFu\\icons\\possfu.tga"
 
PossessionsFu:RegisterDB("PossessionsFuDB")

local tablet = AceLibrary("Tablet-2.0")
function PossessionsFu:OnTooltipUpdate()
	tablet:SetHint("|cffffff00Left-click|r to open/close Possessions, |cffffff00Right-click|r for options")
end

function PossessionsFu:OnClick()
	if( Possessions_Frame ) then
		if( Possessions_Frame:IsVisible() ) then
			Possessions_Hide();
		else
			Possessions_Show();
		end
	else
		DEFAULT_CHAT_FRAME:AddMessage("|cffff0000Yoink! Possessions addon was not found! Try installing it nub ;)|r");
		DEFAULT_CHAT_FRAME:AddMessage("|cffff0000You can get it from http://downloads.curse.com/details/1404/|r");
	end
end
