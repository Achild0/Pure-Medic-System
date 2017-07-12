util.AddNetworkString("PUREMEDIC_new_body")

hook.Add("EntityTakeDamage","PUREMEDIC_Damage_Modification",PUREMEDIC.hurt(vict,dmginfo));

hook.Add("PlayerSpawn","PUREMEDIC_On_Player_Spawn",function(ply)
  net.Start("PUREMEDIC_new_body");
  net.Send(ply);
end);
