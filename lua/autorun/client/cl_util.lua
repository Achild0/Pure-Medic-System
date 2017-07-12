function PUREMEDIC_CL.limbHitGestion(limb,dmg,scale)
  limb.LIMB_HEALTH = limb.LIMB_HEALTH - (dmg*scale);
  if (dmg*scale) >= 50 then

  elseif

  end
end;

function PUREMEDIC_CL.addWound(gravite,table)
    table.Add(PUREMEDIC_CL.wounds[gravite],table);
end;
