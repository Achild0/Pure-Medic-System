
local HITS = {}

  HITS.hhealth = 100

  HITS.bghealth = 100

  HITS.bdhealth = 100

  HITS.jdhealth = 100

  HITS.jghealth = 100

  HITS.thealth = 100

  HITS.ehealth = 100

  local hhits = {}
  local bghits = {}
  local bdhits = {}
  local jdhits = {}
  local thits = {}
  local ehits = {}

  hook.Add("PlayerSpawn", "hitsref", function(ply)
    ply:SetNWInt("headh", HITS.hhealth )
    ply:SetNWInt("brasgh", HITS.bghealth )
    ply:SetNWInt("brasdh", HITS.bdhealth )
    ply:SetNWInt("jambdh", HITS.jdhealth )
    ply:SetNWInt("jambgh", HITS.jghealth )
    ply:SetNWInt("torseh", HITS.thealth )
    ply:SetNWInt("estoh", HITS.ehealth )
  end)
