-- This allows the files to work together instead of seperate.

if SERVER then
	AddCSLuaFile("rulescommand.lua")
	AddCSLuaFile("rulescommand/sv_rulescommand.lua")
	AddCSLuaFile("rulescommand/cl_rulescommand.lua")

	include("rulescommand/sv_rulescommand.lua")
	include("rulescommand/cl_rulesmenu.lua")
end

if CLIENT then
	AddCSLuaFile("rulescommand.lua")
	AddCSLuaFile("rulescommand/sv_rulescommand.lua")
	AddCSLuaFile("rulescommand/cl_rulescommand.lua")
	include("rulescommand/cl_rulesmenu.lua")
end
