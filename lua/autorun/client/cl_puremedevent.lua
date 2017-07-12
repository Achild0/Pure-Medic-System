PUREMEDIC_CL = {};
PUREMEDIC_CL.newbody = {};
PUREMEDIC_CL.wounds = {
  "major" = {
  },
  "minor" = {
  }
};

net.Receive("PUREMEDIC_new_body",function(len)
  PUREMEDIC_CL.newbody = PUREMEDIC_BODY.rebirth();
end);

net.Receive("PUREMEDIC_send_damage",function(len)
  local limb = net.ReadString();
  local dmg = net.ReadFloat();
end);
