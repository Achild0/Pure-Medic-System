  /* EXEMPLE D'AJOUT D'UNE NOUVELLE BLESSURE

  PUREMEDIC_CL.addWound("minor","coup",
    {
      woundname = "Ecchymose"
      wounddesc = [[ Une lègere blessure ramarquable a une zone circulaire
      irréglulière bleue indiquant une lègère hemoragie interne qui survient
      principalement lorsque les parties molles de l'organisme recoivent un coup ]],
      woundrecup = [[ Un peu de repos, un anti-douleur si nécéssaire ]],
      woundtorecup = {"bandage","froid","anti-bio","coagulant"},
      woundeffect = {"bloodscreen","heartbeat","wiggle"},
      woundbloodloss = false
    }
  );


  */

  PUREMEDIC_CL.addWound("minor","coup",
    {
      woundname = "Ecchymose"
      wounddesc = [[ Une lègere blessure ramarquable a une zone circulaire
      irréglulière bleue indiquant une lègère hemoragie interne qui survient
      principalement lorsque les parties molles de l'organisme recoivent un coup ]],
      woundrecup = [[ Un peu de repos, un anti-douleur si nécéssaire ]],
      woundtorecup = {"froid"},
      woundbloodloss = false
    }
  );

  PUREMEDIC_CL.addWound("minor","coup",
    {
      woundname = "Hémoragie externe"
      wounddesc = [[ Un coup porté si violament qu'il a déchiré l'épiderme provoquant
      au passage la section d'un vaisseau sanguin, celui-ci se met a fuiter]],
      woundrecup = [[ Selon la taille un peu des desinfectant et un pensement
      ou bandage voire recoudre la plaie]],
      woundtorecup = {"bandage","desinfecter"},
      woundbloodloss = true
    }
  );

  PUREMEDIC_CL.addWound("minor","balle",
    {
      woundname = "Eraflure"
      wounddesc = [[ Blessure legère causé par une balle]],
      woundrecup = [[ Desinfecter et bander ]],
      woundtorecup = {"bandage","desinfecter"},
      woundbloodloss = true
    }
  );

  PUREMEDIC_CL.addWound("major","balle",
    {
      woundname = "Blessure par balle"
      wounddesc = [[ Blessure causé par une balle]],
      woundrecup = [[ Desinfecter, retirer la balle si elle n'a pas traversé, bander ]],
      woundtorecup = {"bandage","desinfecter","chirurgie"},
      woundbloodloss = true
    }
  );
