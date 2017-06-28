util.AddNetworkString("PUREMEDIC_send_damage");

PUREMEDIC = {};

PUREMEDIC.hurt = function(vict,dmginfo)
  if !vict:IsPlayer() then return end;
  local lasthit = vict.LastHitGroup();

  if hitgrp == HITGROUP_HEAD then

  elseif hitgrp == HITGROUP_CHEST then

  elseif hitgrp == HITGROUP_STOMACH then

  elseif hitgrp == HITGROUP_LEFTARM then

  elseif hitgrp == HITGROUP_RIGHTARM then

  elseif hitgrp == HITGROUP_LEFTLEG then

  elseif hitgrp == HITGROUP_RIGHTLEG then

  end;

end;
