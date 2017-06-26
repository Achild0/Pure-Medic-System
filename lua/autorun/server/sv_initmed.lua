PUREMEDIC = {};

PUREMEDIC.hurt = function(vict)
  if vict:IsPlayer() then
    local lasthit = vict.LastHitGroup();
    if hitgrp == HITGROUP_HEAD then

    elseif hitgrp == HITGROUP_CHEST then

    elseif hitgrp == HITGROUP_STOMACH then

    elseif hitgrp == HITGROUP_LEFTARM then

    elseif hitgrp == HITGROUP_RIGHTARM then

    elseif hitgrp == HITGROUP_LEFTLEG then

    elseif hitgrp == HITGROUP_RIGHTLEG then

    end

  end
end;
