PUREMEDIC_CL = {};
PUREMEDIC_CL.newbody = {};
PUREMEDIC_CL.wounds = {
  "major" = {
  },
  "minor" = {
  }
};
PUREMEDIC_CL.wgravite = {"minor","major"};
PUREMEDIC_CL.worigine = {"coup","balle","laceration"}

net.Receive("PUREMEDIC_new_body",function(len)
  PUREMEDIC_CL.newbody = PUREMEDIC_BODY.rebirth();
end);

net.Receive("PUREMEDIC_send_damage",function(len)
  local limb = net.ReadString();
  local dmg = net.ReadFloat();
  local dtype = net.ReadDouble();
end);

hook.Add("PlayerSwitchWeapon","PUREMEDIC_On_Weapon_Switch",function( ply, oldWeapon, newWeapon )
  local oweapon = oldWeapon:GetClass();
  local nweapon = newWeapon:GetClass();
	//MsgN( "You switched weapons! Your old weapon is " .. oldWeapon:GetClass() .."." )
	//MsgN( "Your new weapon is " .. newWeapon:GetClass() .. "." );
  //ply:SelectWeapon( string className )
end
