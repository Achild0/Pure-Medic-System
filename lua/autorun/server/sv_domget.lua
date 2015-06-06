AddCSLuaFile()
include("autorun/pure_med_config.lua")
include("autorun/server/sv_memb.lua")

util.AddNetworkString( "screench" )
util.AddNetworkString( "gd" )


local gd = {hhlt = HITS.hhealth, bghlt = HITS.bghealth, bdhlt = HITS.bdhealth, jdhlt = HITS.jdhealth, jghlt = HITS.jghealth, thlt = HITS.thealth, ehlt = HITS.ehealth}

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
        gd[hhlt] = gd[hhlt] - dmgt
        PrintTable(hhits)
      elseif hitgrp == 4 then
        print("Bras Gauche touché")
        util.ScreenShake( vict:GetPos(), 5, 2, 30, 1 )
        table.insert(bghits, "Blessure par balle")
        gd[bghlt] = gd[bghlt] - dmgt
        PrintTable(bghits)
      elseif hitgrp == 5 then
        print("Bras Droit touché")
        util.ScreenShake( vict:GetPos(), 5, 2, 30, 1 )
        table.insert(bdhits, "Blessure par balle")
        gd[bdhlt] = gd[bdhlt] - dmgt
        PrintTable(bdhits)
      elseif hitgrp == 7 then
        print("Jambe Droite touchée")
        vict:SetRunSpeed(PMED.hitrnspeed)
        vict:SetWalkSpeed(PMED.hitwkspeed)
        table.insert(jdhits, "Blessure par balle")
        gd[jdhlt] = gd[jdhlt] - dmgt
        PrintTable(jdhits)
      elseif hitgrp == 6 then
        print("Jambe Gauche touchée")
        vict:SetRunSpeed(PMED.hitrnspeed)
        vict:SetWalkSpeed(PMED.hitwkspeed)
        table.insert(jghits, "Blessure par balle")
        gd[jghlt] = gd[jghlt] - dmgt
        PrintTable(jghits)
      elseif hitgrp == 2 then
        print("Torse touché")
        table.insert(thits, "Blessure par balle")
        gd[thlt] = gd[thlt] - dmgt
        PrintTable(thits)
      elseif hitgrp == 3 then
        print("Estomac touché")
        table.insert(ehits, "Blessure par balle")
        gd[ehlt] = gd[ehlt] - dmgt
        PrintTable(ehits)
      else
        print("Achild tu t'es chié du con")
      end
  net.Start("gd")
    net.WriteTable(gd)
  net.Send(vict)
  end
end)
