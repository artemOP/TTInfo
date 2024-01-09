--[[ rts_ground CONFIG 1/7 (sh_vehicles_heavy.lua) ]]--
VEHICLES_HEAVY = {
    {{"phantom"}, "Phantom"},
    {{"phantom2"}, "Phantom Wedge"},
    {{"phantom3"}, "Phantom Custom"},
    {{"packer"}, "Packer"},
    {{"hauler"}, "Hauler"},
    {{"hauler2"}, "Hauler Custom"},
    {{"longpath"}, "Longpath"},
    {{"roadkiller"}, "Roadkiller"},
    {{"urnext"}, "Ural"},
    {{"heavy_phantom"}, "Heavy Phantom"},
    -- {{"docktug"}, "Docktug"},
    {{"barracks4"}, "Civilian Barracks"},
    {{"sal_packer"}, "SAL Packer"},
    {{"sal_phantom"}, "SAL Phantom"},
    {{"globecab2"}, "Globe Oil DAF"},
    {{"go_hauler"}, "Globe Oil Hauler"},
    {{"collinsco_phantom3"}, "CollinsCo. Phantom Custom"},
    {{"frllc_hauler2"}, "FRLLC Hauler Custom"},
    {{"corp_nar"}, "NarwhalCorp Cab"},
    {{"cerberusc"}, "Cerberus Stock Classic"},
    {{"cerberusc2"}, "Cerberus Stock HD"},
    {{"barracks2"}, "Barracks"},

    -- Increase Heavy cab potential for common cabs
    {{"phantom"}, "Phantom"},
    {{"packer"}, "Packer"},
    {{"hauler"}, "Hauler"},
    {{"longpath"}, "Longpath"},
    {{"roadkiller"}, "Roadkiller"},
    {{"heavy_phantom"}, "Heavy Phantom"},
    {{"cerberusc"}, "Cerberus Stock Classic"},
    {{"phantom"}, "Phantom"},
    {{"packer"}, "Packer"},
    {{"hauler"}, "Hauler"},
    {{"longpath"}, "Longpath"},
    {{"roadkiller"}, "Roadkiller"},
    {{"heavy_phantom"}, "Heavy Phantom"},
    {{"cerberusc"}, "Cerberus Stock Classic"},

    {"benson", "Benson"},
    {"biff", "Biff"},
    {"mule", "Mule"},
    {"mule2", "Mule"},
    {"mule3", "Mule"},
    {"stockade", "Stockade"},
    {"stockade3", "Stockade RCV"},
    {"ambulance", "Ambulance"},
    {"firetruk", "Firetruck"},
    {"pbus", "Prison Bus"},
    {"mixer2", "Cement Mixer"},
    {"rubble", "Rubble"},
    {"tiptruck", "Tipper Truck"},
    {"tiptruck2", "Tipper Truck"},
    {"apc", "APC"},
    {"brickade", "Brickade"},
    {"ripley", "Ripley"},
    {"towtruck", "Tow Truck"},
    {"utillitruck", "Utility Truck"},
    {"utillitruck2", "Utility Truck"},
    {"utillitruck3", "Utility Truck"},
    {"boxville", "Boxville"},
    {"boxville2", "Boxville"},
    {"boxville3", "Boxville"},
    {"boxville4", "Boxville"},
    {"boxville5", "Boxville"},
    {"packer", "Packer"},
    {"pounder", "Pounder"},
    {"riot", "Riot"},
    {"mixer", "Mixer"},
    {"barracks", "Barracks"},
    -- {"barracks3", "Barracks"},

    {"mrtasty", "Mr. Tasty"},
    {"packer2", "Packer"},

    -- 2022 update
    {"swatbrickade", "HVY Brickade"},
    {"batheavy", "BAT M1142 TFFT"},
    {"catering", "Vapid Catering Truck"},
    {"stairtruck", "Vapid Airport Stair Truck"},
    {"airportutil", "FlyUS Airport Utility Truck"},
    {"apc", "HVY APC Tank"},
    {"apc2", "HVY APC"},
    {"aviationtanker", "Airport Tanker"},
    {"m977hl", "Oshkosh M977 Cargo"},
    {"m977ht", "Oshkosh M977 Tanker"},
    {"m9395", "AM General M939 Truck"},
    {"terbyte", "Benefactor Terrorbyte"},
    {"steed", "Vapid Steed"},
    {"yankee", "Vapid Yankee"},
    {"yankee2", "Vapid Yankee"},
}

VEHICLES_HEAVY_TRAILERS = {
    "armytanker", "armytrailer", "armytrailer2", "docktrailer",
    "graintrailer", "tvtrailer", "tanker", "tanker2", "trailerlogs",
    "trailers", "trailers2", "trailers3",
    "boxlongtr", "botdumptr",
    "docktrailer2", "drybulktr", "dumptr", "fueltr", "gastr",
    "trailerlogs2", "trailerswb", "trailerswb2", "trflat2",
}

--[[ rts_ground CONFIG 2/7 (sh_vehicles_level_1.lua) ]]--
VEHICLES_LEVEL_1 = {
    {"buccaneer3", "Albany Buccaneer"},
    {"cavalcade", "Albany Cavalcade"},
    {"emperor", "Albany Emperor"},
    {"emperor4", "Albany Emperor Stretch"},
    {"esperanto", "Albany Esperanto (GTA IV)"},
    {"pres", "Albany Presidente"},
    {"pres2", "Albany Presidente VIOS"},
    {"primo", "Albany Primo"},
    {"primo2", "Albany Primo Custom"},
    {"rom", "Albany Roman&#39;s Cab"},
    {"washington", "Albany Washington"},
    {"manana2", "Albany  Manana Custom"},
    {"euros", "Annis Euros"},
    {"hellion", "Annis Hellion"},
    {"pinnacle", "Annis Pinnacle"},
    {"bruiser", "Benefactor Bruiser Apocalypse"},
    {"bruiser2", "Benefactor Bruiser Future Shock"},
    {"bruiser3", "Benefactor Bruiser Nightmare"},
    {"dubsta", "Benefactor Dubsta"},
    {"dubsta3", "Benefactor Dubsta 6x6"},
    {"glendale2", "Benefactor Glendale Custom"},
    {"glendale", "Benefactor Glendale"},
    {"limo2", "Benefactor Turreted Limo"},
    {"panto", "Benefactor Panto"},
    {"schafter", "Benefactor Schafter LE"},
    {"schafter2", "Benefactor Schafter"},
    {"schafter5", "Benefactor Schafter V12 (Armored)"},
    {"schafter6", "Benefactor Schafter LWB (Armored)"},
    {"schaftergtr", "Benefactor Schafter GTR"},
    {"serrano", "Benefactor Serrano"},
    {"stretch3", "Benefactor Stretch E"},
    {"xls", "Benefactor XLS"},
    {"xls2", "Benefactor XLS (Armored)"},
    {"feltzer", "Benefactor Feltzer Coupe"},
    {"bfinjection", "BF Injection"},
    {"bifta", "BF Bifta"},
    {"club", "BF Club"},
    {"dune", "BF Dune Buggy"},
    {"dune3", "BF Dune FAV"},
    {"huesca", "BF Huesca"},
    {"raptor", "BF Raptor"},
    {"surfer", "BF Surfer"},
    {"weevil", "BF Weevil"},
    {"prairie", "Bollokan Prairie"},
    {"buffalo4", "Bravado Buffalo STX"},
    {"dloader", "Bravado Duneloader"},
    {"feroci", "Bravado Feroci"},
    {"feroci2", "Bravado Feroci FlyUS"},
    {"gresley", "Bravado Gresley"},
    {"rumpo", "Bravado Rumpo"},
    {"youga", "Bravado Youga"},
    {"youga2", "Bravado Youga Classic"},
    {"bodhi2", "Canis Bodhi"},
    {"crusader", "Canis Crusader"},
    {"freecrawler", "Canis Freecrawler"},
    {"kalahari", "Canis Kalahari"},
    {"kamacho", "Canis Kamacho"},
    {"mesa", "Canis Mesa"},
    {"mesa3", "Canis Mesa (Off-Road)"},
    {"seminole", "Canis Seminole"},
    {"seminole2", "Canis Seminole Frontier"},
    {"fxt", "Cavalcade FXT"},
    {"romero", "Chariot Romero Hearse"},
    {"fugitive", "Cheval Fugitive"},
    {"pique", "Cheval Pique"},
    {"surge", "Cheval Surge"},
    {"wombat", "Cheval Wombat"},
    {"brawler", "Coil Brawler"},
    {"savanna", "Coil Savanna"},
    {"asea", "Declasse Asea"},
    {"brutus ", "Declasse Brutus Apocalypse"},
    {"brutus2", "Declasse Brutus Future Shock"},
    {"brutus3", "Declasse Brutus Nightmare"},
    {"gburrito2", "Declasse Gang Burrito"},
    {"granger", "Declasse Granger"},
    {"granger2", "Declasse Granger 3600LX"},
    {"merit", "Declasse Merit"},
    {"premier", "Declasse Premier"},
    {"premier2", "Declasse Premier Classic"},
    {"rancher", "Declasse Rancher SWB"},
    {"rancherxl", "Declasse Rancher XL"},
    {"rhapsody", "Declasse Rhapsody"},
    {"sabre2", "Declasse Sabre Beater"},
    {"tampa2", "Declasse Drift Tampa"},
    {"taxi2", "Declasse Merit Taxi"},
    {"tornado2", "Declasse Tornado"},
    {"tornado5", "Declasse Tornado Custom"},
    {"vigerob", "Declasse Vigero Beater"},
    {"yosemite3", "Declasse Yosemite"},
    {"exemplar", "Dewbauchee Exemplar"},
    {"blista", "Dinka Blista"},
    {"chavos", "Dinka Chavos"},
    {"chavos2", "Dinka Chavos S"},
    {"enduro", "Dinka Enduro"},
    {"hakumai", "Dinka Hakumai"},
    {"kanjo", "Dinka Blista Kanjo"},
    {"perennial", "Dinka Perennial"},
    {"perennial2", "Dinka Perennial FlyUS"},
    {"rt3000", "Dinka RT3000"},
    {"admiral", "Dundrearn Admiral"},
    {"landstalker", "Dundreary Landstalker"},
    {"landstalker2", "Dundreary Landstalker XL"},
    {"regina", "Dundreary Regina"},
    {"regina3", "Dundreary Regina Sedan"},
    {"stretch", "Dundreary Stretch"},
    {"stretch2", "Dundreary Stretch"},
    {"habanero", "Emperor Habanero"},
    {"lokus", "Emperor Lokus"},
    {"cog55", "Enus Cognoscenti 55"},
    {"cog552", "Enus Cognoscenti 55 (Armored)"},
    {"cogcabrio", "Enus Cognoscenti Cabrio"},
    {"cognoscenti", "Enus Cognoscenti"},
    {"cognoscenti2", "Enus Cognoscenti (Armored)"},
    {"deity", "Enus Deity"},
    {"huntley", "Enus Huntley S"},
    {"jubilee", "Enus Jubilee"},
    {"stafford", "Enus Stafford"},
    {"superd", "Enus Super Diamond"},
    {"windsor", "Enus Windsor"},
    {"windsor2", "Enus Windsor Drop"},
    {"fq2", "Fathom FQ 2"},
    {"airportferoci", "FlyUS Feroci"},
    {"airportperennial", "FlyUS Perennial"},
    {"baller2", "Gallivanter Baller"},
    {"baller3", "Gallivanter Baller LE"},
    {"baller4", "Gallivanter Baller LE LWB"},
    {"baller5", "Gallivanter Baller LE (Armored)"},
    {"baller6", "Gallivanter Baller LE LWB (Armored)"},
    {"baller7", "Gallivanter Baller ST"},
    {"brioso", "Grotti Brioso R/A"},
    {"brioso2", "Grotti Brioso 300"},
    {"insurgent", "HVY Insurgent Pick-Up"},
    {"insurgent2", "HVY Insurgent"},
    {"insurgent3", "HVY Insurgent Pick-Up Custom"},
    {"menacer", "HVY Menacer"},
    {"nightshark", "HVY Nightshark"},
    {"scarab", "HVY Scarab Apocalypse"},
    {"scarab2", "HVY Scarab Future Shock"},
    {"scarab3", "HVY Scarab Nightmare"},
    {"df8", "Imponte DF8"},
    {"dukes3", "Imponte  Beater Dukes"},
    {"asterope", "Karin Asterope"},
    {"bjxl", "Karin BeeJay XL"},
    {"dilettante", "Karin Dilettante"},
    {"dilettantedx", "Karin Dilettante DX"},
    {"everon", "Karin Everon"},
    {"intruder", "Karin Intruder"},
    {"previon", "Karin Previon"},
    {"rebel", "Karin Rusty Rebel"},
    {"rebel2", "Karin Rebel"},
    {"technical", "Karin Technical Aqua"},
    {"technical2", "Karin Technical"},
    {"cinquemila", "Lampadati Cinquemila"},
    {"felon", "Lampadati Felon"},
    {"felon2", "Lampadati Felon GT"},
    {"novak", "Lampadati Novak"},
    {"avarus", "LCC Avarus"},
    {"hexer", "LCC Hexer"},
    {"tanajura", "Lemanjá Tanajura"},
    {"rc350", "Lexus RC 350"},
    {"lycan", "Liberty Chop Shop Lycan"},
    {"lycan2", "Liberty Chop Shop Lycan Custom"},
    {"nightblade2", "Liberty Chop Shop Nightblade"},
    {"manchez", "Maibatsu Manchez"},
    {"manchez2", "Maibatsu Manchez Scout"},
    {"sanchez", "Maibatsu Sanchez (livery)"},
    {"sanchez2", "Maibatsu Sanchez"},
    {"patriot", "Mammoth Patriot"},
    {"patriot2", "Mammoth Patriot Stretch"},
    {"patriot3", "Mammoth Patriot Mil-Spec"},
    {"squaddie", "Mammoth Squaddie"},
    {"asbo", "Maxwell Asbo"},
    {"shamus", "Maxwell Shamus"},
    {"vagrant", "Maxwell Vagrant"},
    {"blazer", "Nagasaki Blazer"},
    {"blazer1", "Nagasaki Blazer"},
    {"blazer2", "Nagasaki Blazer Lifeguard"},
    {"blazer3", "Nagasaki Hot Rod Blazer"},
    {"blazer4", "Nagasaki Street Blazer"},
    {"chimera", "Nagasaki Chimera"},
    {"outlaw", "Nagasaki Outlaw"},
    {"iwagen", "Obey I-Wagen"},
    {"rocoto", "Obey Rocoto"},
    {"tailgater", "Obey Tailgater"},
    {"f620", "Ocelot F620"},
    {"jackal", "Ocelot Jackal"},
    {"loretta", "Ocelot Loretta"},
    {"esskey", "Pegassi Esskey"},
    {"faggio", "Pegassi Faggio Sport"},
    {"faggio2", "Pegassi Faggio"},
    {"faggio3", "Pegassi Faggio Mod"},
    {"fcr", "Pegassi FCR 1000"},
    {"fcr2", "Pegassi FCR 1000 Custom"},
    {"ruffian", "Pegassi Ruffian"},
    {"toros", "Pegassi Toros"},
    {"astron", "Pfister Astron"},
    {"diablous", "Principe Diabolus"},
    {"diablous2", "Principe Diabolus Custom"},
    {"rrphantom", "Rolls-Royce Phantom"},
    {"zhaba", "RUNE Zhaba"},
    {"pmp600", "Schyster PMP 600"},
    {"pcj", "Shitzu PCJ 600"},
    {"vader", "Shitzu Vader"},
    {"stiwrc", "Subaru Impreza Rally"},
    {"oracle", "Ubermacht Oracle XS"},
    {"oracle2", "Ubermacht Oracle"},
    {"rebla", "Ubermacht Rebla GTS"},
    {"reblac", "Ubermacht Rebla"},
    {"sentinel", "Ubermacht Sentinel XS"},
    {"sentinel2", "Ubermacht Sentinel"},
    {"zion", "Ubermacht Zion"},
    {"zion2", "Ubermacht Zion Cabrio"},
    {"18f350plow", "Vapid Ford F350"},
    {"bobcat", "Vapid Bobcat"},
    {"bobcatxl", "Vapid Bobcat XL"},
    {"caracara2", "Vapid Caracara 4x4"},
    {"contender", "Vapid Contender"},
    {"contender2", "Vapid Contender E109"},
    {"fortune", "Vapid Fortune"},
    {"guardian", "Vapid Guardian"},
    {"huntley2", "Vapid Huntley Sport"},
    {"interceptor", "Vapid Interceptor"},
    {"kentish", "Vapid Kentish"},
    {"minivan", "Vapid Minivan"},
    {"minivan2", "Vapid Minivan Custom"},
    {"monster", "Vapid Liberator"},
    {"peyote3", "Vapid Peyote Custom"},
    {"radi", "Vapid Radius"},
    {"riata", "Vapid Riata"},
    {"sandking", "Vapid Sandking XL"},
    {"sandking2", "Vapid Sandking SWB"},
    {"speedo", "Vapid Speedo"},
    {"stanier", "Vapid Stanier"},
    {"stanier2", "Vapid Stanier S"},
    {"taxi", "Vapid Taxi (Stanier)"},
    {"taxi3", "Vapid Stanier Taxi"},
    {"trophytruck", "Vapid Trophy Truck"},
    {"trophytruck2", "Vapid Desert Raid"},
    {"winky", "Vapid Winky"},
    {"caracara", "Vapid  Caracara"},
    {"ingot", "Vulcar Ingot"},
    {"warrener", "Vulcar Warrener"},
    {"warrener2", "Vulcar Warrener Pickup"},
    {"issi2", "Weeny Issi"},
    {"issi3", "Weeny Issi Classic"},
    {"issi4", "Weeny Issi Apocalypse"},
    {"issi5", "Weeny Issi Future Shock"},
    {"bagger", "Western Bagger"},
    {"cliffhanger", "Western Cliffhanger"},
    {"daemon", "Western Daemon"},
    {"freeway", "Western Freeway"},
    {"gargoyle", "Western Gargoyle"},
    {"hellfury", "Western Hellfury"},
    {"nightblade", "Western Nightblade"},
    {"ratbike", "Western Rat Bike"},
    {"revenant", "Western Revenant"},
    {"sovereign", "Western Sovereign"},
    {"wayfarer", "Western Wayfarer"},
    {"wolfsbane", "Western Wolfsbane"},
    {"diabolus", "Western Motorcycle Company Diabolus"},
    {"sovereign2", "Western Motorcycle Company Sovereign"},
    {"marbelle", "Willard Marbelle"},
    {"solair", "Willard Solair"},
    {"willard", "Willard Willard"},
    {"stratum", "Zirconium Stratum"},
    {"stratum2", "Zirconium Stratum Sedan"},
    {"odessa", "Odessa"},
    {"stryder", "Stryder"},
}

