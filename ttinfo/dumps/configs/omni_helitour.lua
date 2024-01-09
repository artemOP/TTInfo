--[[ omni_helitour CONFIG 1/1 (client/cfg_helitour.lua) ]]--
-- Job Start markers
job_starts = {
    {name = "Higgins Helitours North", x = -724.8, y = -1443.8, z = 4.0},
    {name = "Higgins Helitours South", x = -745.7, y = -1468.4, z = 4.0},
    {name = "LSIA Helipad 1", x = -1177.9, y = -2846.2, z = 12.9},
    {name = "LSIA Helipad 2", x = -1145.8, y = -2865.2, z = 12.9},
    {name = "SSIA Helipad 2", x = 1327.6007080078, y = 3729.9133300781, z = 33.099796295166},
    --{name = "LSIA Helipad 3", x = -1112.6, y = -2883.2, z = 12.9},   --interferes with fueling point
}

-- Locations
job_pickups = {
    -- Helipads
    -- Civilian
    {name = "Del Perro Clocktower", x = -1220.0, y = -831.8, z = 28.4, ped = "A_M_Y_GenStreet_01", tier = 1},
    {name = "Fridgit Co.", x = 910.2, y = -1681.3, z = 50.2, ped = "A_M_Y_GenStreet_01", tier = 1},
    {name = "Mission Row", x = 476.5, y = -1106.8, z = 42.1, ped = "A_M_Y_GenStreet_01", tier = 1},
    {name = "Weazel News HQ", x = -582.9, y = -930.9, z = 35.9, ped = "A_M_Y_GenStreet_01", tier = 1},
    -- Businesses
    {name = "Richards Majestic", x = -913.4, y = -378.4, z = 136.9, ped = "A_M_M_Business_01", tier = 1},
    {name = "Lombank West", x = -1582.2, y = -569.6, z = 115.3, ped = "A_M_M_Business_01", tier = 1},
    {name = "Maze Bank West", x = -1391.4, y = -477.8, z = 90.2, ped = "A_M_M_Business_01", tier = 1},
    {name = "Arcadius Business Center", x = -144.5, y = -593.4, z = 210.8, ped = "A_M_M_Business_01", tier = 1},
    {name = "Daily Globe International", x = -286.3, y = -618.1, z = 49.3, ped = "A_M_M_Business_01", tier = 1},
    {name = "Maze Bank", x = -75.1, y = -818.9, z = 325.2, ped = "A_M_M_Business_01", tier = 1},
    --Police Stations
    {name = "Davis Sherrif's Station", x = 362.6, y = -1597.9, z = 36.0, ped = "S_M_Y_Cop_01", tier = 1},
    {name = "L.S.P.D Vinewood", x = 579.8, y = 12.5, z = 102.3, ped = "S_M_Y_Cop_01", tier = 1},
    {name = "Paleto Bay Police Station", x = -474.9, y = 5988.8, z = 30.3, ped = "S_M_Y_Cop_01", tier = 2},
    {name = "Vespucci Police Dept.", x = -1095.3, y = -834.8, z = 36.8, ped = "S_M_Y_Cop_01", tier = 1},
    {name = "L.S.P.D Mission Row Helipad 1", x = 481.5, y = -982.2, z = 40.1, ped = "S_M_Y_Cop_01", tier = 2},
    {name = "L.S.P.D Mission Row Helipad 2", x = 448.9, y = -981.2, z = 42.7, ped = "S_M_Y_Cop_01", tier = 1},
    -- NOOSE
    {name = "N.O.O.S.E Helipad 1", x = 2511.2, y = -426.5, z = 117.2, ped = "S_M_Y_Swat_01", tier = 5},
    {name = "N.O.O.S.E Helipad 2", x = 2510.5, y = -342.3, z = 117.2, ped = "S_M_Y_Swat_01", tier = 5},
    -- -- Hospitals
    {name = "Central L.S. Medical Center Helipad 1", x = 313.6, y = -1465.3, z = 45.5, ped = "S_M_M_Paramedic_01", tier = 1},
    {name = "Central L.S. Medical Center Helipad 2", x = 299.8, y = -1453.7, z = 45.5, ped = "S_M_M_Paramedic_01", tier = 2},
    {name = "Pillbox Hill Hospital", x = 351.7, y = -588.7, z = 73.2, ped = "S_M_M_Paramedic_01", tier = 1},
    -- Military
    {name = "Zancudo Helipad 1", x = -1877.2, y = 2805.1, z = 31.8, ped = "S_M_Y_MARINE_01", tier = 4},
    {name = "Zancudo Helipad 2", x = -1859.2, y = 2795.3, z = 31.8, ped = "S_M_Y_MARINE_01", tier = 4},
    --{name = "Merryweather Port", x = 478.5, y = -3369.8, z = 5.1},

    -- Non helipads
    {name = "Sandy Shores Airfield", x = 1770.4, y = 3239.4, z = 41.1, tier = 2},
    {name = "S.S.I.A Helipad", x = 1327.6007080078, y = 3729.9133300781, z = 33.099796295166, tier = 2},
    {name = "McKenzie Field Import/Export", x = 2139.4, y = 4812.8, z = 40.2, tier = 2},
    {name = "Humane Labs and Research", x = 3459.6, y = 3688.4, z = 31.7, tier = 3},
    {name = "Elysian Island", x = 351.4, y = -2533.3, z = 4.7, tier = 2},
    {name = "IAA Building", x = 143.9, y = -627.6, z = 261.8, ped = "S_M_M_CIASec_01", tier = 4},
    --{name = "FIB Building", x = 122.8, y = -743.4, z = 261.9, ped = "S_M_M_CIASec_01", tier = 4},
    {name = "Catfish View", x = 3805.1, y = 4462.1, z = 3.7, ped = "A_M_Y_Hiker_01", tier = 2},
    {name = "El Gordo Lighthouse", x = 3293.8, y = 5052.3, z = 22.0, ped = "A_M_Y_Hiker_01", tier = 2},
    {name = "Paleto Bay Peninsula", x = 42.610763549805, y = 7224.5546875, z = 2.4788966178894, ped = "A_M_Y_Hiker_01", tier = 2}, -- old x = 58.2, y = 7213.6, z = 3.0
    {name = "Little Seoul Tram Station", x = -554.4, y = -1351.1, z = 23.6, tier = 2},
    --{name = "Mt. Chiliad Summit", x = 490.6, y = 5588.9, z = 793.6, ped = "A_M_Y_Hiker_01", tier = 2}, -- Thanks to 2D for the idea!!! boom boom
    -- {name = "Davis Quartz Quarry", x = 2942.3, y = 2798.4, z = 40.5, tier = 5},
    {name = "Xero Gas", x = -1014.6, y = -1927.8, z = 18.8, tier = 5},
    --{name = "Banning Gas Company", x = -417.4, y = -2212.1, z = 26.8, tier = 3},
    {name = "Richman College Track and Field", x = -1738.5, y = 161.1, z = 63.4, tier = 7},
    {name = "Pacific Ocean Oil Rig", x = -4192.619140625, y = 8881.58203125, z = 26.050168228149, tier = 7},
    {name = "Pacific Ocean Aircraft Carrier", x = 2979.3703613281, y = -4828.302734375, z = 5.6465091705322, tier = 7},

    -- Add-on airports
    {name = "Chumash Island Airport", x = -5039.033203125, y = 563.71240234375, z = 11.99999332428, tier = 4},
    {name = "Mt. Gordo Airport", x = 2711.3208007813, y = 6797.9462890625, z = 21.018817901611, tier = 4},
    {name = "Paleto Bay Airport", x = -116.80883789063, y = 6710.638671875, z = 10.766061782837, tier = 4},
    {name = "Francis Intl. Airport", x = -4639.4951171875, y = 6390.6357421875, z = 14.644358634949, tier = 4},
    {name = "San Chianski Airport", x = 5835.6083984375, y = 3452.8796386719, z = 11.99999332428, tier = 4},
    {name = "Staunton Island Stadium", x = -3102.1809082031, y = 7204.5063476563, z = 19.37509727478, tier = 4},
}

