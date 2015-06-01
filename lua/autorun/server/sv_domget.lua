util.AddNetworkString( "wdtaken" )
hook.Add("PlayerHurt","Ply-H",function( vict, attckr, hrem, dmgt )
  if vict:IsPlayer() then
    print(vict:LastHitGroup())
    net.Start("wdtaken")
      net.WriteInt(vict:LastHitGroup(),4)
    net.Send(vict)
  end
end)