--[[ rts_ground CONFIG 3/7 (sh_vehicles_level_2.lua) ]]--
VEHICLES_LEVEL_2 = {
    {"lurcher", "Albany Lurcher"},
    {"buccaneer2", "Albany Buccaneer Custom"},
    {"buccaneer", "Albany Buccaneer"},
    {"hermes", "Albany Hermes"},
    {"virgo", "Albany Virgo"},
    {"btype", "Albany Roosevelt"},
    {"btype2", "Albany Fränken Stange"},
    {"btype3", "Albany Roosevelt Valor"},
    {"manana", "Albany Manana"},
    {"lancea", "Annis Lancea"},
    {"savestra", "Annis Savestra"},
    {"feltzer3", "Benefactor Stirling GT"},
    {"ratloader2", "Bravado Rat-Truck"},
    {"gauntlet2", "Bravado Redwood Gauntlet"},
    {"gauntlet", "Bravado Gauntlet"},
    {"gauntlet3", "Bravado Gauntlet Classic"},
    {"gauntlet4", "Bravado Gauntlet Hellfire"},
    {"ratloader", "Bravado Rat-Loader"},
    {"gauntlet5", "Bravado Gauntlet Classic Custom"},
    {"youga3", "Bravado Youga"},
    {"youga4", "Bravado Youga Custom"},
    {"bodhi", "Canis Bodhi"},
    {"picador", "Cheval Picador"},
    {"moonbeam2", "Declasse Moonbeam Custom"},
    {"sabregt2", "Declasse Sabre Turbo Custom"},
    {"voodoo", "Declasse Voodoo"},
    {"yosemite", "Declasse Yosemite"},
    {"yosemite2", "Declasse Drift Yosemite"},
    {"moonbeam", "Declasse Moonbeam"},
    {"impaler", "Declasse Impaler"},
    {"sabregt", "Declasse Sabre Turbo"},
    {"stalion", "Declasse Stallion"},
    {"tampa", "Declasse Tampa"},
    {"tulip", "Declasse Tulip"},
    {"vamos", "Declasse Vamos"},
    {"vigero", "Declasse Vigero"},
    {"voodoo3", "Declasse Voodoo Custom"},
    {"tampa3", "Declasse Tampa"},
    {"riva", "Declasse Riva"},
    {"impaler2", "Declasse Impaler Apocalypse"},
    {"impaler3", "Declasse Impaler Future Shock"},
    {"impaler4", "Declasse Impaler Nightmare"},
    {"tornado6", "Declasse Tornado Rat Rod"},
    {"mamba", "Declasse Mamba"},
    {"stalion2", "Declasse Burger Shot Stallion"},
    {"sabre", "Declasse Sabre"},
    {"jb700", "Dewbauchee JB 700"},
    {"jb7002", "Dewbauchee JB 700W"},
    {"rapidgt3", "Dewbauchee Rapid GT Classic"},
    {"akuma", "Dinka Akuma"},
    {"double", "Dinka Double-T"},
    {"vindicator", "Dinka Vindicator"},
    {"veto", "Dinka Veto Classic"},
    {"veto2", "Dinka Veto Modern"},
    {"double2", "Dinka Double-T Custom"},
    {"virgo2", "Dundreary Virgo Classic Custom"},
    {"virgo3", "Dundreary Virgo Classic"},
    {"superd2", "Enus Super Drop Diamond"},
    {"cheetah3", "Grotti Cheetah Classic Custom"},
    {"cheetah2", "Grotti Cheetah Classic"},
    {"gt500", "Grotti GT500"},
    {"stinger", "Grotti Stinger"},
    {"stingergt", "Grotti Stinger GT"},
    {"turismo2", "Grotti Turismo Classic"},
    {"dukes2", "Imponte Duke O&#39;Death"},
    {"deluxogt", "Imponte Deluxo GT"},
    {"dukes", "Imponte Dukes"},
    {"nightshade", "Imponte Nightshade"},
    {"phoenix", "Imponte Phoenix"},
    {"ruiner", "Imponte Ruiner"},
    {"phoenix2", "Imponte Phoenix T-Top"},
    {"coquette3", "Invetero Coquette BlackFin"},
    {"coquette2", "Invetero Coquette Classic"},
    {"asteropers", "Karin Asterope RS"},
    {"z190", "Karin 190z"},
    {"penne", "Lampadati 169 Penne"},
    {"casco", "Lampadati Casco"},
    {"michelli", "Lampadati Michelli GT"},
    {"pigalle", "Lampadati Pigalle"},
    {"viseris", "Lampadati Viseris"},
    {"innovation", "LCC Innovation"},
    {"sanctus", "LCC Sanctus"},
    {"bf400", "Nagasaki BF400"},
    {"vortex", "Nagasaki Vortex"},
    {"carbonrs", "Nagasaki Carbon RS"},
    {"shinobi", "Nagasaki Shinobi"},
    {"shotaro", "Nagasaki Shotaro"},
    {"blazer5", "Nagasaki Blazer"},
    {"swinger", "Ocelot Swinger"},
    {"stromberg", "Ocelot Stromberg"},
    {"strombergsu", "Ocelot Stromberg Specials Unit"},
    {"ardent", "Ocelot Ardent"},
    {"bati", "Pegassi Bati 801"},
    {"bati2", "Pegassi Bati 801RR"},
    {"toreador", "Pegassi Toreador"},
    {"infernus2", "Pegassi Infernus Classic"},
    {"monroe", "Pegassi Monroe"},
    {"torero", "Pegassi Torero"},
    {"lectro", "Principe Lectro"},
    {"cheburek", "RUNE Cheburek"},
    {"deviant", "Schyster Deviant"},
    {"hakuchou2", "Shitzu Hakuchou Drag"},
    {"defiler", "Shitzu Defiler"},
    {"hakuchou", "Shitzu Hakuchou"},
    {"nrg900", "Shitzu NRG900"},
    {"hakuchou3", "Shitzu Hakuchou Custom"},
    {"ae86", "Toyota Sprinter Trueno AE86"},
    {"ztype", "Truffade Z-Type"},
    {"zion3", "Ubermacht Zion Classic"},
    {"chino2", "Vapid Chino Custom"},
    {"slamvan3", "Vapid Slamvan Custom"},
    {"slamvan", "Vapid Slamvan"},
    {"dominator2", "Vapid Pisswasser Dominator"},
    {"peyote2", "Vapid Peyote Gasser"},
    {"blade", "Vapid Blade"},
    {"chino", "Vapid Chino"},
    {"clique", "Vapid Clique"},
    {"dominator", "Vapid Dominator"},
    {"dominator3", "Vapid Dominator GTX"},
    {"ellie", "Vapid Ellie"},
    {"hotknife", "Vapid Hotknife"},
    {"hustler", "Vapid Hustler"},
    {"slamvan2", "Vapid Lost Slamvan"},
    {"slamvan4", "Vapid Slamvan Apocalypse"},
    {"slamvan5", "Vapid Slamvan Future Shock"},
    {"slamvan6", "Vapid Slamvan Nightmare"},
    {"imperator", "Vapid Imperator Apocalypse"},
    {"imperator2", "Vapid Imperator Future Shock"},
    {"imperator3", "Vapid Imperator Nightmare"},
    {"dominator4", "Vapid Dominator Apocalypse"},
    {"dominator5", "Vapid Dominator Future Shock"},
    {"dominator6", "Vapid Dominator Nightmare"},
    {"dominator8", "Vapid Dominator GTT"},
    {"retinue", "Vapid Retinue"},
    {"retinue2", "Vapid Retinue Mk II"},
    {"fagaloa", "Vulcar Fagaloa"},
    {"nebula", "Vulcar Nebula Turbo"},
    {"issi6", "Weeny Issi Nightmare"},
    {"dynasty", "Weeny Dynasty"},
    {"reever", "Western Reever"},
    {"angel", "Western Angel"},
    {"deathbike", "Western Deathbike Apocalypse"},
    {"deathbike3", "Western Deathbike Nightmare"},
    {"faction2", "Willard Faction Custom"},
    {"faction", "Willard Faction"},
    {"faction3", "Willard Faction Custom Donk"},
    {"dune4", "Ramp Buggy"},
}

