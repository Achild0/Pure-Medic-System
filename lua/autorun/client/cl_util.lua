function PUREMEDIC_CL.limbHitGestion(budy,limb,dmg,scale,dtype)
  limb.LIMB_HEALTH = limb.LIMB_HEALTH - (dmg*scale);
  if limb.LIMB_HEALTH <= 0 and limb.STATUS != 0 then
    limb.STATUS = 0;
  elseif limb.STATUS != 2 and limb.STATUS != 0 then
    limb.STATUS = 2;
  end
  if (dmg*scale) >= 50 then
    PUREMEDIC_BODY:addWound(limb,(dmg/10)*scale),"major",dtype)
  elseif ((dmg*scale) < 50 and (dmg*scale) > 15) then
    PUREMEDIC_BODY:addWound(limb,(dmg/10)*scale),"minor",dtype)
  end
end;

function PUREMEDIC_CL.addWound(gravite,origine,table)
  table.Add(PUREMEDIC_CL.wounds[gravite][origine],table);
end;

function PUREMEDIC_CL.findWoundType(dtype)
  local origin = nil;
  if dtype == DMG_CRUSH or dtype == DMG_CLUB or dtype == DMG_SHOCK or dtype == DMG_ACID then
    origin = "coup";
  end;
  if dtype == DMG_BULLET then
    origin = "balle";
  end;
  if dtype == DMG_SLASH then
    origin = "laceration";
  end;
  return origin;
end;
