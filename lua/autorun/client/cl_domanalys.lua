AddCSLuaFile()
include("autorun/pure_med_config.lua")
local btm = 70
local hhit = false
local tab = {
	["$pp_colour_addr"] = 0,
	["$pp_colour_addg"] = 0,
	["$pp_colour_addb"] = 0,
	["$pp_colour_brightness"] = 0,
	["$pp_colour_contrast"] = 0,
	["$pp_colour_colour"] = 0,
	["$pp_colour_mulr"] = 0,
	["$pp_colour_mulg"] = 0,
	["$pp_colour_mulb"] = 0
}
net.Receive("screench", function(len)
	if net.ReadBool() == true then
		hhit = true
	end
	return hhit
end)

net.Receive("gd", function(len)


end)

hook.Add("RenderScreenspaceEffects","h_hit",function()
	if hhit == true then
		DrawMotionBlur( 0.3, 0.9, 0.02 )
		DrawBloom( 0.4, 2, 9, 9, 1, 1, 1, 1, 1 )
	end
end)