--[[ rts_ground CONFIG 4/7 (sh_vehicles_level_3.lua) ]]--
VEHICLES_LEVEL_3 = {
    {"primov12", "Albany Primo Club Racer"},
    {"vstr", "Albany V-STR"},
    {"elegy", "Annis Elegy Retro Custom"},
    {"elegy2", "Annis Elegy RH8"},
    {"zr350", "Annis ZR350"},
    {"remus", "Annis Remus"},
    {"zr3803", "Annis ZR380 Nightmare"},
    {"zr3802", "Annis ZR380 Future Shock"},
    {"zr380", "Annis ZR380 Apocalypse"},
    {"zr350ta", "Annis ZR-350 T/A"},
    {"schwarzer", "Benefactor Schwartzer"},
    {"schafter4", "Benefactor Schafter LWB"},
    {"spritzer", "Benefactor Spritzer STR"},
    {"streiter", "Benefactor Streiter"},
    {"feltzer2", "Benefactor Feltzer"},
    {"schafter3", "Benefactor Schafter V12"},
    {"schlagen", "Benefactor Schlagen GT"},
    {"spritzerdtm", "Benefactor Spritzer DTM"},
    {"surano", "Benefactor Surano"},
    {"remidor", "BF Remidor"},
    {"buffalo3", "Bravado Sprunk Buffalo"},
    {"buffalo", "Bravado Buffalo"},
    {"buffalo2", "Bravado Buffalo S"},
    {"banshee", "Bravado Banshee"},
    {"verlierer2", "Bravado Verlierer"},
    {"raiden", "Coil Raiden"},
    {"hotring", "Declasse Hotring Sabre"},
    {"massacro2", "Dewbauchee Massacro (Racecar)"},
    {"massacro", "Dewbauchee Massacro"},
    {"rapidgt", "Dewbauchee Rapid GT"},
    {"seven70", "Dewbauchee Seven-70"},
    {"specter", "Dewbauchee Specter"},
    {"specter2", "Dewbauchee Specter Custom"},
    {"champion", "Dewbauchee Champion"},
    {"supergt", "Dewbauchee SuperGT"},
    {"blista2", "Dinka Blista Compact"},
    {"blista3", "Dinka Go Go Monkey Blista"},
    {"jester2", "Dinka Jester (Racecar)"},
    {"sugoi", "Dinka Sugoi"},
    {"jester", "Dinka Jester"},
    {"jester3", "Dinka Jester Classic"},
    {"jesterv12", "Dinka Jester Super Secret"},
    {"jester4", "Dinka Jester Sport"},
    {"vectre", "Emperor Vectre"},
    {"paragon2", "Enus Paragon R (Armored)"},
    {"paragon", "Enus Paragon R"},
    {"bestiagts", "Grotti Bestia GTS"},
    {"carbonizzare", "Grotti Carbonizzare"},
    {"italigto", "Grotti Itali GTO"},
    {"turismo", "Grotti Turismo"},
    {"khamelion", "Hijak Khamelion"},
    {"ruston", "Hijak Ruston"},
    {"coquette4", "Inverto Coquette D10"},
    {"coquette", "Invetero Coquette"},
    {"calico", "Karin Calico"},
    {"kuruma2", "Karin Kuruma (Armored)"},
    {"futo", "Karin Futo"},
    {"futo2", "Karin Futo GT Hatch"},
    {"sultan", "Karin Sultan"},
    {"sultan2", "Karin Sultan Classic"},
    {"sultanr", "Karin Sultan Rally"},
    {"kuruma", "Karin Kuruma"},
    {"sultans", "Karin Sultan-S"},
    {"tropos", "Lampadati Tropos Rallye"},
    {"furoregt", "Lampadati Furore GT"},
    {"komoda", "Lampadati Komoda"},
    {"penumbra2", "Maibatsu Penubra FF"},
    {"penumbra", "Maibatsu Penumbra"},
    {"vincent", "Maibatsu Vincent"},
    {"gtr", "Nissan GTR"},
    {"tailgater2", "Obey Tailgater"},
    {"drafter", "Obey 8F Drafter"},
    {"ninef", "Obey 9F"},
    {"ninef2", "Obey 9F Cabrio"},
    {"omnis", "Obey Omnis"},
    {"draftgpr", "Obey Draft GPR"},
    {"jugular", "Ocelot Jugular"},
    {"locust", "Ocelot Locust"},
    {"lynx", "Ocelot Lynx"},
    {"pariah", "Ocelot Pariah"},
    {"imorgon", "Overflod Imorgon"},
    {"comet6", "Pfister Comet S2"},
    {"neon", "Pfister Neon"},
    {"comet4", "Pfister Comet Safari"},
    {"comet2", "Pfister Comet"},
    {"comet3", "Pfister Comet Retro Custom"},
    {"comet5", "Pfister Comet SR"},
    {"growler", "Pfister Growler"},
    {"comet7", "Pfister Comet S2 Cabrio"},
    {"fusilade", "Schyster Fusilade"},
    {"models", "Tesla Model S"},
    {"revolter", "Ubermacht Revolter"},
    {"sentinel3", "Ubermacht Sentinel Classic"},
    {"sentinelr", "Ubermacht Sentinel Race"},
    {"dominator7", "Vapid Dominator ASP"},
    {"flashgt", "Vapid Flash GT"},
    {"gb200", "Vapid GB200"},
    {"uranus", "Vapid Uranus"},
    {"neo", "Vysser Neo"},
    {"issi7", "Weeny Issi Sport"},
    {"rrocket", "Western Rampant Rocket"},
    {"deathbike2", "Western Deathbike Future Shock"},
    {"cypher", "Übermacht Cypher"},
}

--[[ rts_ground CONFIG 5/7 (sh_vehicles_level_4.lua) ]]--
VEHICLES_LEVEL_4 = {
    {"le7b", "Annis RE-7B"},
    {"s80", "Annis S80RR"},
    {"krieger", "Benefactor Krieger"},
    {"banshee2", "Bravado Banshee 900R"},
    {"taipan", "Cheval Taipan"},
    {"cyclone", "Coil Cyclone"},
    {"voltic", "Coil Voltic"},
    {"vagner", "Dewbauchee Vagner"},
    {"blistata", "Dinka Blista Compact T/A"},
    {"sheava", "Emperor ETR1"},
    {"hpr1", "Entara HPR-1 &#34;Hyperion&#34;"},
    {"cheetah", "Grotti Cheetah"},
    {"furia", "Grotti Furia"},
    {"prototipo", "Grotti X80 Proto"},
    {"turismor", "Grotti Turismo R"},
    {"visione", "Grotti Visione"},
    {"italirsx", "Grotti Itali RSX"},
    {"vertice", "Hijak Vertice"},
    {"futota", "Karin Futo T/A"},
    {"kurumata", "Karin Kuruma T/A Mk.I"},
    {"kurumata2", "Karin Kuruma T/A Mk.II"},
    {"sultanrs", "Karin Sultan RS"},
    {"lp700r", "Lamborghini Aventador LP700-4 Roadster"},
    {"tigon", "Lampadati Tigon"},
    {"typhoon", "Modena Typhoon"},
    {"penetrator", "Ocelot Penetrator"},
    {"xa21", "Ocelot XA-21"},
    {"autarch", "Overflod Autarch"},
    {"entity2", "Overflod Entity XXR"},
    {"entityxf", "Overflod Entity XF"},
    {"tyrant", "Overflod Tyrant"},
    {"zeno", "Overflod Zeno"},
    {"tezeract", "Pegassi Tezeract"},
    {"exoskeleton", "Pegassi Exoskeleton"},
    {"vacca", "Pegassi Vacca"},
    {"infernus", "Pegassi Infernus"},
    {"osiris", "Pegassi Osiris"},
    {"reaper", "Pegassi Reaper"},
    {"tempesta", "Pegassi Tempesta"},
    {"zentorno", "Pegassi Zentorno"},
    {"zorrusso", "Pegassi Zorrusso"},
    {"ignus", "Pegassi Ignus"},
    {"pfister811", "Pfister 811"},
    {"deveste", "Principe Deveste Eight"},
    {"italigtb2", "Progen Itali GTB Custom"},
    {"emerus", "Progen Emerus"},
    {"gp1", "Progen GP1"},
    {"italigtb", "Progen Itali GTB"},
    {"t20", "Progen T20"},
    {"tyrus", "Progen Tyrus"},
    {"nero2", "Truffade Nero Custom"},
    {"adder", "Truffade Adder"},
    {"nero", "Truffade Nero"},
    {"thrax", "Truffade Thrax"},
    {"sc1", "Ubermacht SC1"},
    {"bullet", "Vapid Bullet"},
    {"fmj", "Vapid FMJ"},
}

--[[ rts_ground CONFIG 6/7 (sh_vehicles_level_5.lua) ]]--
VEHICLES_LEVEL_5 = {
    {"thruster", "Mammoth Thruster Jetpack"},
    {"marauder", "Paramount Marauder"},
    {"snowmobile", "Nagasaki Snowmobile"},
    {"formula2", "Ocelot R88"},
    {"formula", "Progen PR4"},
    {"dragking", "Vapid Dragking"},
    {"rcbandito", "RC Bandito"},
    {"barrage", "HVY Barrage"},
    {"rallytruck", "MTL Dune"},
    -- {"deluxo", "Imponte Deluxo"},
    {"openwheel1", "Benefactor BR8"},
    {"voltic2", "Coil Rocket Voltic"},
    {"scramjet", "Declasse Scramjet"},
    {"openwheel2", "Declasse DR1"},
    {"remower", "Jacksheepe Lawn Mower RS"},
    {"journeys", "Zirconium Journey Tourer"},
    {"dan3", "Red Bull Racing RB13 (No. 3)"},
    {"f1", "Red Bull Racing RB14"},
    {"max33", "Red Bull Racing RB13 (No. 33)"},
    {"tmodel", "Tesla Model 3"},
    {"vigilante", "Grotti Vigilante"},
    {"ruiner2", "Imponte Ruiner 2000"},
    {"superkart", "Superkart"},
    {"pigth", "Lampadati Pigalle Camper"},
}

