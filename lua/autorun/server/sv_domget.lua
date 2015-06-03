AddCSLuaFile()
include("autorun/pure_med_config.lua")

util.AddNetworkString( "screench" )

hhits = {}
bghits = {}
bdhits = {}
jdhits = {}
jghits = {}
thits = {}
ehits = {}

hook.Add("PlayerHurt","Ply_H",function( vict, attckr, hrem, dmgt )
  if vict:IsPlayer() then
      hitgrp = vict:LastHitGroup()
      print(hitgrp)
      if hitgrp == 1 then
        print("La tête est touchée")
        util.ScreenShake( vict:GetPos(), 3, 5, 50, 1 )
        net.Start("screench")
          net.WriteBool(true)
        net.Send(vict)
        table.insert(hhits, "Blessure par balle")
        print(hhits)
      elseif hitgrp == 4 then
        print("Bras Gauche touché")
        util.ScreenShake( vict:GetPos(), 5, 2, 30, 1 )
        table.insert(bghits, "Blessure par balle")
        print(bghits)
      elseif hitgrp == 5 then
        print("Bras Droit touché")
        util.ScreenShake( vict:GetPos(), 5, 2, 30, 1 )
        table.insert(bdhits, "Blessure par balle")
        print(bdhits)
      elseif hitgrp == 7 then
        print("Jambe Droite touchée")
        vict:SetRunSpeed(PMED.hitrnspeed)
        vict:SetWalkSpeed(PMED.hitwkspeed)
        table.insert(jdhits, "Blessure par balle")
        print(jdhits)
      elseif hitgrp == 6 then
        print("Jambe Gauche touchée")
        vict:SetRunSpeed(PMED.hitrnspeed)
        vict:SetWalkSpeed(PMED.hitwkspeed)
        table.insert(jghits, "Blessure par balle")
        print(jghits)
      elseif hitgrp == 2 then
        print("Torse touché")
        table.insert(thits, "Blessure par balle")
        print(thits)
      elseif hitgrp == 3 then
        print("Estomac touché")
        table.insert(ehits, "Blessure par balle")
        print(ehits)
      else
        print("Achild tu t'es chié du con")
      end
  end
end)
