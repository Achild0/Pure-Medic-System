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
    body.LIMBS[k].STATUS = 1;
    body.LIMBS[k].LIMB_HEALTH = 100;
    body.LIMBS[k].WOUNDS = 0;
    body.LIMBS[k].WOUNDS_DETAIL = {};
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

function PUREMEDIC_BODY:bloodLoss(bloss)
  if timer.Exists("PUREMEDIC_BloodLoss") then
    self.BLEEDINGRATE = self.BLEEDINGRATE + bloss;
  else
    self.BLEEDINGRATE = bloss;
    self.STATUS = 2;
    timer.Create("PUREMEDIC_BloodLoss",3,0,function()
      self.BLOOD = self.BLOOD - self.BLEEDINGRATE;
      if self.BLOOD <= 0 then
        self.STATUS = 0;
        net.Start("PUREMEDIC_Death");
        net.SendToServer();
      end;
    end)

end;

function PUREMEDIC_BODY:hitLimb(limbname,dmg,dtype)
  local dmg = dmg;
  local dtype = dtype;
  local scale = 0;
  if dtype == DMG_FALL then
    scale = 0.5;
    PUREMEDIC_CL.limbHitGestion(self,self.LIMBS.lleg,dmg,scale,dtype);
    PUREMEDIC_CL.limbHitGestion(self,self.LIMBS.rleg,dmg,scale,dtype);
  elseif limbname == "HEAD" then
    scale = 2;
    //PUREMEDIC_CL.limbHitGestion(self,self.LIMBS.head,dmg,scale);
    self:bloodLoss(dmg,scale);
  elseif limbname == "CHEST" then
    scale = 0.95;
    PUREMEDIC_CL.limbHitGestion(self,self.LIMBS.chest,dmg,scale,dtype);
  elseif limbname == "STOMACH" then
    scale = 0.95;
    PUREMEDIC_CL.limbHitGestion(self,self.LIMBS.stomach,dmg,scale,dtype);
  elseif limbname == "LARM" then
    scale = 0.95;
    PUREMEDIC_CL.limbHitGestion(self,self.LIMBS.larm,dmg,scale,dtype);
  elseif limbname == "RARM" then
    scale = 0.95;
    PUREMEDIC_CL.limbHitGestion(self,self.LIMBS.rarm,dmg,scale,dtype);
  elseif limbname == "LLEG" then
    scale = 0.95;
    PUREMEDIC_CL.limbHitGestion(self,self.LIMBS.lleg,dmg,scale,dtype);
  elseif limbname == "RLEG" then
    scale = 0.95;
    PUREMEDIC_CL.limbHitGestion(self,self.LIMBS.rleg,dmg,scale,dtype);
  end;

end;

function PUREMEDIC_BODY:addWound(limb,hypblood,gravite,dtype)
  local origin = PUREMEDIC_CL.findWoundType(dtype);
  local nwound = math.random(1,#PUREMEDIC_CL.wounds[gravite][origin])
  limb.WOUNDS = limb.WOUNDS + 1;
  table.Add(limb.WOUNDS_DETAIL,PUREMEDIC_CL.wounds[gravite][origin][nwound]);
  if PUREMEDIC_CL.wounds[gravite][origin][nwound].woundbloodloss == true then
    self:bloodLoss(hypblood);
  end
end;

function PUREMEDIC_BODY:checkLimbsStatus()
  for k,v in pairs(self.LIMBS)
end;
