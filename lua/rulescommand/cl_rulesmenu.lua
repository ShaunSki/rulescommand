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
	Frame:SetDraggable( false ) -- Is it draggable?
	Frame:ShowCloseButton( false ) -- Is it closable? -- False because we have buttons that do this job.
	Frame:MakePopup() -- Pop it up!
	Frame:Center() -- Center of screen!
	Frame.Paint = function()
		draw.RoundedBox( 1, 2, 2, Frame:GetWide()-4, Frame:GetTall()-4, Color( 65, 65, 65, 255 ) ) -- Draw our menu!
		draw.RoundedBox( 1, 0, 0, Frame:GetWide()-0, Frame:GetTall()-0, BackgroundColor ) -- Draw Background color!
		draw.RoundedBox( 2, 20, 50, Frame:GetWide()-40+0, Frame:GetTall()-100, RulesBackgroundColor ) -- Draw rules background!
		draw.RoundedBox( 1, 20, 50, Frame:GetWide()-130+90, Frame:GetTall()/110+0, LineColor ) -- Draw a line underneath the server name!
		draw.DrawText( ServerName, FontServerName, Frame:GetWide()/2+0, 20+0, ServerNameColor, 1 ) -- Draw the server name!
		draw.DrawText( Rules, FontRules, Frame:GetWide()/30+0, 60+0, RulesColor, 0 ) -- Draw the rules!
	end

	local gmod_image = vgui.Create( "DImage", Frame ) -- Creating DImage as gmod_image for simples :)
	gmod_image:SetPos( Frame:GetWide()/1.30+0, Frame:GetTall()/15+0 ) -- The position of the image.
	gmod_image:SetSize( 250, 250 ) -- The size of the image.
	gmod_image:SetImage( ImagePath ) -- Setting the image! duhh! changeable in the config.
	
	local button1 = vgui.Create( "DButton", Frame )
	button1:SetText( Button1Text )
	button1:SetTextColor( Button1TextColor )
	button1:SetPos( Frame:GetWide()/3+0, Frame:GetTall()/1.045+0 )
	button1:SetSize( 150, 30 )
	button1.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Button1BackgroundColor ) -- Draw a colorful button
	end
	button1.DoClick = function()
	if AcceptMessageEnable == true then
	Frame:Close()
	RunConsoleCommand( "say", AcceptMessage )
		end
	end
	
	local button2 = vgui.Create( "DButton", Frame )
	button2:SetText( Button2Text )
	button2:SetTextColor( Button2TextColor )
	button2:SetPos( Frame:GetWide()/2+0, Frame:GetTall()/1.045+0 )
	button2:SetSize( 150, 30 )
	button2.Paint = function( self, w, h )
	draw.RoundedBox( 0, 0, 0, w, h, Button2BackgroundColor ) -- Draw a colorful button
	end
	button2.DoClick = function()
	if DeclineMessageEnable == true then
	Frame:Close()
	RunConsoleCommand( "say", DeclineMessage )
	timer.Create( "Timer", DeclineLeaveTime, 1, function()
	RunConsoleCommand( "disconnect" )
			end )
		end
	end
end
usermessage.Hook( "rules_menu", RulesMenu )