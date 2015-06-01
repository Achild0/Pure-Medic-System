AddCSLuaFile()
include("autorun/pure_med_config.lua")
local btm = 70
ply = LocalPlayer()

net.Receive( "wdtaken", function(len)
  hitgrp = net.ReadInt(4)
  print(hitgrp)
  if hitgrp == 1 then
    print("La tête est touchée")
  elseif hitgrp == 4 then
    print("Bras Gaiche touché")
  elseif hitgrp == 5 then
    print("Bras Droit touché")
  elseif hitgrp == 7 then
    print("Jambe Droite touchée")
    ply:SetRunSpeed(PMED.hitrnspeed)
    ply:SetWalkSpeed(PMED.hitwkspeed)
  elseif hitgrp == 6 then
    print("Jambe Gauche touchée")
    ply:SetRunSpeed(PMED.hitrnspeed)
    ply:SetWalkSpeed(PMED.hitwkspeed)
  elseif hitgrp == 2 then
    print("Torse touché")
  elseif hitgrp == 3 then
    print("Estomac touché")
  else
    print("Achild tu t'es chié du con")
  end
end)
