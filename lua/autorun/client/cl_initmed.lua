PUREMEDIC_BODY = {};
PUREMEDIC_BODY.__index = PUREMEDIC_BODY;


function PUREMEDIC_BODY.rebirth()
  local body = {};
  setmetatable(body,PUREMEDIC_BODY);
  body.LIMBS = {
    head = {},
    chest = {},
    stomach = {},
    larm = {},
    rarm = {},
    lleg = {},
    rleg = {}
  };
  for k,v in pairs(body.LIMBS) do
    body[k].STATUS = 1;
    body[k].LIMB_HEALTH = 100;
    body[k].WOUNDS = 0;
    body[k].WOUNDS_DETAIL = {};
  end;
  body.STATUS = 1;
  body.BLOOD = 1000;
  body.BLEEDINGRATE = 0;
  body.DISEASED = false;
  body.DISEASEDESC = "";
  return body;
end;

function PUREMEDIC_BODY:showLimbsStatus()
  for k,v in pairs(self.LIMBS) do
    print("Statut de "..k.." : ");
    for y,z in pairs(v) do
      if istable(z) then
        print(y.." : ")
        for g,h in pairs(z) do
          print(z);
        end;
      else
        print(y.." : "..z);
      end;
    end;
  end;
end;

function PUREMEDIC_BODY:bloodLoss(dmg,scale)
  if timer.Exists("PUREMEDIC_BloodLoss") then
    self.BLEEDINGRATE = self.BLEEDINGRATE + (dmg/10*scale);
  else
    self.BLEEDINGRATE = (dmg/10*scale);
    timer.Create("PUREMEDIC_BloodLoss",3,0,function()
      self.BLOOD = self.BLOOD - self.BLEEDINGRATE;
      if self.BLOOD < 0 then
        net.Start("PUREMEDIC_Death");
        net.SendToServer();
      end;
    end)

end;

function PUREMEDIC_BODY:hitlimb(limbname,dmg)
  if limbname == "HEAD" then

  elseif limbname == "CHEST" then

  elseif limbname == "STOMACH" then

  elseif limbname == "LARM" then

  elseif limbname == "RARM" then

  elseif limbname == "LARM" then

  elseif limbname == "LLEG" then

  elseif limbname == "RLEG" then

  end;

end;
