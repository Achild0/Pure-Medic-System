PUREMEDIC_BODY = {};
PUREMEDIC_BODY.__index = PUREMEDIC_BODY;

function PUREMEDIC_BODY:rebirth()
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
