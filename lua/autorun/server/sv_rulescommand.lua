-- Created By ShaunSki.

-- Commands --
-- Creates our !rules command!
resource.AddFile( "materials/vgui/garrysmod.png" )
resource.AddFile( "materials/vgui/rulesmenubackground.jpg" )

function RulesCommand( ply, text, teamonly )
	text = string.lower( text )
	if ( string.sub( text, 1) == "!rules" ) then return
	ply:ConCommand( "rules_menu" )
	end
end
hook.Add( "PlayerSay", "RulesCommand", RulesCommand )