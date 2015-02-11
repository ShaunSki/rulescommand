-- This allows the files to work together instead of seperate.

if SERVER then
	AddCSLuaFile("rulescommand.lua")
	AddCSLuaFile("rulescommand/sv_rulescommand.lua")

	include("rulescommand/sv_rulescommand.lua")
end

if CLIENT then
	include("rulescommand/cl_rulesmenu.lua")
end
