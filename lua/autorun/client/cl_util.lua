function PUREMEDIC_CL.limbHitGestion(budy,limb,dmg,scale,dtype)
  limb.LIMB_HEALTH = limb.LIMB_HEALTH - (dmg*scale);
  if limb.LIMB_HEALTH <= 0 and limb.STATUS != 0 then
    limb.STATUS = 0;
  elseif limb.STATUS != 2 and limb.STATUS != 0 then
    limb.STATUS = 2;
  end
  if (dmg*scale) >= 50 then

  elseif ((dmg*scale) < 50 and (dmg*scale) > 15) then

  end
end;

function PUREMEDIC_CL.addWound(gravite,origine,table)
  table.Add(PUREMEDIC_CL.wounds[gravite][origine],table);
end;