--[[ rts_ground CONFIG 7/7 (sh_destinations.lua) ]]--
DESTINATIONS_TRANSPORTER = {
    {name = "Paleto House 1", x = -16.658976, y = 6645.256348, z = 30.452795, h = 30.391140}, -- Rock (81915)
    {name = "Paleto Bank", x = -124.182297, y = 6479.642578, z = 30.804718, h = 316.940643}, -- Rock (81915)
    {name = "Paleto House 2", x = -359.419922, y = 6328.430664, z = 29.172012, h = 38.644413}, -- Rock (81915)
    {name = "Clucking Bell Factory", x = -120.024620, y = 6214.696777, z = 30.536522, h = 102.022308}, -- Rock (81915)
    {name = "Paleto Police Station", x = -458.532135, y = 6043.250977, z = 30.768812, h = 132.520630}, -- Rock (81915)
    {name = "Pala Springs Aerial Tramway", x = -775.140381, y = 5581.431641, z = 32.812355, h = 340.389679}, -- Rock (81915)
    {name = "Paleto Grain Farm", x = 424.719910, y = 6472.038574, z = 28.137552, h = 50.042046}, -- Rock (81915)
    {name = "McKenzie Airfield", x = 2128.055908, y = 4791.662598, z = 40.409218, h = 23.282433}, -- Rock (81915)
    {name = "R&#46;L&#46; Hunter &#38; Sons", x = 1960.378052, y = 4641.006836, z = 40.102283, h = 289.379272}, -- Rock (81915)
    {name = "Wonderama Arcade", x = 1711.396729, y = 4804.499512, z = 41.125660, h = 91.439850}, -- Rock (81915)
    {name = "Grapeseed LTD Gas Station", x = 1709.814453, y = 4942.929688, z = 41.489811, h = 237.482147}, -- Rock (81915)
    {name = "Grapeseed Warehouse", x = 1966.799194, y = 5174.718750, z = 47.138813, h = 157.747101}, -- Rock (81915)
    {name = "Lucky Jim&#39;s Ranch", x = 2237.997314, y = 5166.898438, z = 58.386250, h = 344.532074}, -- Rock (81915)
    {name = "Shady Tree Farm", x = 2552.539062, y = 4679.446289, z = 33.250557, h = 19.284193}, -- Rock (81915)
    {name = "H&#46;J&#46; Silos Galileo Park", x = 2901.032471, y = 4382.314941, z = 49.692543, h = 293.628845}, -- Rock (81915)
    {name = "UFO Cult", x = 2478.779785, y = 3821.892578, z = 39.714348, h = 103.081139}, -- Rock (81915)
    {name = "Sandy Shores Auto Shop", x = 1983.950439, y = 3777.854980, z = 31.519573, h = 214.508713}, -- Rock (81915)
    {name = "Sandy Shores Liquor Store", x = 1971.037598, y = 3838.372070, z = 31.333612, h = 298.929077}, -- Rock (81915)
    {name = "Sandy Shores Ammu&#45;Nation", x = 1707.469238, y = 3768.527100, z = 33.730507, h = 261.133545}, -- Rock (81915)
    {name = "The Boat House", x = 1536.302734, y = 3769.159180, z = 33.384155, h = 124.694290}, -- Rock (81915)
    {name = "Ace Liquor", x = 1378.684204, y = 3601.483887, z = 34.206673, h = 21.790804}, -- Rock (81915)
    {name = "Sandy Shores Airfield &#45; Entrance", x = 1771.936890, y = 3293.756104, z = 40.608707, h = 239.808380}, -- Rock (81915)
    {name = "Sandy Shores Airfield &#45; ATC", x = 1703.104980, y = 3274.249512, z = 40.608505, h = 219.106506}, -- Rock (81915)
    {name = "Sandy Shores Airfield &#45; Hangar", x = 1737.037598, y = 3288.803955, z = 40.558472, h = 14.827495}, -- Rock (81915)
    {name = "Senora National Park", x = 2039.459839, y = 3456.528564, z = 43.284832, h = 284.472229}, -- Rock (81915)
    {name = "Sandy Shores Recycling Center", x = 2046.460815, y = 3182.621582, z = 44.338394, h = 325.075287}, -- Rock (81915)
    {name = "Yellowjack", x = 2015.234497, y = 3062.255371, z = 46.384102, h = 54.296165}, -- Rock (81915)
    {name = "Sandy Shores Junkyard &#94;", x = 2375.207275, y = 3122.783447, z = 47.375488, h = 333.046204}, -- Rock (81915)
    {name = "Larry&#39;s RV Sales", x = 1212.685913, y = 2722.324463, z = 37.340702, h = 219.950058}, -- Rock (81915)
    {name = "Animal Ark", x = 561.690674, y = 2728.189697, z = 41.535965, h = 272.813538}, -- Rock (81915)
    {name = "Senora Road General Store &#38; Gas", x = 262.865692, y = 2612.336426, z = 44.187229, h = 280.842346}, -- Rock (81915)
    {name = "Filtering Plant", x = 191.570404, y = 2795.532959, z = 44.986431, h = 14.263515}, -- Rock (81915)
    {name = "Joshua Road", x = 176.691025, y = 3107.960205, z = 41.634937, h = 281.605194}, -- Rock (81915)
    {name = "Mofo&#39;s Chocolate Salty Balls", x = 328.958344, y = 3413.748291, z = 35.976219, h = 329.512756}, -- Rock (81915)
    {name = "Blaine County Tractor Parts", x = 394.723785, y = 3594.995117, z = 32.598221, h = 299.475586}, -- Rock (81915)
    {name = "Sunset Shores Trailer Park", x = 72.672401, y = 3632.649414, z = 39.040051, h = 194.208527}, -- Rock (81915)
    {name = "Ammunation &#40;Route 68&#41;", x = -1152.130859, y = 2660.794189, z = 17.428347, h = 226.611771}, -- Rock (81915)
    {name = "Marlowe Vineyard", x = -1890.188721, y = 2045.786743, z = 140.289108, h = 249.519882}, -- Rock (81915)
    {name = "Zancudo Gas Station", x = -2529.758545, y = 2342.650146, z = 32.394962, h = 148.342651}, -- Rock (81915)
    {name = "Fort Zancudo Hangar", x = -1813.062988, y = 2966.464844, z = 32.136482, h = 62.330238}, -- Rock (81915)
    {name = "Fort Zancudo Hangar", x = -1813.061768, y = 2966.464844, z = 32.137825, h = 62.330566}, -- Rock (81915)
    {name = "Fort Zancudo Hangar", x = -1813.061768, y = 2966.464844, z = 32.148365, h = 62.330009}, -- Rock (81915)
    {name = "Fort Zancudo Cargo Warehouse", x = -1756.509888, y = 3052.378418, z = 32.150776, h = 31.401428}, -- Rock (81915)
    {name = "Hookies Seafood Diner", x = -2201.446045, y = 4257.863770, z = 47.168465, h = 125.955338}, -- Rock (81915)
    {name = "Chumash House 1", x = -3171.151123, y = 1291.060425, z = 13.349769, h = 153.567444}, -- Rock (81915)
    {name = "Chumash House 2", x = -3218.164307, y = 1101.366943, z = 9.805596, h = 159.816788}, -- Rock (81915)
    {name = "Chumash House 3", x = -3211.227539, y = 915.600830, z = 13.514137, h = 242.254242}, -- Rock (81915)
    {name = "Chumash House 4", x = -3015.375244, y = 703.244324, z = 22.328672, h = 213.465775}, -- Rock (81915)
    {name = "Chumash House 5", x = -2985.570312, y = 607.488342, z = 19.103386, h = 9.618447}, -- Rock (81915)
    {name = "Hang Ten Surf Goods", x = -2968.669189, y = 421.187622, z = 14.540497, h = 236.255493}, -- Rock (81915)
    {name = "Pacific Bluffs Country Club", x = -3016.367432, y = 91.378761, z = 10.951543, h = 189.313507}, -- Rock (81915)
    {name = "Devin Weston Mansion", x = -2595.870361, y = 1930.402710, z = 166.705704, h = 93.847275}, -- Rock (81915)
    {name = "1015 North Rockford Drive", x = -1946.407593, y = 564.132690, z = 115.075470, h = 246.674927}, -- Rock (81915)
    {name = "1012 North Rockford Drive", x = -2002.093018, y = 482.278168, z = 104.646614, h = 85.442047}, -- Rock (81915)
    {name = "1011 North Rockford Drive", x = -1954.370605, y = 447.443481, z = 100.290298, h = 174.599731}, -- Rock (81915)
    {name = "6969 North Rockford Drive", x = -1954.424438, y = 213.278442, z = 85.363495, h = 25.327639}, -- Rock (81915)
    {name = "ULSA", x = -1607.287354, y = 174.527222, z = 58.891125, h = 25.972654}, -- Rock (81915)
    {name = "ULSA", x = -1607.287354, y = 174.527222, z = 58.891125, h = 25.972654}, -- Rock (81915)
    {name = "ULSA", x = -1607.287354, y = 174.527222, z = 58.891125, h = 25.972654}, -- Rock (81915)
    {name = "ULSA", x = -1607.287354, y = 174.527222, z = 58.891125, h = 25.972654}, -- Rock (81915)
    {name = "The Richman Hotel", x = -1293.348633, y = 283.779724, z = 64.133713, h = 235.421570}, -- Rock (81915)
    {name = "Los Santos Golf Club", x = -1381.120117, y = 56.072956, z = 53.144924, h = 0.912097}, -- Rock (81915)
    {name = "Richman Hills Mansion 1", x = -1461.099121, y = -27.850946, z = 54.001251, h = 232.424820}, -- Rock (81915)
    {name = "Richman Hills Mansion 2", x = -1579.756226, y = -59.525223, z = 55.827667, h = 88.468124}, -- Rock (81915)
    {name = "Richman Hills Mansion 3", x = -1572.646118, y = -81.375824, z = 53.511536, h = 278.406860}, -- Rock (81915)
    {name = "House &#45; Ace Jones Drive", x = -1509.576538, y = 430.198425, z = 110.359749, h = 221.927185}, -- Rock (81915)
    {name = "House &#45; Hangman Ave", x = -1360.467896, y = 553.680969, z = 128.806931, h = 239.416779}, -- Rock (81915)
    {name = "House &#45; North Sheldon Ave 1", x = -1245.897339, y = 663.856323, z = 141.854813, h = 34.830830}, -- Rock (81915)
    {name = "House &#45; North Sheldon Ave 2", x = -1119.947632, y = 786.456543, z = 162.045425, h = 32.637871}, -- Rock (81915)
    {name = "House &#45; Hillcrest Ave 1", x = -1025.367432, y = 695.807129, z = 160.765259, h = 316.345154}, -- Rock (81915)
    {name = "House &#45; Hillcrest Ave 2", x = -762.950806, y = 667.941711, z = 143.185638, h = 269.125549}, -- Rock (81915)
    {name = "House &#45; Normandy Drive 1", x = -592.258728, y = 753.101196, z = 183.137604, h = 76.064774}, -- Rock (81915)
    {name = "House &#45; Normandy Drive 2", x = -747.893677, y = 819.784302, z = 212.684143, h = 7.179268}, -- Rock (81915)
    {name = "Galileo Observatory", x = -411.402679, y = 1174.181152, z = 324.975616, h = 256.258331}, -- Rock (81915)
    {name = "Mansion &#45; Lake Vinewood Est 1", x = -123.198112, y = 994.105408, z = 235.093842, h = 164.568604}, -- Rock (81915)
    {name = "Mansion &#45; Lake Vinewood Est 2", x = -106.549187, y = 833.421570, z = 235.050354, h = 185.417664}, -- Rock (81915)
    {name = "House &#45; Milton Road 1", x = -487.922546, y = 743.405090, z = 162.472382, h = 234.503220}, -- Rock (81915)
    {name = "House &#45; Normandy Drive 3", x = -614.329895, y = 680.145691, z = 148.921799, h = 162.783035}, -- Rock (81915)
    {name = "House &#45; Kimble Hill Drive 1", x = -347.047546, y = 636.978577, z = 171.370285, h = 231.172607}, -- Rock (81915)
    {name = "House &#45; Kimble Hill Drive 2", x = -143.857635, y = 597.328186, z = 203.133133, h = 209.115753}, -- Rock (81915)
    {name = "House &#45; Lake Vinewood Drive", x = 215.980896, y = 758.510620, z = 204.126373, h = 225.112503}, -- Rock (81915)
    {name = "Franklin&#39;s Vinewood House", x = 14.410847, y = 549.274353, z = 175.612579, h = 177.187988}, -- Rock (81915)
    {name = "House &#45; Didion Road", x = -324.839417, y = 475.554779, z = 110.018623, h = 324.867004}, -- Rock (81915)
    {name = "House &#45; Wild Oats Drive", x = 111.520004, y = 490.438995, z = 146.456451, h = 291.301025}, -- Rock (81915)
    {name = "North Conker Ave", x = 354.082611, y = 437.942963, z = 145.869629, h = 119.714386}, -- Rock (81915)
    {name = "House &#45; Cox Way", x = -391.291992, y = 431.564606, z = 111.483833, h = 60.840931}, -- Rock (81915)
    {name = "House &#45; Milton Road 2", x = -577.456238, y = 404.477753, z = 99.954834, h = 198.907578}, -- Rock (81915)
    {name = "House &#45; Didion Drive", x = -401.614746, y = 344.449768, z = 108.006760, h = 4.136657}, -- Rock (81915)
    {name = "House &#45; South Mo Milton Drive", x = -915.896790, y = 582.672791, z = 99.612350, h = 325.478424}, -- Rock (81915)
    {name = "House &#45; Cockingend Drive", x = -1035.335815, y = 494.495789, z = 80.500671, h = 248.293060}, -- Rock (81915)
    {name = "Sisyphus Theater", x = 219.712067, y = 1250.230347, z = 224.798309, h = 195.568787}, -- Rock (81915)
    {name = "San Andreas Telecom Network", x = 806.350464, y = 1275.388794, z = 359.765198, h = 264.551697}, -- Rock (81915)
    {name = "Vinewood Bowl", x = 687.390808, y = 612.473145, z = 128.337814, h = 340.796326}, -- Rock (81915)
    {name = "Vinewood Hills Farm", x = 1391.525269, y = 1117.674683, z = 114.164497, h = 266.371490}, -- Rock (81915)
    {name = "Stoner Cement Works", x = 1213.441528, y = 1822.334717, z = 78.573471, h = 15.597610}, -- Rock (81915)
    {name = "Baytree Canyon Farm", x = 812.993774, y = 2192.582520, z = 51.712025, h = 193.572418}, -- Rock (81915)
    {name = "Rebel Radio", x = 745.380066, y = 2534.104736, z = 72.721848, h = 184.150864}, -- Rock (81915)
    {name = "Diamond Casino &#38; Resort", x = 917.708191, y = 51.240826, z = 80.460938, h = 328.559906}, -- Rock (81915)
    {name = "PIGS HQ", x = 962.991882, y = -134.521912, z = 73.933151, h = 324.675781}, -- Rock (81915)
    {name = "Department of Water and Power", x = 748.539124, y = 129.029892, z = 78.589783, h = 61.700161}, -- Rock (81915)
    {name = "Conglomerated National Television", x = 778.541748, y = 222.247711, z = 84.824738, h = 58.228939}, -- Rock (81915)
    {name = "The Oriental", x = 297.094635, y = 174.799500, z = 103.589333, h = 71.622826}, -- Rock (81915)
    {name = "Gentry Manor", x = -72.305817, y = 356.753754, z = 112.002037, h = 65.215347}, -- Rock (81915)
    {name = "Vinewood Hills Hotel", x = -311.595184, y = 227.883911, z = 87.417305, h = 287.822052}, -- Rock (81915)
    {name = "Eclipse Towers", x = -796.141846, y = 324.359375, z = 85.259544, h = 359.976837}, -- Rock (81915)
    {name = "Mansion &#45; Steele Way", x = -953.265930, y = 187.299179, z = 66.152458, h = 261.013031}, -- Rock (81915)
    {name = "Mansion &#45; Spanish Ave", x = -919.249451, y = 106.248901, z = 54.879822, h = 221.733643}, -- Rock (81915)
    {name = "Caesars Place", x = -875.268494, y = -24.027988, z = 41.399906, h = 343.388367}, -- Rock (81915)
    {name = "The Epsilon Headquarters", x = -695.696350, y = 40.197784, z = 42.766514, h = 295.875824}, -- Rock (81915)
    {name = "Michael&#39;s Mansion", x = -848.598572, y = 158.082870, z = 65.539124, h = 283.714386}, -- Rock (81915)
    {name = "1043 Spanish Avenue", x = -346.006439, y = 112.682365, z = 66.203018, h = 176.849106}, -- Rock (81915)
    {name = "GO Postal", x = 59.014713, y = 99.846779, z = 78.537140, h = 340.506195}, -- Rock (81915)
    {name = "Alta Street", x = 237.645218, y = 25.158596, z = 83.165619, h = 162.194519}, -- Rock (81915)
    {name = "Parking Garage &#45; Meteor Street", x = 480.211792, y = -55.316765, z = 77.492958, h = 246.080261}, -- Rock (81915)
    {name = "RTS HQ", x = -104.557304, y = -609.148682, z = 35.634521, h = 159.480270}, -- Rock (81915)
    {name = "Larss &#38; Elbo", x = 102.643105, y = -148.982529, z = 54.277260, h = 343.230835}, -- Rock (81915)
    {name = "Skate Park &#45; Hawick", x = 291.933990, y = -197.055634, z = 61.083443, h = 46.804672}, -- Rock (81915)
    {name = "Hawick Shopping Plaza", x = 220.997833, y = -36.125107, z = 69.192856, h = 163.275177}, -- Rock (81915)
    {name = "Auto&#45;Exotic Auto Shop", x = 533.690735, y = -178.158875, z = 53.950920, h = 88.993362}, -- Rock (81915)
    {name = "El Cafe Rojo De Madera", x = 401.974762, y = -381.174744, z = 46.306606, h = 110.046860}, -- Rock (81915)
    {name = "Alta City Hall", x = 160.503479, y = -440.916443, z = 40.508511, h = 340.980042}, -- Rock (81915)
    {name = "Rockford Plaza Parking Garage", x = -160.815735, y = -164.826752, z = 43.135952, h = 336.110992}, -- Rock (81915)
    {name = "Eclipse Lodge Apartments", x = -269.269226, y = 26.212500, z = 54.268948, h = 343.676788}, -- Rock (81915)
    {name = "Los Santos Customs &#45; Burton", x = -370.663605, y = -108.865967, z = 38.196114, h = 251.142883}, -- Rock (81915)
    {name = "Burton City Hall", x = -508.792297, y = -261.431885, z = 34.999973, h = 111.791321}, -- Rock (81915)
    {name = "Mount Zonah Medical Center", x = -471.662109, y = -328.189606, z = 33.881535, h = 172.587936}, -- Rock (81915)
    {name = "Vangelico Jewelry Store", x = -637.948486, y = -242.960266, z = 37.634163, h = 215.975327}, -- Rock (81915)
    {name = "Croq&#45;A&#45;Hoop", x = -734.181152, y = -138.335800, z = 36.733891, h = 27.057055}, -- Rock (81915)
    {name = "Rockford Hills Parking", x = -921.832214, y = -180.377121, z = 36.908989, h = 58.388798}, -- Rock (81915)
    {name = "Mors Mutual Insurance", x = -845.216003, y = -281.172241, z = 38.948689, h = 235.679581}, -- Rock (81915)
    {name = "Richards Majestic", x = -874.142456, y = -367.554504, z = 37.098129, h = 23.821274}, -- Rock (81915)
    {name = "Weazel Plaza", x = -826.838135, y = -439.387848, z = 36.155815, h = 242.247498}, -- Rock (81915)
    {name = "Richards Majestic Studios", x = -1082.011841, y = -429.600403, z = 36.058788, h = 25.514194}, -- Rock (81915)
    {name = "The Archipelago Hotel", x = -1088.941772, y = -311.178986, z = 37.185169, h = 115.387939}, -- Rock (81915)
    {name = "Lifeinvader", x = -1064.161255, y = -229.536926, z = 37.712769, h = 240.754639}, -- Rock (81915)
    {name = "Von Crastenburg Hotel &#38; Resort", x = -1217.617432, y = -188.690063, z = 38.689240, h = 334.505554}, -- Rock (81915)
    {name = "Elgin House Hotel", x = -1270.926880, y = -418.630554, z = 33.785042, h = 211.235641}, -- Rock (81915)
    {name = "Del Perro City Hall", x = -1274.550171, y = -558.504456, z = 29.570074, h = 220.716873}, -- Rock (81915)
    {name = "Tivoli Cinema", x = -1408.589233, y = -198.498016, z = 46.584934, h = 217.788849}, -- Rock (81915)
    {name = "Richman Mansion &#45; REPEAT&#63;&#33;", x = -1465.772705, y = -22.311115, z = 54.162769, h = 45.489429}, -- Rock (81915)
    {name = "Playboy Mansion", x = -1524.904663, y = 95.768074, z = 56.143890, h = 48.827381}, -- Rock (81915)
    {name = "K&#46;O&#46;R&#46;T&#46;Z&#46; Building", x = -2319.327637, y = 285.701508, z = 168.983170, h = 27.680704}, -- Rock (81915)
    {name = "Hill Valley Church", x = -1681.500244, y = -305.837402, z = 51.327873, h = 54.335789}, -- Rock (81915)
    {name = "Von Crastenburg Hotel", x = -1863.906494, y = -355.001587, z = 48.730583, h = 50.108559}, -- Rock (81915)
    {name = "Banner Hotel &#38; Spa", x = -1670.548828, y = -542.175110, z = 34.655987, h = 234.955872}, -- Rock (81915)
    {name = "Lombank", x = -1612.695679, y = -602.497009, z = 31.855013, h = 231.023590}, -- Rock (81915)
    {name = "Perrera Beach Motel", x = -1502.460327, y = -684.560181, z = 27.216112, h = 231.160583}, -- Rock (81915)
    {name = "Del Perro Pier", x = -1590.966187, y = -1048.555908, z = 12.533701, h = 226.670227}, -- Rock (81915)
    {name = "Del Perro Plaza", x = -1401.844482, y = -768.362183, z = 20.784910, h = 52.256329}, -- Rock (81915)
    {name = "Crown Jewels Motel", x = -1317.340454, y = -923.022827, z = 10.717360, h = 108.949188}, -- Rock (81915)
    {name = "Seagrass Herbals", x = -1389.589478, y = -944.942993, z = 9.677341, h = 212.778381}, -- Rock (81915)
    {name = "The Venetian Resort", x = -1316.337402, y = -1004.730042, z = 7.164559, h = 297.740234}, -- Rock (81915)
    {name = "Vespucci Shopping Plaza", x = -1282.620239, y = -1153.335449, z = 5.327507, h = 184.136826}, -- Rock (81915)
    {name = "Vespucci Canals Apartments", x = -1153.585571, y = -1236.286011, z = 6.270104, h = 200.566498}, -- Rock (81915)
    {name = "Vespucci Flea Market", x = -1205.575073, y = -1441.573608, z = 3.921726, h = 121.845490}, -- Rock (81915)
    {name = "Floyd&#39;s Apartment", x = -1159.322754, y = -1512.116333, z = 3.835536, h = 127.122627}, -- Rock (81915)
    {name = "La Puerto Apartments", x = -1103.093262, y = -1509.295410, z = 4.181002, h = 124.987961}, -- Rock (81915)
    {name = "Mr&#46; Spoke Bike Rental", x = -1086.730713, y = -1708.282471, z = 3.823615, h = 119.378723}, -- Rock (81915)
    {name = "La Puerta Block Apartments", x = -949.793518, y = -1536.416504, z = 4.580775, h = 292.113037}, -- Rock (81915)
    {name = "KOI Retreat and Spa", x = -1043.489136, y = -1464.255615, z = 4.519498, h = 128.924255}, -- Rock (81915)
    {name = "La Spada &#45; Italian&#45;style Seafood Restaurant", x = -1057.806641, y = -1401.519409, z = 4.938739, h = 74.238548}, -- Rock (81915)
    {name = "Puerto Del Sol Yacht Club", x = -928.489685, y = -1284.073608, z = 4.546102, h = 299.052856}, -- Rock (81915)
    {name = "Vespucci Canals Apartments 1", x = -1044.097046, y = -1142.792603, z = 1.619174, h = 115.631821}, -- Rock (81915)
    {name = "Vespucci Canals Apartments 2", x = -1029.329102, y = -1010.784180, z = 1.617160, h = 300.255005}, -- Rock (81915)
    {name = "Vespucci Canals Police Station", x = -1064.500122, y = -866.063416, z = 4.417097, h = 175.630219}, -- Rock (81915)
    {name = "Little Seoul Skate Park", x = -871.960754, y = -817.879028, z = 18.874115, h = 45.838840}, -- Rock (81915)
    {name = "Little Seoul Cathedral", x = -749.699402, y = -707.714783, z = 29.017145, h = 359.913208}, -- Rock (81915)
    {name = "Little Seoul Theater", x = -555.223572, y = -648.845154, z = 32.634918, h = 270.220551}, -- Rock (81915)
    {name = "Weazel News Headquarters", x = -619.652649, y = -924.507324, z = 22.511868, h = 357.759705}, -- Rock (81915)
    {name = "Little Seoul Shopping Plaza", x = -586.098755, y = -1110.614868, z = 21.689312, h = 2.705273}, -- Rock (81915)
    {name = "S&#46;Ho Korean Noodle House", x = -640.842285, y = -1259.881836, z = 10.381957, h = 75.931412}, -- Rock (81915)
    {name = "Puerto Del Sol", x = -792.788879, y = -1284.019653, z = 4.515585, h = 76.197754}, -- Rock (81915)
    {name = "Higgins Heli Tours", x = -691.655029, y = -1420.461670, z = 4.516623, h = 228.187881}, -- Rock (81915)
    {name = "Mirror Park Construction Site", x = 1373.489990, y = -739.075500, z = 66.746231, h = 257.211090}, -- Rock (81915)
    {name = "Chico&#39;s Hypermarket", x = 1086.740112, y = -763.943176, z = 57.181938, h = 91.904243}, -- Rock (81915)
    {name = "Mirror Park Entrance", x = 1172.556152, y = -640.689697, z = 61.998577, h = 188.823746}, -- Rock (81915)
    {name = "Mirror Park Shopping Plaza", x = 1154.996948, y = -478.222015, z = 65.666130, h = 257.429932}, -- Rock (81915)
    {name = "Horny&#39;s Burgers", x = 1268.712769, y = -366.343201, z = 68.562119, h = 339.532654}, -- Rock (81915)
    {name = "House &#45; Mirror Park", x = 1274.391235, y = -454.465363, z = 68.726288, h = 88.219131}, -- Rock (81915)
    {name = "House &#45; Mirror Park", x = 1004.403015, y = -517.004944, z = 60.208584, h = 27.388292}, -- Rock (81915)
    {name = "East Vinewood Sports Park", x = 713.295227, y = -288.759094, z = 58.466305, h = 256.161957}, -- Rock (81915)
    {name = "Casey&#39;s Diner", x = 784.725342, y = -733.660767, z = 27.208361, h = 143.857224}, -- Rock (81915)
    {name = "Videogeddon Arcade", x = 766.171631, y = -816.047607, z = 25.697823, h = 172.396240}, -- Rock (81915)
    {name = "Lester&#39;s Textile Factory", x = 712.236511, y = -985.827026, z = 23.636806, h = 92.774368}, -- Rock (81915)
    {name = "Los Santos Customs &#45; La Mesa", x = 708.036987, y = -1071.540649, z = 21.893902, h = 180.919861}, -- Rock (81915)
    {name = "La Mesa Workshop", x = 859.448853, y = -1065.369995, z = 27.984516, h = 186.637848}, -- Rock (81915)
    {name = "La Mesa Skate Park", x = 724.232971, y = -1195.476929, z = 23.791031, h = 89.432335}, -- Rock (81915)
    {name = "CoCo HQ", x = 808.303894, y = -1289.983521, z = 25.742855, h = 180.890793}, -- Rock (81915)
    {name = "The Secure Unit", x = 860.527771, y = -1230.004272, z = 25.808973, h = 230.300400}, -- Rock (81915)
    {name = "Los Santos Bag Company", x = 762.597534, y = -1410.592407, z = 26.036463, h = 81.649254}, -- Rock (81915)
    {name = "Breakfast 24HR Taqueria", x = 984.821411, y = -1415.793823, z = 30.757889, h = 91.954826}, -- Rock (81915)
    {name = "Fridgit Cold Storage Units", x = 970.940857, y = -1620.805176, z = 29.624428, h = 180.671951}, -- Rock (81915)
    {name = "St&#46; Fiacre Hospital", x = 1165.986206, y = -1506.245483, z = 34.208065, h = 262.410767}, -- Rock (81915)
    {name = "L&#46;T&#46; Weld Supply Company", x = 1211.171265, y = -1228.296387, z = 34.809425, h = 90.771461}, -- Rock (81915)
    {name = "Murietta Heights Dam", x = 1205.885376, y = -1074.227539, z = 39.945156, h = 49.500851}, -- Rock (81915)
    {name = "Meth lab maybe idk", x = 1373.364502, y = -1524.251343, z = 56.409840, h = 198.017776}, -- Rock (81915)
    {name = "Def meth labs", x = 1156.895142, y = -1659.081299, z = 36.112411, h = 26.985481}, -- Rock (81915)
    {name = "Lester&#39;s House", x = 1279.457153, y = -1732.914795, z = 51.996723, h = 289.230225}, -- Rock (81915)
    {name = "Oil Derricks Office", x = 1358.447021, y = -1859.140259, z = 56.186607, h = 8.465988}, -- Rock (81915)
    {name = "Water Tower &#45; La Mesa", x = 1074.148071, y = -1818.085449, z = 36.820587, h = 108.003174}, -- Rock (81915)
    {name = "Autoshop &#45; La Mesa", x = 977.783081, y = -1819.067139, z = 30.683237, h = 84.423431}, -- Rock (81915)
    {name = "Los Santos Foundry", x = 1078.271484, y = -1967.095215, z = 30.530190, h = 53.179665}, -- Rock (81915)
    {name = "Cypress Warehouses", x = 792.968933, y = -2475.192139, z = 20.520588, h = 277.601929}, -- Rock (81915)
    {name = "Alpha Mail Couriers", x = 1206.190552, y = -3222.103271, z = 5.314378, h = 264.779114}, -- Rock (81915)
    {name = "Bilgeco Shipping Services", x = 809.247498, y = -3200.403564, z = 5.414141, h = 180.556046}, -- Rock (81915)
    {name = "Shipping Container 1 &#45; Docks", x = 987.843323, y = -3089.393066, z = 5.414588, h = 268.545654}, -- Rock (81915)
    {name = "Shipping Container 2 &#45; Docks", x = 1067.678467, y = -2982.195801, z = 5.412729, h = 2.422136}, -- Rock (81915)
    {name = "Shipping Container 2 &#45; Docks", x = 1067.678467, y = -2982.195801, z = 5.412729, h = 2.422136}, -- Rock (81915)
    {name = "Shipping Container 2 &#45; Docks", x = 1067.678467, y = -2982.195801, z = 5.412729, h = 2.422136}, -- Rock (81915)
    {name = "Shipping Container 3 &#45; Docks", x = 892.535156, y = -3086.689209, z = 5.415883, h = 267.908112}, -- Rock (81915)
    {name = "Jetsam Terminal", x = 768.229370, y = -2966.462646, z = 5.313955, h = 0.177636}, -- Rock (81915)
    {name = "Los Santos Naval Port", x = 513.265320, y = -3037.018311, z = 5.681504, h = 268.469116}, -- Rock (81915)
    {name = "The Sea Urchin", x = 524.920898, y = -2934.617676, z = 5.559353, h = 270.154755}, -- Rock (81915)
    {name = "Jetsam Terminal Cargo Office", x = -39.612419, y = -2523.108887, z = 5.525208, h = 326.841187}, -- Rock (81915)
    {name = "Docks &#45; Shipping Container 1", x = 79.020439, y = -2484.512207, z = 5.523068, h = 233.464554}, -- Rock (81915)
    {name = "Docks &#45; Shipping Container 2", x = -90.559837, y = -2503.274658, z = 5.526280, h = 53.388424}, -- Rock (81915)
    {name = "Docks &#45; Trailers", x = -164.187759, y = -2409.355957, z = 5.513998, h = 181.975433}, -- Rock (81915)
    {name = "Docks &#45; Shipping Container 1", x = -164.187759, y = -2409.355957, z = 5.513998, h = 181.975433}, -- Rock (81915)
    {name = "Docks &#45; Shipping Container 1", x = -164.187759, y = -2409.355957, z = 5.513998, h = 181.975433}, -- Rock (81915)
    {name = "Docks &#45; Shipping Container 1", x = -164.187759, y = -2409.355957, z = 5.513998, h = 181.975433}, -- Rock (81915)
    {name = "Pier 400", x = -120.756721, y = -2658.810791, z = 5.522106, h = 177.014786}, -- Rock (81915)
    {name = "Pacific Bait", x = 102.092010, y = -2651.324219, z = 5.521354, h = 339.693817}, -- Rock (81915)
    {name = "Los Santos Marine", x = -324.695984, y = -2615.558594, z = 5.515080, h = 136.534698}, -- Rock (81915)
    {name = "Octopus", x = -406.411926, y = -2642.316650, z = 5.513123, h = 136.329758}, -- Rock (81915)
    {name = "PostOP Cargo Shipping", x = -505.145752, y = -2834.445312, z = 5.515854, h = 314.086426}, -- Rock (81915)
    {name = "MILK STORAGE &#59;&#41;", x = 304.773682, y = -2759.725830, z = 5.503662, h = 140.079468}, -- Rock (81915)
    {name = "Bugstars Pest Control", x = 140.069839, y = -3089.343018, z = 5.412037, h = 90.236061}, -- Rock (81915)
    {name = "Walker Logistics", x = 137.553452, y = -3210.954102, z = 5.373482, h = 129.269791}, -- Rock (81915)
    {name = "El Burro Heights Power Plant", x = 1133.698242, y = -2516.620850, z = 32.670650, h = 287.295593}, -- Rock (81915)
    {name = "El Burro Heights Scrapyard", x = 1563.881104, y = -2139.564209, z = 77.127960, h = 279.512115}, -- Rock (81915)
    {name = "Collins Petrochemical Corporation", x = 1727.669067, y = -1571.191650, z = 112.133949, h = 9.148426}, -- Rock (81915)
    {name = "Union Depository", x = -2.439560, y = -671.327454, z = 31.846157, h = 17.030756}, -- Rock (81915)
    {name = "FIB Building", x = 58.290836, y = -741.841858, z = 43.619701, h = 336.091858}, -- Rock (81915)
    {name = "IAA Building", x = 92.059441, y = -649.287292, z = 43.629978, h = 338.794037}, -- Rock (81915)
    {name = "Legion Square", x = 228.983551, y = -855.196838, z = 29.412214, h = 253.596710}, -- Rock (81915)
    {name = "First Responders&#44; LLC &#45; Medical Center", x = 364.791626, y = -612.470642, z = 28.303698, h = 24.265266}, -- Rock (81915)
    {name = "Dashound Bus Station", x = 424.267090, y = -643.888733, z = 28.016983, h = 0.077812}, -- Rock (81915)
    {name = "Simmet Alley Textiles", x = 454.698517, y = -684.727600, z = 27.479548, h = 266.519623}, -- Rock (81915)
    {name = "Mirror Park Railyard", x = 504.019714, y = -580.428650, z = 24.267281, h = 20.861345}, -- Rock (81915)
    {name = "Textile City Food Market", x = 401.787811, y = -805.551697, z = 28.691580, h = 358.605774}, -- Rock (81915)
    {name = "Ten Cent Theater", x = 402.431244, y = -712.171692, z = 28.745327, h = 1.226312}, -- Rock (81915)
    {name = "Robert Dazzler International Jewelry Exchange", x = 292.009552, y = -880.981445, z = 28.645184, h = 166.584244}, -- Rock (81915)
    {name = "Jewelry Road", x = 359.914215, y = -958.718201, z = 28.827360, h = 264.986389}, -- Rock (81915)
    {name = "Misson Row Parking Garage", x = 471.882782, y = -1102.996704, z = 28.716284, h = 91.415390}, -- Rock (81915)
    {name = "Get Aweigh Boat Shop", x = 389.079895, y = -1155.010742, z = 28.803949, h = 102.212135}, -- Rock (81915)
    {name = "Wolfs International Realty", x = 116.912514, y = -1081.861084, z = 28.712685, h = 315.212555}, -- Rock (81915)
    {name = "Caesars Auto Parking", x = 116.309013, y = -1054.334229, z = 28.709831, h = 155.037872}, -- Rock (81915)
    {name = "Los Santos Gun Club", x = 3.394995, y = -1099.375000, z = 37.665661, h = 159.111176}, -- Rock (81915)
    {name = "Premium Deluxe Motorsport", x = -51.412323, y = -1116.669312, z = 25.950764, h = 92.326462}, -- Rock (81915)
    {name = "Premium Deluxe Motorsport", x = -44.385426, y = -1096.987915, z = 25.934671, h = 121.734451}, -- Rock (81915)
    {name = "3 Alta Street", x = -275.178711, y = -997.684814, z = 24.890812, h = 70.637489}, -- Rock (81915)
    {name = "Banner Hotel", x = -273.241608, y = -1056.666870, z = 25.976868, h = 157.691589}, -- Rock (81915)
    {name = "Vapid Dealership", x = -228.944901, y = -1173.189453, z = 22.383797, h = 225.058502}, -- Rock (81915)
    {name = "Benny&#39;s Original Motorworks", x = -206.206848, y = -1322.351929, z = 30.407354, h = 176.182388}, -- Rock (81915)
    {name = "Strawberry Self Storage", x = -91.831657, y = -1212.836670, z = 27.458433, h = 356.473358}, -- Rock (81915)
    {name = "Complete Auto Repair", x = -70.893135, y = -1340.998413, z = 28.773849, h = 34.980549}, -- Rock (81915)
    {name = "Hands On Car Wash", x = -16.737421, y = -1400.151733, z = 28.855648, h = 264.423859}, -- Rock (81915)
    {name = "Vanilla Unicorn", x = 143.086975, y = -1312.737915, z = 28.508421, h = 232.742188}, -- Rock (81915)
    {name = "Ring of Fire Chili House", x = 161.717056, y = -1456.938721, z = 28.657532, h = 230.430450}, -- Rock (81915)
    {name = "Lucky Plucker", x = 128.329025, y = -1476.784790, z = 28.657856, h = 321.259613}, -- Rock (81915)
    {name = "Franklin&#39;s Aunt&#39;s House", x = -25.006527, y = -1444.197754, z = 30.166418, h = 0.621778}, -- Rock (81915)
    {name = "Chamberlain Hills Apartments", x = -101.782005, y = -1460.209839, z = 32.794521, h = 51.075916}, -- Rock (81915)
    {name = "Chamberlain Hills Shopping Plaza", x = -174.108688, y = -1435.024658, z = 30.787653, h = 344.277832}, -- Rock (81915)
    {name = "B&#46;J&#46; Smith Recreation Center and Park", x = -225.400284, y = -1482.164185, z = 30.852722, h = 48.234978}, -- Rock (81915)
    {name = "Chamberlain Hills Apartments", x = -148.783585, y = -1647.627930, z = 32.179817, h = 324.391418}, -- Rock (81915)
    {name = "Davis Mega Mall", x = 26.660351, y = -1722.010742, z = 28.818750, h = 270.697113}, -- Rock (81915)
    {name = "Aw shit&#44; here we go again", x = 96.145050, y = -1944.606567, z = 20.219864, h = 225.257095}, -- Rock (81915)
    {name = "Davis Warehouse", x = -55.769802, y = -1834.342285, z = 26.150850, h = 328.383514}, -- Rock (81915)
    {name = "Hayes Auto Body Shop", x = 257.839935, y = -1828.830933, z = 26.235046, h = 52.694309}, -- Rock (81915)
    {name = "Davis City Hall", x = 277.646942, y = -1553.163940, z = 28.550360, h = 301.385834}, -- Rock (81915)
    {name = "Central Los Santos Medical Center", x = 295.930573, y = -1439.927124, z = 29.317106, h = 229.960831}, -- Rock (81915)
    {name = "The Beacon Theater", x = 458.710754, y = -1448.404175, z = 28.752024, h = 282.138214}, -- Rock (81915)
    {name = "Hayes Autos", x = 478.407257, y = -1314.992310, z = 28.715282, h = 72.750282}, -- Rock (81915)
    {name = "HitMen", x = 502.288086, y = -1540.197021, z = 28.692413, h = 140.663101}, -- Rock (81915)
    {name = "Bilingsgate Motel", x = 566.062622, y = -1764.469482, z = 28.677845, h = 136.027847}, -- Rock (81915)
    {name = "Rancho Textiles Factory", x = 491.664368, y = -1972.443481, z = 24.364552, h = 302.970123}, -- Rock (81915)
    {name = "Maze Bank Arena", x = -226.364990, y = -2046.324463, z = 27.135679, h = 145.875305}, -- Rock (81915)
    {name = "Scrapyard &#45; La Puerta", x = -456.560547, y = -1715.099609, z = 18.158243, h = 31.099236}, -- Rock (81915)
    {name = "Rogers Salvage Scrap", x = -632.132629, y = -1657.776245, z = 25.339746, h = 157.973083}, -- Rock (81915)
    {name = "Los Santos Customs &#45; LSIA", x = -1132.735962, y = -1992.464355, z = 12.686344, h = 219.254364}, -- Rock (81915)
    {name = "Xero Gas", x = -1054.637817, y = -2028.398438, z = 12.668511, h = 130.566238}, -- Rock (81915)
    {name = "Von Crastenburg &#45; LSIA", x = -884.807068, y = -2104.822754, z = 8.375044, h = 302.861511}, -- Rock (81915)
    {name = "Big House Storage", x = -500.128662, y = -2195.348145, z = 6.092803, h = 138.152161}, -- Rock (81915)
    {name = "Elysian Island Auto Repair", x = -442.810394, y = -2178.563477, z = 9.836493, h = 157.086182}, -- Rock (81915)
    {name = "Opium Nights Hotel", x = -691.253540, y = -2288.657471, z = 12.503626, h = 135.741165}, -- Rock (81915)
    {name = "Opium Nights Hotel &#45; Main", x = -755.208801, y = -2295.731934, z = 12.366141, h = 42.742760}, -- Rock (81915)
    {name = "Bilgeco Shipping Services &#45; LSIA", x = -1084.734009, y = -2168.051758, z = 12.784145, h = 159.432770}, -- Rock (81915)
    {name = "Opium Nights Hotel &#45; Rear", x = -889.892761, y = -2190.299805, z = 8.041796, h = 228.087357}, -- Rock (81915)
    {name = "Alpha Mail Couriers", x = -692.163635, y = -2458.900879, z = 13.356704, h = 330.461853}, -- Rock (81915)
    {name = "Jetsam Couriers Storage &#45; LSIA", x = -743.274658, y = -2588.815186, z = 13.344603, h = 148.693344}, -- Rock (81915)
    {name = "Parking Garage 2 &#45; LSIA", x = -934.235413, y = -2646.211426, z = 13.655129, h = 61.112656}, -- Rock (81915)
    {name = "Parking Garage 1 &#45; LSIA", x = -1014.668701, y = -2599.488281, z = 38.619526, h = 330.901855}, -- Rock (81915)
    {name = "LSIA Main Terminal &#45; Lower", x = -1033.800049, y = -2722.542725, z = 13.211953, h = 239.216888}, -- Rock (81915)
    {name = "LSIA Main Terminal &#45; Upper", x = -1032.132202, y = -2729.921875, z = 19.642763, h = 62.612041}, -- Rock (81915)
    {name = "Devin Weston Hangar", x = -959.687256, y = -2933.997559, z = 13.460995, h = 330.346985}, -- Rock (81915)
    {name = "LSIA Pegasus Hangar", x = -1388.615845, y = -3257.277588, z = 13.460336, h = 58.811089}, -- Rock (81915)
    {name = "IA HQ", x = -1536.301270, y = -3192.816162, z = 13.460332, h = 277.508087}, -- Rock (81915)
    {name = "Go Postal &#45; LSIA", x = -1229.647461, y = -2408.247803, z = 13.460760, h = 331.577362}, -- Rock (81915)
    {name = "Fire Department &#45; LSIA", x = -1078.699707, y = -2383.138672, z = 13.460404, h = 242.892181}, -- Rock (81915)
    {name = "N&#46;O&#46;O&#46;S&#46;E &#45; LSIA HQ", x = -908.606140, y = -2399.889648, z = 13.455807, h = 332.319824}, -- Rock (81915)
    {name = "Bishop&#39;s Chicken", x = 2582.378906, y = 455.690216, z = 107.971405, h = 88.155251}, -- Rock (81915)
    {name = "Ammunation &#45; Tataviam Mountain", x = 2574.909912, y = 313.006165, z = 107.974342, h = 178.505447}, -- Rock (81915)
    {name = "Los Santos Government Facility", x = 2534.204590, y = -280.125153, z = 92.507584, h = 271.556396}, -- Rock (81915)
    {name = "Palmer Taylor Power Station", x = 2710.071289, y = 1384.622925, z = 24.024567, h = 268.423462}, -- Rock (81915)
    {name = "Palmer Taylor Power Station", x = 2710.071289, y = 1384.622925, z = 24.024567, h = 268.423462}, -- Rock (81915)
    {name = "Windmill Farm", x = 2481.445801, y = 1580.819702, z = 32.236008, h = 266.022766}, -- Rock (81915)
    {name = "Trailer Park", x = 2341.857422, y = 2534.376953, z = 46.128052, h = 69.328911}, -- Rock (81915)
    {name = "Rex&#39;s Diner", x = 2546.704834, y = 2618.228027, z = 37.460358, h = 286.894104}, -- Rock (81915)
    {name = "Northeast Race Track", x = 3613.142578, y = 5720.780762, z = 7.606206, h = 356.122040}, -- Rock (81915)
    {name = "Northeast Race Track", x = 3613.142578, y = 5720.780762, z = 7.606206, h = 356.122040}, -- Rock (81915)
    {name = "Northeast Race Track", x = 3613.142578, y = 5720.780762, z = 7.606206, h = 356.122040}, -- Rock (81915)
    {name = "Docks", x = 1204.333740, y = -3117.164551, z = 4.917446, h = 177.627823}, -- Donald (185932)
    {name = "Wax Haven", x = 139.653427, y = 317.765228, z = 111.515419, h = 293.911194}, -- Donald (185932)
    {name = "RTS HQ", x = -104.557304, y = -609.148682, z = 35.634521, h = 159.480270}, -- Rock (81915)
    {name = "RTS HQ", x = -104.557304, y = -609.148682, z = 35.634521, h = 159.480270}, -- Rock (81915)
    {name = "RTS HQ", x = -104.557304, y = -609.148682, z = 35.634521, h = 159.480270}, -- Rock (81915)
    {name = "RTS HQ", x = -104.557304, y = -609.148682, z = 35.634521, h = 159.480270}, -- Rock (81915)
    {name = "La Puerta Block Apartments", x = -949.793518, y = -1536.416504, z = 4.580775, h = 292.113037}, -- Rock (81915)
    {name = "La Puerta Block Apartments", x = -949.793518, y = -1536.416504, z = 4.580775, h = 292.113037}, -- Rock (81915)
    {name = "La Puerta Block Apartments", x = -949.793518, y = -1536.416504, z = 4.580775, h = 292.113037}, -- Rock (81915)
    {name = "La Puerta Block Apartments", x = -949.793518, y = -1536.416504, z = 4.580775, h = 292.113037}, -- Rock (81915)
    {name = "CoCo HQ", x = 808.303894, y = -1289.983521, z = 25.742855, h = 180.890793}, -- Rock (81915)
    {name = "CoCo HQ", x = 808.303894, y = -1289.983521, z = 25.742855, h = 180.890793}, -- Rock (81915)
    {name = "CoCo HQ", x = 808.303894, y = -1289.983521, z = 25.742855, h = 180.890793}, -- Rock (81915)
    {name = "CoCo HQ", x = 808.303894, y = -1289.983521, z = 25.742855, h = 180.890793}, -- Rock (81915)
    {name = "LSIA Main Terminal &#45; Lower", x = -1033.800049, y = -2722.542725, z = 13.211953, h = 239.216888}, -- Rock (81915)
    {name = "LSIA Main Terminal &#45; Lower", x = -1033.800049, y = -2722.542725, z = 13.211953, h = 239.216888}, -- Rock (81915)
    {name = "LSIA Main Terminal &#45; Lower", x = -1033.800049, y = -2722.542725, z = 13.211953, h = 239.216888}, -- Rock (81915)
    {name = "LSIA Main Terminal &#45; Lower", x = -1033.800049, y = -2722.542725, z = 13.211953, h = 239.216888}, -- Rock (81915)
    {name = "Devin Weston Mansion ", x = -2595.870361, y = 1930.402710, z = 166.705704, h = 93.847275}, -- Rock (81915)
    {name = "Devin Weston Mansion ", x = -2595.870361, y = 1930.402710, z = 166.705704, h = 93.847275}, -- Rock (81915)
    {name = "Devin Weston Mansion ", x = -2595.870361, y = 1930.402710, z = 166.705704, h = 93.847275}, -- Rock (81915)
    {name = "Devin Weston Mansion ", x = -2595.870361, y = 1930.402710, z = 166.705704, h = 93.847275}, -- Rock (81915)
    {name = "Sandy Shores Airfield &#45; Entrance", x = 1771.936890, y = 3293.756104, z = 40.608707, h = 239.808380}, -- Rock (81915)
    {name = "Sandy Shores Airfield &#45; Entrance", x = 1771.936890, y = 3293.756104, z = 40.608707, h = 239.808380}, -- Rock (81915)
    {name = "Sandy Shores Airfield &#45; Entrance", x = 1771.936890, y = 3293.756104, z = 40.608707, h = 239.808380}, -- Rock (81915)
    {name = "Sandy Shores Airfield &#45; Entrance", x = 1771.936890, y = 3293.756104, z = 40.608707, h = 239.808380}, -- Rock (81915)
    {name = "Fort Zancudo Hangar", x = -1813.062988, y = 2966.464844, z = 32.136482, h = 62.330238}, -- Rock (81915)
    {name = "Filtering Plant", x = 191.570404, y = 2795.532959, z = 44.986431, h = 14.263515}, -- Rock (81915)
    {name = "Filtering Plant", x = 191.570404, y = 2795.532959, z = 44.986431, h = 14.263515}, -- Rock (81915)
    {name = "Filtering Plant", x = 191.570404, y = 2795.532959, z = 44.986431, h = 14.263515}, -- Rock (81915)
    {name = "McKenzie Airfield", x = 2128.055908, y = 4791.662598, z = 40.409218, h = 23.282433}, -- Rock (81915)
    {name = "McKenzie Airfield", x = 2128.055908, y = 4791.662598, z = 40.409218, h = 23.282433}, -- Rock (81915)
    {name = "McKenzie Airfield", x = 2128.055908, y = 4791.662598, z = 40.409218, h = 23.282433}, -- Rock (81915)
    {name = "McKenzie Airfield", x = 2128.055908, y = 4791.662598, z = 40.409218, h = 23.282433}, -- Rock (81915)
    {name = "McKenzie Airfield", x = 2128.055908, y = 4791.662598, z = 40.409218, h = 23.282433}, -- Rock (81915)
    {name = "Grapeseed Warehouse", x = 1966.799194, y = 5174.718750, z = 47.138813, h = 157.747101}, -- Rock (81915)
    {name = "Grapeseed Warehouse", x = 1966.799194, y = 5174.718750, z = 47.138813, h = 157.747101}, -- Rock (81915)
    {name = "Lucky Jim&#39;s Ranch", x = 2237.997314, y = 5166.898438, z = 58.386250, h = 344.532074}, -- Rock (81915)
    {name = "Shady Tree Farm", x = 2552.539062, y = 4679.446289, z = 33.250557, h = 19.284193}, -- Rock (81915)
    {name = "Grapeseed LTD Gas Station", x = 1709.814453, y = 4942.929688, z = 41.489811, h = 237.482147}, -- Rock (81915)
    {name = "Paleto Bay House 1", x = -16.658976, y = 6645.256348, z = 30.452795, h = 30.391140}, -- Rock (81915)
    {name = "Paleto Bay Bank", x = -124.182297, y = 6479.642578, z = 30.804718, h = 316.940643}, -- Rock (81915)
    {name = "Paleto Bay House 2", x = -359.419922, y = 6328.430664, z = 29.172012, h = 38.644413}, -- Rock (81915)
    {name = "Clucking Bell Factory", x = -120.024620, y = 6214.696777, z = 30.536522, h = 102.022308}, -- Rock (81915)
    {name = "Paleto Police Station", x = -458.532135, y = 6043.250977, z = 30.768812, h = 132.520630}, -- Rock (81915)
    {name = "Pala Springs Aerial Tramway", x = -775.140381, y = 5581.431641, z = 32.812355, h = 340.389679}, -- Rock (81915)
    {name = "Paleto Grain Farm", x = 424.719910, y = 6472.038574, z = 28.137552, h = 50.042046}, -- Rock (81915)
    {name = "Grapeseed LTD Gas Station", x = 1709.814453, y = 4942.929688, z = 41.489811, h = 237.482147}, -- Rock (81915)
    {name = "R&#46;L&#46; Hunter &#38; Sons", x = 1960.378052, y = 4641.006836, z = 40.102283, h = 289.379272}, -- Rock (81915)
    {name = "Paleto Bay Bank", x = -124.182297, y = 6479.642578, z = 30.804718, h = 316.940643}, -- Rock (81915)
    {name = "Paleto Bay Bank", x = -124.182297, y = 6479.642578, z = 30.804718, h = 316.940643}, -- Rock (81915)
    {name = "Paleto Bay Bank", x = -124.182297, y = 6479.642578, z = 30.804718, h = 316.940643}, -- Rock (81915)
    {name = "Paleto Bay Bank", x = -124.182297, y = 6479.642578, z = 30.804718, h = 316.940643}, -- Rock (81915)
    {name = "Paleto Bay Bank", x = -124.182297, y = 6479.642578, z = 30.804718, h = 316.940643}, -- Rock (81915)
    {name = "Paleto Bay House 2", x = -359.419922, y = 6328.430664, z = 29.172012, h = 38.644413}, -- Rock (81915)
    {name = "Clucking Bell Factory", x = -120.024620, y = 6214.696777, z = 30.536522, h = 102.022308}, -- Rock (81915)
    {name = "Paleto Bay House 1", x = -16.658976, y = 6645.256348, z = 30.452795, h = 30.391140}, -- Rock (81915)
    {name = "Humane Labs", x = 3633.923340, y = 3760.938477, z = 27.985001, h = 339.481750}, -- Rock (81915)
    {name = "Humane Labs", x = 3633.923340, y = 3760.938477, z = 27.985001, h = 339.481750}, -- Rock (81915)
    {name = "Bishop&#39;s Chicken", x = 2582.378906, y = 455.690216, z = 107.971405, h = 88.155251}, -- Rock (81915)
    {name = "Bishop&#39;s Chicken", x = 2582.378906, y = 455.690216, z = 107.971405, h = 88.155251}, -- Rock (81915)
    {name = "Bishop&#39;s Chicken", x = 2582.378906, y = 455.690216, z = 107.971405, h = 88.155251}, -- Rock (81915)
    {name = "Bishop&#39;s Chicken", x = 2582.378906, y = 455.690216, z = 107.971405, h = 88.155251}, -- Rock (81915)
    {name = "Davis Mega Mall", x = 26.660351, y = -1722.010742, z = 28.818750, h = 270.697113}, -- Rock (81915)
    {name = "Davis Mega Mall", x = 26.660351, y = -1722.010742, z = 28.818750, h = 270.697113}, -- Rock (81915)
    {name = "Davis Mega Mall", x = 26.660351, y = -1722.010742, z = 28.818750, h = 270.697113}, -- Rock (81915)
    {name = "Aw shit&#44; here we go again", x = 96.145050, y = -1944.606567, z = 20.219864, h = 225.257095}, -- Rock (81915)
    {name = "Aw shit&#44; here we go again", x = 96.145050, y = -1944.606567, z = 20.219864, h = 225.257095}, -- Rock (81915)
    {name = "Ammunation &#45; Tataviam Mountain", x = 2574.909912, y = 313.006165, z = 107.974342, h = 178.505447}, -- Rock (81915)
    {name = "House &#45; Milton Road 1", x = -487.922546, y = 743.405090, z = 162.472382, h = 234.503220}, -- Rock (81915)
    {name = "House &#45; Milton Road 1", x = -487.922546, y = 743.405090, z = 162.472382, h = 234.503220}, -- Rock (81915)
    {name = "House &#45; Milton Road 1", x = -487.922546, y = 743.405090, z = 162.472382, h = 234.503220}, -- Rock (81915)
    {name = "House &#45; Milton Road 1", x = -487.922546, y = 743.405090, z = 162.472382, h = 234.503220}, -- Rock (81915)
    {name = "Little Seoul Shopping Plaza", x = -767.312195, y = -587.069763, z = 29.594662, h = 356.125549}, -- Rock (81915)
    {name = "Vinewood Hills Farm", x = 1391.525269, y = 1117.674683, z = 114.164497, h = 266.371490}, -- Rock (81915)
    {name = "Vinewood Hills Farm", x = 1391.525269, y = 1117.674683, z = 114.164497, h = 266.371490}, -- Rock (81915)
    {name = "Vinewood Hills Farm", x = 1391.525269, y = 1117.674683, z = 114.164497, h = 266.371490}, -- Rock (81915)
    {name = "Vinewood Hills Farm", x = 1391.525269, y = 1117.674683, z = 114.164497, h = 266.371490}, -- Rock (81915)
}

