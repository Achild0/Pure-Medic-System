AddCSLuaFile()
include("autorun/pure_med_config.lua")
hook.Add("PlayerHurt","Ply-H",function( vict, attckr, hrem, dmgt )
  if vict:IsPlayer() then
      hitgrp = vict:LastHitGroup()
      print(hitgrp)
      if hitgrp == 1 then
        print("La tête est touchée")
      elseif hitgrp == 4 then
        print("Bras Gauche touché")
      elseif hitgrp == 5 then
        print("Bras Droit touché")
      elseif hitgrp == 7 then
        print("Jambe Droite touchée")
        vict:SetRunSpeed(PMED.hitrnspeed)
        vict:SetWalkSpeed(PMED.hitwkspeed)
      elseif hitgrp == 6 then
        print("Jambe Gauche touchée")
        vict:SetRunSpeed(PMED.hitrnspeed)
        vict:SetWalkSpeed(PMED.hitwkspeed)
      elseif hitgrp == 2 then
        print("Torse touché")
      elseif hitgrp == 3 then
        print("Estomac touché")
      else
        print("Achild tu t'es chié du con")
      end
  end
end)