-- Tour hover zones
job_hovers = {
    {name = "Raton Canyon", x = -1491.5603027344, y = 4381.5698242188, z = 110.7995223999, tier = 3},
    {name = "Raton Canyon", x = -417.35836791992, y = 4397.4150390625, z = 126.37799835205, tier = 3},
    {name = "Stab City", x = 62.872905731201, y = 3705.1418457031, z = 60.271305084229, tier = 3},
    {name = "Davis Quartz", x = 2956.4152832031, y = 2798.5808105469, z = 84.687255859375, tier = 3},
    {name = "Redwood Lights Track", x = 1038.0483398438, y = 2372.9936523438, z = 103.85173797607, tier = 3},
    {name = "Mirror Park", x = 1075.677734375, y = -642.70556640625, z = 109.86923980713, tier = 3},
    {name = "Tataviam Mountains", x = 1719.4968261719, y = -549.74438476563, z = 185.83595275879, tier = 3},
    {name = "Palmer-Taylor Power Station", x = 3129.0705566406, y = 1511.3723144531, z = 50.621120452881, tier = 3, blurbs = {}},
    {name = "Pacific Ocean Cave", x = 3080.6545410156, y = 2086.3330078125, z = 18.370042800903, tier = 3, blurbs = {}},
    {name = "San Chianski Mountain Range", x = 3341.6774902344, y = 3184.48828125, z = 251.02294921875, tier = 3, blurbs = {}},
    {name = "Humane Labs", x = 3621.5393066406, y = 3802.6564941406, z = 128.06851196289, tier = 3, blurbs = {}},
    {name = "El Gordo Lighthouse", x = 3356.3935546875, y = 5256.0693359375, z = 49.90552520752, tier = 3, blurbs = {}},
    {name = "Mount Gordo", x = 2874.7375488281, y = 6027.9819335938, z = 359.04754638672, tier = 3, blurbs = {}},
    {name = "Mount Chiliad", x = 489.77676391602, y = 5580.1391601563, z = 778.65405273438, tier = 3, size = 300.0, blurbs = {}},
    {name = "Chiliad Mill", x = -680.08483886719, y = 5338.7348632813, z = 158.44010925293, tier = 3, blurbs = {}},
    {name = "Mount Josiah", x = -1311.0050048828, y = 3801.1721191406, z = 507.380126953133, tier = 3, blurbs = {}},
    {name = "Zancudo River", x = -293.99926757813, y = 3033.1696777344, z = 72.798614501953, tier = 3, blurbs = {}},
    {name = "Tongva Hills", x = -1794.8099365234, y = 2215.0322265625, z = 180.89184570313, tier = 3, blurbs = {}},

    -- Helitour Hovers -- glitchdetector (3)
    {name = "Chiliad Mountain State Wilderness - Cassidy Trail", x = -1131.590698, y = 4676.735840, z = 211.599426, h = 229.402786}, -- glitchdetector (3)
    {name = "Mount Josiah - Calafia Rd", x = -499.232208, y = 3530.378174, z = 242.446625, h = 191.960648}, -- glitchdetector (3)
    {name = "Grand Senora Desert - Baytree Canyon Rd", x = -81.143394, y = 2305.929199, z = 150.436737, h = 341.957520}, -- glitchdetector (3)
    {name = "Vinewood Hills - Mt Vinewood Dr", x = -935.354004, y = 1371.625854, z = 297.108002, h = 129.713638}, -- glitchdetector (3)
    {name = "Banham Canyon - Banham Canyon Dr", x = -2356.126953, y = 1323.207764, z = 334.267334, h = 157.901062}, -- glitchdetector (3)
    {name = "Tongva Hills - Buen Vino Rd", x = -1744.343262, y = 1984.201538, z = 156.784271, h = 312.816589}, -- glitchdetector (3)
    {name = "Richman Glen - North Rockford Dr", x = -1900.058838, y = 708.375732, z = 160.546921, h = 164.967422}, -- glitchdetector (3)
    {name = "Palomino Highlands - El Burro Blvd", x = 1883.323120, y = -1863.637695, z = 194.334900, h = 3.561849}, -- glitchdetector (3)
    {name = "Palomino Highlands - El Burro Blvd", x = 2174.740723, y = -1067.986328, z = 176.050735, h = 334.918671}, -- glitchdetector (3)
    {name = "Pacific Ocean - Pacific Ocean Airport", x = 2741.320068, y = -1600.848389, z = 48.117222, h = 321.564880}, -- glitchdetector (3)
    {name = "Tataviam Mountains - Los Santos Freeway", x = 1965.945679, y = 570.851929, z = 226.067230, h = 55.339840}, -- glitchdetector (3)
    {name = "Vinewood Hills - North Conker Ave", x = 654.316040, y = 510.920380, z = 213.108994, h = 347.485657}, -- glitchdetector (3)
    {name = "Paleto Cove - Great Ocean Hwy", x = -2178.807373, y = 5184.770508, z = 37.906090, h = 312.804382}, -- glitchdetector (3)
    {name = "Paleto Cove - Great Ocean Hwy", x = -1582.885010, y = 5358.722168, z = 54.516453, h = 295.658539}, -- glitchdetector (3)
    {name = "Portland - Callahan Bridge", x = -1554.245239, y = 7107.992188, z = 63.911545, h = 132.398743}, -- glitchdetector (3)
    {name = "Staunton Island - Staunton Blv.", x = -3031.327881, y = 6551.108398, z = 50.714500, h = 359.595734}, -- glitchdetector (3)
    {name = "Vinewood Hills - Mt Haan Dr", x = 685.352905, y = 1074.405884, z = 376.695862, h = 341.094635}, -- glitchdetector (3)
    {name = "Vinewood Hills - Lake Vinewood Dr", x = 3.952424, y = 673.910461, z = 233.375763, h = 131.655624}, -- glitchdetector (3)
    {name = "Sandy Shores", x = 2422.9362792969, y = 3779.546875, z = 86.685623168945},
}

-- Vehicles plus tiers
job_vehicles = {
    {name = "BUZZARD2", tier = 1, min_dist = 500},
    {name = "FROGGER", tier = 2, min_dist = 550},
    {name = "FROGGER2", tier = 3, min_dist = 600},
    {name = "MAVERICK", tier = 4, min_dist = 650},
    {name = "SWIFT", tier = 5, min_dist = 700},
    {name = "SWIFT2", tier = 6, min_dist = 750},
    {name = "SUPERVOLITO", tier = 7, min_dist = 800},
    {name = "SUPERVOLITO2", tier = 8, min_dist = 850},
    {name = "TOURMAV", tier = 9, min_dist = 950},
    {name = "OSPREY", tier = 10, min_dist = 1000},
    {name = "AVENGER", tier = 11, min_dist = 1050},
    {name = "VOLATUS", tier = 11, min_dist = 1050},
}


