-- Created By ShaunSki.
AddCSLuaFile("sh_config.lua")
AddCSLuaFile("cl_rulesmenu.lua")

include( "rulescommand/sh_config.lua" )
include( "rulescommand/cl_rulesmenu.lua" )
-- Commands --
-- Creates our !rules command!
resource.AddFile( ImagePath ) -- Adds image for download!

--PlayerSay Command
function OpenRulesMenuPlayerSay( ply, command, team )
	for k,v in pairs(OpenRulesPlayerSay) do
		if command == v then
			OpenRulesConsoleCommand( ply )
		end
	end
end
hook.Add( "PlayerSay", "OpenRulesMenuPlayerSay", OpenRulesMenuPlayerSay )

-- Console Command
function OpenRulesConsoleCommand( ply )
	umsg.Start( "rules_menu", ply )
	umsg.End()
end
concommand.Add( "rules_menu", OpenMotdOnConsoleCommand )

-- Rules Open on Join
function OpenRulesMenuOnJoin( ply )
	if OpenRulesOnJoin == true then
	OpenRulesConsoleCommand( ply )
	end
end
hook.Add( "PlayerInitialSpawn", "OpenRulesMenuOnJoin", OpenRulesMenuOnJoin )
