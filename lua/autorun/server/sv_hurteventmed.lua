EntityTakeDamage( Entity target, CTakeDamageInfo dmg )

hook.Add("EntityTakeDamage","PUREMEDIC_Damage_Modification",PUREMEDIC.hurt(vict,dmginfo));