DESTINATIONS_HEAVY = {
    {name = "Elysian Island Merriweather HQ", x = 503.82598876953, y = -3320.4506835938, z = 5.7209758758545},
    {name = "East LS Oil Fields", x = 1664.6431884766, y = -1618.2501220703, z = 111.98432922363},
    {name = "Northeast Bunker", x = 3385, y = 5510, z = 24},
    -- {name = "Altruist Camp", x = -1151, y = 4919, z = 220},
    {name = "Tequi-La-La", x = -559.12176513672, y = 301.93606567383, z = 83.183563232422},
    {name = "Vinewood Hills Amphitheatre", x = 681, y = 605, z = 128},
    {name = "Casino", x = 916, y = 51, z = 80},
    {name = "Mission Row Businesses", x = 333, y = -998, z = 28},
    {name = "Strawberry Garage", x = -222, y = -1163, z = 22},
    {name = "Los Santos Construction Site", x = -124.7509765625, y = -956.14074707031, z = 27.278512954712, h = 339.45358276367},
    {name = "SE Los Santos Factory", x = 552.09625244141, y = -1908.4852294922, z = 24.414386749268, h = 34.014999389648},
    {name = "Zancudo", x = -2407, y = 3284, z = 32},
    {name = "McKenzie Airfield", x = 2157, y = 4809, z = 41},
    {name = "Grapeseed Ranch 2", x = 2305.7043457031, y = 4893.0859375, z = 41.38684463501},
}

