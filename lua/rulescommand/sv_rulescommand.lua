-- Created By ShaunSki.
include( "sh_config.lua" )
include( "cl_rulesmenu.lua" )
-- Commands --
-- Creates our !rules command!
resource.AddFile( ImagePath ) -- Adds image for download!

function OpenRulesMenuPlayerSay( ply, command, team )

	for k,v in pairs(OpenRulesPlayerSay) do
		if command == v then
			ply:ConCommand( "rules_menu" )
		end
	end

end
hook.Add( "PlayerSay", "OpenRulesMenuPlayerSay", OpenRulesMenuPlayerSay )

function OpenRulesMenuOnJoin( ply )
	if OpenRulesOnJoin == true then
	ply:ConCommand( "rules_menu" )
	end
end
hook.Add( "PlayerInitialSpawn", "OpenRulesMenuOnJoin", OpenRulesMenuOnJoin )
