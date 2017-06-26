PUREMEDIC = {};
PUREMEDIC.limbs = {
  head = {},
  chest = {},
  stomach = {},
  larm = {},
  rarm = {},
  lleg = {},
  rleg = {}
}

PUREMEDIC.PSTATUS = 1;

for k,v in pairs(PUREMEDIC.limbs) do
  PUREMEDIC[k].STATUS = 1;
  PUREMEDIC[k].LIMB_HEALTH = 100;
  PUREMEDIC[k].WOUNDS = 0;
  PUREMEDIC[k].WOUNDS_DETAIL = {};
end;
