-- Created By ShaunSki.
-- I wouldn't recommend touching if you don't know what you're doing.
include( "sh_config.lua" ) -- Includes the config file. (Don't remove this important.)
-- Derma --

function RulesMenu() -- Function!
	local ShaunSki = "Rules Menu -- Created By ShaunSki"
	local Frame = vgui.Create( "DFrame" ) -- Creating DFrame as Frame for short.
	Frame:SetSize( ScrW() - 350, ScrH() - 100 ) -- The size of the menu.
	Frame:SetTitle( ShaunSki ) -- Does it have a title?
	Frame:SetVisible( true ) -- Is it visible?
	Frame:SetDraggable( true ) -- Is it draggable?
	Frame:ShowCloseButton( true ) -- Is it closable?
	Frame:MakePopup() -- Pop it up!
	Frame:Center() -- Center of screen
	Frame.Paint = function()
		draw.RoundedBox( 1, 0, 0, Frame:GetWide()-0, Frame:GetTall()-0, Color( 0, 0, 0, 255 ) ) -- Draw around the corners of the menu!
		draw.RoundedBox( 1, 2, 2, Frame:GetWide()-4, Frame:GetTall()-4, Color( 80, 80, 80, 255 ) ) -- Draw our menu!
		draw.RoundedBox( 1, 20, 43, Frame:GetWide()-40, Frame:GetTall()-945, LineColor ) -- Draw a line underneath the server name!
		draw.DrawText( ServerName, "DermaLarge", Frame:GetWide()/2+0, 10+0, ServerNameColor, 1 ) -- Draw the server name!
		draw.DrawText( Rules, "Trebuchet24", Frame:GetWide()/30+0, 50+0, RulesColor, 0 ) -- Draw the rules!
	end
end
concommand.Add( "rules_menu", RulesMenu ) -- Add the concommand!

