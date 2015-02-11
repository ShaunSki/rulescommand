-- Created By ShaunSki.
AddCSLuaFile("sh_config.lua")
AddCSLuaFile("cl_rulesmenu.lua")

include( "rulescommand/sh_config.lua" )
include( "rulescommand/cl_rulesmenu.lua" )
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
