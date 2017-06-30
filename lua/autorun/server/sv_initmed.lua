util.AddNetworkString("PUREMEDIC_send_damage");

PUREMEDIC = {};

PUREMEDIC.sendDamage = function(ply,part,dmg)
  net.Start("PUREMEDIC_send_damage");
    net.WriteString(part);
    net.WriteFloat(dmg);
  net.Send(ply);
end;

PUREMEDIC.hurt = function(vict,dmginfo)
  if !vict:IsPlayer() then return end;
  local dmg = dmginfo:GetDamage();
  dmginfo:ScaleDamage(0);
  local lasthit = vict.LastHitGroup();
  if hitgrp == HITGROUP_HEAD then
    PUREMEDIC.sendDamage(vict,"HEAD",dmg);
  elseif hitgrp == HITGROUP_CHEST then
    PUREMEDIC.sendDamage(vict,"CHEST",dmg);
  elseif hitgrp == HITGROUP_STOMACH then
    PUREMEDIC.sendDamage(vict,"STOMACH",dmg);
  elseif hitgrp == HITGROUP_LEFTARM then
    PUREMEDIC.sendDamage(vict,"LARM",dmg);
  elseif hitgrp == HITGROUP_RIGHTARM then
    PUREMEDIC.sendDamage(vict,"RARM",dmg);
  elseif hitgrp == HITGROUP_LEFTLEG then
    PUREMEDIC.sendDamage(vict,"LLEG",dmg);
  elseif hitgrp == HITGROUP_RIGHTLEG then
    PUREMEDIC.sendDamage(vict,"RLEG",dmg);
  end;

end;
