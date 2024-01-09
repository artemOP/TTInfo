--[[ omni_businesses CONFIG 1/1 (sh_businesses.lua) ]]--
BUSINESSES = {
    {
        name = "Jonny Tung",
        id = "biz_tung",
        cost = 25*10^6,
        reqlvl = {"@business.business.>61"},
        visuallvl = "62",
        position = {name = "Jonny Tung", x = -902.894836, y = -227.015121, z = 39.818169, h = 331.733337}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = -905.682617, y = -232.291809, z = 39.818180, h = 137.194992},
            {type = "garage", name = "Garage", x = -900.111206, y = -201.733612, z = 38.247940, h = 71.658554}, -- glitchdetector (3)
        },
    },
    {
        name = "KO RTZ",
        id = "biz_kortz",
        cost = 35*10^6,
        reqlvl = {"@business.business.>67"},
        visuallvl = "68",
        position = {name = "KO RTZ", x = -2286.076172, y = 354.228271, z = 174.601730, h = 204.291183}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = -2253.6479492188, y = 234.14573669434, z = 174.60688781738, h = 178.58203125},
            {type = "atm", name = "ATM", x = -2294.1076660156, y = 356.62368774414, z = 174.60159301758, h = 113.46423339844},
            {type = "spawn", tier = 2, name = "KO RTZ", x = -2273.8010253906, y = 326.85568237305, z = 174.60188293457, h = 294.74661254883},
            {type = "garage", name = "Garage", x = -2322.8994140625, y = 294.60205078125, z = 169.46705627441, h = 203.3572845459}, -- glitchdetector (3)
            {type = "helipad", name = "Helipad", x = -2193.2224121094, y = 204.94387817383, z = 194.60144042969, h = 26.13817024231}, -- glitchdetector (3)
        },
    },
    {
        name = "Fort Zancudo",
        id = "biz_zancudo",
        cost = 35*10^6,
        reqlvl = {"@business.business.>67"},
        visuallvl = "68",
        position = {name = "Fort Zancudo", x = -2435.660645, y = 3288.332520, z = 34.893108, h = 320.774597}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = -2410.542725, y = 3268.244629, z = 32.977753, h = 217.933258},
            {type = "jobcenter", name = "Job Center", x = -2348.3247070313, y = 3268.966796875, z = 32.81075668335, h = 23.382320404053},
            {type = "spawn", tier = 2, name = "Fort Zancudo", x = -2355.4631347656, y = 3249.2490234375, z = 101.45071411133, h = 236.48278808594},
            {type = "vehicle", name = "Lazer Spawner", vehicle = "LAZER", plate = "ZANMAJET", x = -2290.0092773438, y = 3183.3862304688, z = 32.809997558594, h = 237.90628051758},
            {type = "garage", name = "Garage", x = -2329.6457519531, y = 3342.6062011719, z = 32.832901000977, h = 143.8809967041}, -- glitchdetector (3)
            {type = "market", name = "Market", market = "General Store", x = -2282.1494140625, y = 3248.0676269531, z = 34.910537719727, h = 148.49826049805}, -- glitchdetector (3)
            {type = "chat", tier = 100, name = "Zancudo Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "Zancudo Icon", group = "chat.prefix.biz_zancudo"}, -- glitchdetector (3)
        },
    },
    {
        name = "Jetsam Paleto Bay",
        id = "biz_jetsam_pb",
        cost = 3.5*10^6,
        reqlvl = {"@business.business.>23"},
        visuallvl = "24",
        position = {name = "Jetsam Paleto Bay", x = -249.036179, y = 6160.130371, z = 31.505112, h = 119.687325}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = -275.364197, y = 6146.388672, z = 31.518791, h = 69.519981},
            {type = "garage", name = "Garage", x = -256.989532, y = 6140.452148, z = 31.256048, h = 133.286194}, -- glitchdetector (3)
            {type = "spawn", tier = 2, name = "Jetsam Paleto Bay", x = -245.36122131348, y = 6155.986328125, z = 31.413055419922, h = 286.85388183594}, -- glitchdetector (3)
        },
    },
    {
        name = "Union Grain Inc Grapeseed",
        id = "biz_uginc_gs",
        cost = 4.5*10^6,
        reqlvl = {"@business.business.>28"},
        visuallvl = "29",
        position = {name = "Union Grain Inc Grapeseed", x = 2016.427612, y = 4987.384766, z = 42.098263, h = 309.796021}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = 2030.423706, y = 4980.169922, z = 42.098289, h = 129.227173},
            {type = "garage", name = "Garage", x = 2018.731201, y = 4977.042969, z = 41.232029, h = 228.677032}, -- glitchdetector (3)
            {type = "spawn", tier = 2, name = "Union Grain Inc Grapeseed", x = 2008.4189453125, y = 4986.8974609375, z = 41.299877166748, h = 228.82843017578}, -- glitchdetector (3)
            {type = "chat", tier = 100, name = "Union Grain Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "Union Grain Icon", group = "chat.prefix.biz_uginc_gs"}, -- glitchdetector (3)
        },
    },
    {
        name = "Harmony Gas Station",
        id = "biz_gas_harmony",
        cost = 2.5*10^6,
        reqlvl = {"@business.business.>19"},
        visuallvl = "20",
        position = {name = "Harmony Gas Station", x = 1039.297607, y = 2664.792725, z = 39.551064, h = 186.639130}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = 1048.512695, y = 2652.438477, z = 39.551098, h = 8.995404},
            {type = "garage", name = "(actual garage)", x = 1026.557007, y = 2659.007568, z = 39.551113, h = 172.896744}, -- glitchdetector (3)
        },
    },
    {
        name = "Sisyphus Theater",
        id = "biz_sisyphus",
        cost = 5*10^6,
        reqlvl = {"@business.business.>31"},
        visuallvl = "32",
        position = {name = "Sisyphus Theatre", x = 225.960815, y = 1171.997070, z = 225.550034, h = 80.265289}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = 217.670364, y = 1192.190430, z = 225.594696, h = 104.392563},
            {type = "garage", name = "Garage", x = 241.178223, y = 1154.804688, z = 225.460007, h = 188.894913}, -- glitchdetector (3)
        },
    },
    {
        name = "Bristols Storage",
        id = "biz_merryweather",
        cost = 17.5*10^6,
        reqlvl = {"@business.business.>55"},
        visuallvl = "56",
        position = {name = "Merryweather Port", x = 448.08303833008, y = -2761.4575195313, z = 7.1031231880188, h = 173.207230}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = 556.72247314453, y = -2716.5305175781, z = 7.1123142242432, h = 87.856361},
            {type = "garage", name = "Garage", x = 586.31188964844, y = -2816.7937011719, z = 6.0556945800781, h = 354.747833}, -- glitchdetector (3)
            {type = "helipad", name = "Garage", x = 541.71917724609, y = -2840.1064453125, z = 6.0453672409058, h = 260.20361328125}, -- glitchdetector (3)
            {type = "marina", name = "Garage", x = 546.54815673828, y = -2886.9399414063, z = 0.55597174167633, h = 177.82246398926}, -- glitchdetector (3)
        },
    },
    {
        name = "Alphamail Couriers LSIA",
        id = "biz_alphamail_lsia",
        cost = 6*10^6,
        reqlvl = {"@business.business.>34"},
        visuallvl = "35",
        position = {name = "Alphamail Couriers LSIA", x = -742.542419, y = -2486.499023, z = 15.522549, h = 237.228561}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = -710.611755, y = -2527.533936, z = 13.944402, h = 39.859001},
            {type = "garage", name = "Garage", x = -693.272156, y = -2472.235840, z = 13.828461, h = 305.080719}, -- glitchdetector (3)
        },
    },
    {
        name = "Venetian",
        id = "biz_venetian",
        cost = 7.5*10^6,
        reqlvl = {"@business.business.>37"},
        visuallvl = "38",
        position = {name = "Venetian", x = -1362.374268, y = -1078.276855, z = 3.604913, h = 296.208160}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = -1325.057495, y = -1026.905884, z = 7.745650, h = 300.566162},
            {type = "garage", name = "Garage", x = -1327.796509, y = -1008.937927, z = 7.657144, h = 121.039688}, -- glitchdetector (3)
        },
    },
    {
        name = "Davis Quartz Quarry",
        id = "biz_quarry",
        cost = 18*10^6,
        reqlvl = {"@business.business.>57"},
        visuallvl = "58",
        position = {name = "Davis Quartz Quarry", x = 2569.720947, y = 2719.580322, z = 42.894650, h = 28.396019}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = 2830.898682, y = 2799.941406, z = 57.535835, h = 271.382172},
            {type = "jobcenter", name = "Job Center", x = 2663.4077148438, y = 2891.9985351563, z = 36.861583709717, h = 18.775999069214},
            {type = "garage", name = "Garage", x = 2558.691895, y = 2741.412842, z = 42.711212, h = 293.194214}, -- glitchdetector (3)
        },
    },
    {
        name = "Catfish View",
        id = "biz_catfish",
        cost = 4*10^6,
        reqlvl = {"@business.business.>26"},
        visuallvl = "27",
        position = {name = "Catfish View", x = 3807.947510, y = 4478.325195, z = 6.365398, h = 25.853491}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = 3818.485840, y = 4442.225098, z = 2.811247, h = 90.468796},
            {type = "garage", name = "Garage", x = 3787.235352, y = 4463.950195, z = 5.927025, h = 83.322021}, -- glitchdetector (3)
            {type = "chat", tier = 100, name = "Catfish Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "Catfish Icon", group = "chat.prefix.biz_catfish"}, -- glitchdetector (3)
        },
    },
    {
        name = "Medical Center Parking Garage",
        id = "biz_hospital_parking_strawberry",
        cost = 6*10^6,
        reqlvl = {"@business.business.>34"},
        visuallvl = "35",
        position = {name = "Medical Center Parking Garage", x = 407.020325, y = -1347.439453, z = 41.053566, h = 140.181442}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = 407.043976, y = -1347.062744, z = 31.053698, h = 146.199310},
            {type = "garage", name = "Actual Garage", x = 425.320679, y = -1286.293213, z = 30.248810, h = 64.224564}, -- glitchdetector (3)
        },
    },
    {
        name = "Maze Bank Arena",
        id = "biz_mazebank_arena",
        cost = 8*10^6,
        reqlvl = {"@business.business.>39"},
        visuallvl = "40",
        position = {name = "Maze Bank Arena", x = -253.743683, y = -1992.382690, z = 30.145952, h = 349.734161}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = -245.629089, y = -2009.842896, z = 24.685692, h = 161.249603},
            {type = "garage", name = "Garage", x = -215.409607, y = -2060.311768, z = 27.620415, h = 232.188568}, -- glitchdetector (3)
        },
    },
    {
        name = "LT Weld Supply Co",
        id = "biz_ltweld",
        cost = 37*10^6,
        reqlvl = {"@business.business.>69"},
        visuallvl = "70",
        position = {name = "LT Weld Supply Co", x = 1165.875854, y = -1347.488647, z = 35.739605, h = 86.833298}, -- glitchdetector (3)
        special = {
            {type = "spawn", tier = 2, name = "LT Weld Supply Co", x = 1161.2993164062, y = -1313.4520263672, z = 34.74271774292, h = 177.64245605469},
            {type = "jobcenter", name = "Job Center", x = 1145.940063, y = -1403.583374, z = 34.805027, h = 83.470665},
            {type = "special", name = "Location", x = 1127.341796875, y = -1404.7739257813, z = 34.549327850342, h = 87.447807312012},
            {type = "garage", name = "Garage", x = 1151.427490, y = -1326.743408, z = 34.690792, h = 84.063354}, -- glitchdetector (3)
            {type = "repair", name = "Repair", x = 1189.666015625, y = -1394.9415283203, z = 35.113430023193, h = 174.77655029297}, -- glitchdetector (3)
            {type = "self_storage", name = "LT Weld Supply Co", x = 1175.7137451172, y = -1316.5482177734, z = 34.798126220703, h = 174.53958129883, fee = 0, size = 50000, permissions = {}, area = "1"}, -- glitchdetector (3)
        },
    },
    {
        name = "4 Integrity Way",
        id = "biz_integrity",
        cost = 0.3*10^6,
        reqlvl = {"@business.business.>6"},
        visuallvl = "7",
        position = {name = "Pillbox Hill Apartments", x = -14.722967, y = -612.844543, z = 35.861488, h = 65.343918}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = -37.817242, y = -614.784912, z = 35.112984, h = 64.945610}, -- glitchdetector (3),
            {type = "garage", name = "Garage", x = -12.911951, y = -631.864563, z = 35.724201, h = 269.145844}, -- glitchdetector (3)
        },
    },
    {
        name = "Lârss & Elbö",
        id = "biz_elboo",
        cost = 1.5*10^6,
        reqlvl = {"@business.business.>17"},
        visuallvl = "18",
        position = {name = "Lârss & Elbö", x = 109.517204, y = -153.314957, z = 54.770302, h = 29.112928}, -- glitchdetector (3)
        special = {
            {type = "garage", name = "Garage", x = 106.003174, y = -134.262878, z = 54.747799, h = 343.970947}, -- glitchdetector (3)
            {type = "special", name = "Location", x = 125.923721, y = -125.999405, z = 54.834618, h = 73.245033}, -- glitchdetector (3)
        },
    },
    {
        name = "Bishops Chicken",
        id = "biz_bishops_chicken",
        cost = 1.5*10^6,
        reqlvl = {"@business.business.>17"},
        visuallvl = "18",
        position = {name = "Bishops Chicken", x = 2581.094971, y = 463.547485, z = 108.607735, h = 3.425383}, -- glitchdetector (3)
        special = {
            {type = "garage", name = "Garage", x = 2579.044922, y = 445.989349, z = 108.455704, h = 275.246094}, -- glitchdetector (3)
            {type = "special", name = "Location", x = 2590.941895, y = 483.934906, z = 108.676399, h = 117.825127}, -- glitchdetector (3)
        },
    },
    {
        name = "Millars Boat Shop",
        id = "biz_millars",
        cost = 12.5*10^6,
        reqlvl = {"@business.business.>48"},
        visuallvl = "49",
        position = {name = "Millars Boat Shop", x = 1310.075317, y = 4361.746094, z = 41.314323, h = 79.378807}, -- glitchdetector (3)
        special = {
            {type = "garage", name = "Garage", x = 1311.698120, y = 4325.804199, z = 38.116539, h = 130.771423}, -- glitchdetector (3)
            {type = "marina", name = "Marina", x = 1300.7429199219, y = 4223.8203125, z = 33.908641815186, h = 178.01054382324, spawnPos = {x = 1258.0555419922, y = 4222.8662109375, z = 33.482830047607, h = 167.52336120605}}, -- glitchdetector (3)
            {type = "special", name = "Location", x = 1334.756714, y = 4306.681152, z = 38.084881, h = 357.985840}, -- glitchdetector (3)
            {type = "boatshop", name = "Boat Shop", outside = {x = 1320.4479980469, y = 4314.7358398438, z = 38.142887115479, h = 259.10403442383}, inside = {x = 1326.5261230469, y = 4249.3979492188, z = 30.933372497559, h = 191.37142944336}}, -- glitchdetector (3)
        },
    },
    {
        name = "Rebel Radio",
        id = "biz_rebel",
        cost = 9*10^6,
        reqlvl = {"@business.business.>42"},
        visuallvl = "43",
        position = {name = "Rebel Radio", x = 733.491028, y = 2523.361328, z = 73.223778, h = 88.752457}, -- glitchdetector (3)
        special = {
            {type = "garage", name = "Garage", x = 746.726196, y = 2522.248047, z = 73.186623, h = 0.344389}, -- glitchdetector (3)
            {type = "special", name = "Location", x = 739.997925, y = 2577.856934, z = 75.415062, h = 24.015219}, -- glitchdetector (3)
        },
    },
    {
        name = "Jetsam Terminal",
        id = "biz_jetsam_ls",
        cost = 3*10^6,
        reqlvl = {"@business.business.>23"},
        visuallvl = "24",
        position = {name = "Jetsam Terminal", x = 813.867249, y = -2982.500000, z = 6.020937, h = 93.817680}, -- glitchdetector (3)
        special = {
            {type = "garage", name = "Garage", x = 807.230286, y = -3034.975586, z = 5.742127, h = 27.457205}, -- glitchdetector (3)
            {type = "special", name = "Location", x = 805.218750, y = -2949.115967, z = 6.020655, h = 198.357697}, -- glitchdetector (3)
        },
    },
    {
        name = "Los Santos International Airport",
        id = "biz_lsia",
        cost = 125*10^6,
        reqlvl = {"@business.business.>86"},
        visuallvl = "87",
        position = {name = "Los Santos International Airport", x = -1045.683472, y = -2750.869873, z = 21.363428, h = 150.896927}, -- glitchdetector (3)
        special = {
            {type = "garage", name = "Garage", x = -1032.416504, y = -2726.411621, z = 20.202898, h = 234.933395}, -- glitchdetector (3)
            {type = "special", name = "Location", x = -966.20050048828, y = -2609.45703125, z = 13.981004714966, h = 148.454987}, -- glitchdetector (3)
            {type = "marketplace", name = "L.S.I.A. Marketplace", x = -1009.7116088867, y = -2850.1669921875, z = 13.94952583313, h = 54.407833099365}, -- glitchdetector (3)
            {type = "atm", name = "ATM", x = -1009.793030, y = -2745.704590, z = 13.758937, h = 148.297592}, -- glitchdetector (3)
            {type = "spawn", tier = 2, name = "L.S.I.A.", x = -1037.7359619141, y = -2738.0634765625, z = 20.169271469116, h = 322.95446777344}, -- glitchdetector (3)
            {type = "self_storage", name = "L.S.I.A.", x = -1205.3310546875, y = -2630.728515625, z = 13.944932937622, h = 325.30377197266, fee = 0, size = 150000, permissions = {}, area = "plane"}, -- glitchdetector (3)
            {type = "self_storage", name = "L.S.I.A.", x = -1079.0277099609, y = -2865.3129882813, z = 13.950700759888, h = 326.36962890625, fee = 0, size = 150000, permissions = {}, area = "truck"}, -- glitchdetector (3)
            {type = "self_storage", name = "L.S.I.A.", x = -1380.2336425781, y = -3241.2841796875, z = 13.944814682007, h = 242.47793579102, fee = 0, size = 150000, permissions = {}, area = "plane2"}, -- glitchdetector (3)
            {type = "chat", tier = 100, name = "LSIA Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "LSIA Icon", group = "chat.prefix.biz_lsia"}, -- glitchdetector (3)
        },
    },
    {
        name = "Clucking Bell Co.",
        id = "biz_cluckingbell_co",
        cost = 11*10^6,
        reqlvl = {"@business.business.>46"},
        visuallvl = "47",
        position = {name = "Cluckin Bell Farms", x = -137.179993, y = 6199.277832, z = 32.381268, h = 220.684494}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = -122.364189, y = 6205.578613, z = 32.386753, h = 220.248123}, -- glitchdetector (3)
            {type = "garage", name = "Garage", x = -131.528809, y = 6221.184570, z = 31.201303, h = 177.020447}, -- glitchdetector (3)
            {type = "marketplace", name = "Clucking Bell Co. Marketplace", x = 77.00764465332, y = 6330.1640625, z = 31.225763320923, h = 19.598230361938}, -- glitchdetector (3)
            {type = "chat", tier = 100, name = "Cluckingbell Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "Cluckingbell Icon", group = "chat.prefix.biz_cluckingbell_co"}, -- glitchdetector (3)
        },
    },
    {
        name = "Sandy Shores Liquor",
        id = "biz_liquor_ss",
        cost = 0.25*10^6,
        reqlvl = {"@business.business.>4"},
        visuallvl = "5",
        position = {name = "Sandy Shores Liquor", x = 1952.636353, y = 3842.005371, z = 32.178314, h = 119.186943}, -- glitchdetector (3)
        special = {
            {type = "garage", name = "Garage", x = 1966.119507, y = 3847.662842, z = 31.996519, h = 27.844551}, -- glitchdetector (3)
            {type = "special", name = "Location", x = 1946.172852, y = 3848.775146, z = 32.169601, h = 159.006577}, -- glitchdetector (3)
            {type = "marketplace", name = "Sandy Shores Liquor Marketplace", x = 1964.1575927734, y = 3831.8950195313, z = 32.012573242188, h = 19.598230361938},
        },
    },
    {
        name = "You Tool Sandy Shores",
        id = "biz_youtool_ss",
        cost = 0.5*10^6,
        reqlvl = {"@business.business.>9"},
        visuallvl = "10",
        position = {name = "You Tool Sandy Shores", x = 2748.741943, y = 3472.372559, z = 55.677402, h = 67.460403}, -- glitchdetector (3)
        special = {
            {type = "garage", name = "Garage", x = 2777.550049, y = 3462.514648, z = 55.485081, h = 103.396164}, -- glitchdetector (3)
            {type = "special", name = "Location", x = 2684.907715, y = 3515.794678, z = 53.303848, h = 247.452454}, -- glitchdetector (3)
        },
    },
    {
        name = "Opium Nights Hotel",
        id = "biz_opium_hotel",
        cost = 17*10^6,
        reqlvl = {"@business.business.>53"},
        visuallvl = "54",
        position = {name = "Opium Nights Hotel", x = -702.941895, y = -2276.212646, z = 13.455383, h = 44.473534}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Location", x = -720.270813, y = -2235.061279, z = 7.234416, h = 176.770889}, -- glitchdetector (3)
            {type = "garage", name = "Garage", x = -748.083496, y = -2204.749756, z = 6.003607, h = 90.322311}, -- glitchdetector (3)
            {type = "spawn", tier = 2, name = "Opium Nights Hotel", x = -737.56066894531, y = -2276.6120605469, z = 13.437445640564, h = 134.3366394043}, -- glitchdetector (3)
        },
    },
    {
        name = "Korean Plaza",
        id = "biz_korean_plaza",
        cost = 0.75*10^6,
        reqlvl = {"@business.business.>12"},
        visuallvl = "13",
        position = {name = "Korean Plaza", x = -601.426819, y = -1135.726685, z = 22.324245, h = 268.430786}, -- glitchdetector (3)
        special = {
            {type = "garage", name = "Garage", x = -588.205322, y = -1127.000122, z = 22.178249, h = 179.269531}, -- glitchdetector (3)
            {type = "vehicle", name = "Mr Tasty", vehicle = "MRTASTY2", x = -566.88293457031, y = -982.41430664062, z = 22.119747161865, h = 0.0, engine = "mrtasty"},
            {type = "special", name = "Location", x = -606.245056, y = -1095.213135, z = 25.855106, h = 117.927704}, -- glitchdetector (3)
            {type = "market", name = "Market", x = -581.34875488281, y = -1020.3291015625, z = 22.329704284668, h = 83.893669128418}, -- glitchdetector (3)
            {type = "market", name = "Market", market = "Traffic Permits", x = -569.82836914063, y = -1046.4194335938, z = 22.329685211182, h = 266.53021240234}, -- glitchdetector (3)
        },
    },
    {
        name = "Los Santos Docks",
        id = "biz_docks_ls",
        cost = 1.5*10^6,
        reqlvl = {"@business.business.>17"},
        visuallvl = "18",
        position = {name = "Los Santos Docks", x = -52.509109, y = -2523.930176, z = 7.401169, h = 53.279678}, -- glitchdetector (3)
        special = {
            {type = "repair", name = "Repair", x = -56.987484, y = -2529.986816, z = 6.010001, h = 228.748993, cost = 0}, -- glitchdetector (3)
            {type = "garage", name = "Garage", x = -109.37397003174, y = -2535.4501953125, z = 5.9999966621399, h = 148.75277709961}, -- glitchdetector (3)
            {type = "special", name = "Location", x = -62.922676, y = -2509.439209, z = 11.344394, h = 233.855225}, -- glitchdetector (3)
            {type = "atm", name = "ATM", x = -48.097378, y = -2508.034668, z = 7.396175, h = 141.084473}, -- glitchdetector (3)
        },
    },
    {
        name = "Pala Springs Aerial Tramway",
        id = "biz_cablecar",
        cost = 0.25*10^6,
        reqlvl = {"@business.business.>4"},
        visuallvl = "5",
        position = {name = "Pala Springs Aerial Tramway", x = -754.82794189453, y = 5566.1762695313, z = 36.7096824646, h = 274.40832519531}, -- glitchdetector (3)
        special = {
            {type = "garage", name = "Garage", x = -773.02392578125, y = 5547.9541015625, z = 33.497329711914, h = 63.477397918701}, -- glitchdetector (3)
            {type = "special", name = "Location", x = -740.24694824219, y = 5571.8115234375, z = 36.709648132324, h = 87.674461364746}, -- glitchdetector (3)
            {type = "market", name = "Market", x = -754.77941894531, y = 5578.8168945313, z = 36.70964050293, h = 293.53768920898}, -- glitchdetector (3)
        },
    },
    {
        name = "The Diamond Casino & Resort",
        id = "biz_racetrack_vw",
        cost = 60*10^6,
        reqlvl = {"@business.business.>73"},
        visuallvl = "74",
        position = {name = "The Diamond Casino & Resort", x = 929.74407958984, y = 35.476051330566, z = 81.095764160156, h = 236.220352}, -- glitchdetector (3)
        special = {
            {type = "atm", name = "ATM", x = 1026.928345, y = 168.919769, z = 80.990486, h = 234.097809}, -- glitchdetector (3)
            {type = "garage", name = "Garage", x = 1098.511475, y = 258.143433, z = 80.855652, h = 91.325836}, -- glitchdetector (3)
            {type = "garage", name = "Garage", x = 917.85174560547, y = 51.243801116943, z = 80.89884185791, h = 91.325836}, -- glitchdetector (3)
            {type = "helipad", name = "Garage", x = 965.88708496094, y = 42.237075805664, z = 123.12673187256, h = 91.325836}, -- glitchdetector (3)
            {type = "market", name = "Market", x = 995.680847, y = 119.749214, z = 80.990875, h = 255.642212}, -- glitchdetector (3)
            {type = "special", name = "Location", x = 1000.631287, y = 101.659729, z = 80.990860, h = 247.590805}, -- glitchdetector (3)
            -- {type = "casino", name = "Casino", x = 934.30218505859, y = 46.038715362549, z = 81.095687866211, h = 329.700348}, -- glitchdetector (3)
            {type = "spawn", tier = 2, name = "Diamond Casino & Resort", x = 931.01214599609, y = 42.635684967041, z = 81.095680236816, h = 55.554145812988}, -- glitchdetector (3)
            {type = "vehicle", name = "Locust", vehicle = "locust", x = 934.55963134766, y = -1.6135108470917, z = 78.763954162598, h = 0.0}, -- glitchdetector (3)
            {type = "dealership", tier = 10, name = "The Diamond Casino & Resort", dealership = "Race Track Shop", x = 1136.3182373047, y = 58.378566741943, z = 80.755317687988, h = 0.0}, -- glitchdetector (3)
        },
    },
    {
        name = "Sandy Shores Airfield",
        id = "biz_airfield_ss",
        cost = 47*10^6,
        reqlvl = {"@business.business.>71"},
        visuallvl = "72",
        position = {name = "Sandy Shores Airfield", x = 1701.5467529297, y = 3290.9489746094, z = 48.921897888184, h = 212.20622253418}, -- glitchdetector (3)
        special = {
            {type = "hangar", name = "Hangar", x = 1730.8034667969, y = 3312.8254394531, z = 41.223518371582, h = 191.94409179688}, -- glitchdetector (3)
            {type = "garage", name = "Garage", x = 1787.25390625, y = 3303.3627929688, z = 41.573261260986, h = 138.53515625}, -- glitchdetector (3)
            {type = "spawn", tier = 2, name = "Sandy Shores Airfield", x = 1697.0987548828, y = 3291.197265625, z = 48.920478820801, h = 229.33622741699}, -- glitchdetector (3)
            {type = "market", name = "Market", x = 1776.8463134766, y = 3327.5766601563, z = 41.433288574219, h = 121.26036834717}, -- glitchdetector (3)
            {type = "special", name = "Location", x = 1758.7580566406, y = 3327.189453125, z = 41.352851867676, h = 287.45043945313}, -- glitchdetector (3)
            {type = "helipad", name = "Helipad", x = 1770.3217773438, y = 3239.7375488281, z = 42.128204345703, h = 9.7918891906738}, -- glitchdetector (3)
        },
    },
    {
        name = "Aircraft Carrier",
        id = "biz_carrier",
        cost = 65*10^6,
        reqlvl = {"@business.business.>76"},
        visuallvl = "77",
        position = {name = "Aircraft Carrier", x = 3084.3718261719, y = -4686.8374023438, z = 27.252155303955, h = 12.245030403137}, -- glitchdetector (3)
        special = {
            {type = "hangar", name = "Hangar", x = 3057.4885253906, y = -4672.7446289063, z = 15.262234687805, h = 16.425481796265}, -- glitchdetector (3)
            {type = "helipad", name = "Helipad", x = 2971.58203125, y = -4847.6264648438, z = 5.6698951721191, h = 16.425481796265}, -- glitchdetector (3)
            {type = "spawn", tier = 2, name = "Aircraft Carrier", x = 3094.0891113281, y = -4715.2641601563, z = 25.778638839722, h = 183.80400085449}, -- glitchdetector (3)
            {type = "repair", name = "Aircraft Carrier", x = 3091.0793457031, y = -4792.8354492188, z = 15.261617660522, h = 183.80400085449}, -- glitchdetector (3)
            {type = "fuel", name = "Aircraft Carrier", x = 3078.5361328125, y = -4798.587890625, z = 15.261057853699, h = 183.80400085449}, -- glitchdetector (3)
            {type = "special", name = "Location", x = 3092.5412597656, y = -4712.9125976563, z = 15.262617111206, h = 332.83547973633}, -- glitchdetector (3)
        },
    },
    {
        name = "La Vaca Loco",
        id = "biz_vacaloco",
        cost = 0.15*10^6,
        reqlvl = {"@business.business.>2"},
        visuallvl = "3",
        position = {name = "La Vaca Loco", x = 142.927383, y = -1520.104736, z = 29.836950, h = 137.086761}, -- glitchdetector (3)
        special = {
            {type = "garage", name = "Garage", x = 156.249451, y = -1511.876831, z = 29.140926, h = 50.301353}, -- glitchdetector (3)
            {type = "special", name = "Daily Bonus", x = 144.475327, y = -1540.986572, z = 29.142031, h = 327.836792}, -- glitchdetector (3)
        }
    },
    {
        name = "Collins Petrochemical Corp.",
        id = "biz_murrietta_oil",
        cost = 125*10^6,
        reqlvl = {"@business.business.>86"},
        visuallvl = "87",
        position = {name = "CollinsCo", x = 1708.917725, y = -1610.068481, z = 113.814720, h = 190.878906}, -- glitchdetector (3)
        special = {
            {type = "garage", name = "Garage", x = 1715.076782, y = -1650.649170, z = 112.516853, h = 192.533920}, -- glitchdetector (3)
            {type = "special", name = "Special", x = 1713.027954, y = -1555.523438, z = 113.942116, h = 37.124844}, -- glitchdetector (3)
            {type = "spawn", tier = 2, name = "CollinsCo", x = 1714.748535, y = -1598.130737, z = 113.814629, h = 280.117676}, -- glitchdetector (3)
            {type = "self_storage", name = "CollinsCo", x = 1735.635620, y = -1538.411499, z = 112.705345, h = 314.896423, fee = 0, size = 150000, permissions = {}, area = "truck"}, -- glitchdetector (3)
            {type = "chat", tier = 100, name = "Murrietta Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "Murrietta Icon", group = "chat.prefix.biz_murrietta_oil"}, -- glitchdetector (3)
        }
    },
    {
        name = "Fridgit Co.",
        id = "biz_stay_frosty",
        cost = 8*10^6,
        reqlvl = {"@business.business.>39"},
        visuallvl = "40",
        position = {name = "Fridgit Co.", x = 868.230469, y = -1629.213745, z = 30.247114, h = 87.668678}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Special", x = 952.91882324219, y = -1712.3009033203, z = 30.346538543701, h = 69.35213470459}, -- glitchdetector (3)
            {type = "garage", name = "Garage", x = 867.587341, y = -1663.824585, z = 30.095900, h = 210.233643}, -- glitchdetector (3)
            {type = "helipad", name = "Helipad", x = 910.197510, y = -1681.197144, z = 51.132278, h = 177.552917}, -- glitchdetector (3)
            {type = "chat", tier = 100, name = "Fridgit Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "Fridgit Icon", group = "chat.prefix.biz_stay_frosty"}, -- glitchdetector (3)
        }
    },
    {
        name = "Yellowjack",
        id = "biz_yellowjack",
        cost = 0.95*10^6,
        reqlvl = {"@business.business.>14"},
        visuallvl = "15",
        position = {name = "Yellowjack", x = 1983.276489, y = 3026.855713, z = 47.523186, h = 148.360931}, -- glitchdetector (3)
        special = {
            {type = "market", name = "Market", x = 1985.441650, y = 3052.603760, z = 47.215130, h = 326.449585}, -- glitchdetector (3)
            {type = "garage", name = "Garage", x = 2008.302612, y = 3071.468018, z = 47.061764, h = 257.242065}, -- glitchdetector (3)
            {type = "special", name = "Special", x = 1980.305176, y = 3048.955078, z = 50.431862, h = 330.493835}, -- glitchdetector (3)
            {type = "spawn", tier = 100, name = "Yellow Jack", x = 2002.0582275391, y = 3052.1982421875, z = 47.214088439941, h = 42.405769348145}, -- glitchdetector (3)
            {type = "self_storage", name = "Yellowjack", x = 1995.205444, y = 3036.047119, z = 47.026821, h = 325.128418, fee = 10, size = 35000, permissions = {}, area = "truck"}, -- glitchdetector (3)
        }
    },
    {
        name = "Bahama Mamas",
        id = "biz_bahama_mamas",
        cost = 32*10^6,
        reqlvl = {"@business.business.>65"},
        visuallvl = "66",
        position = {name = "Bahama Mamas", x = -1383.363647, y = -612.322021, z = 31.757839, h = 119.286682}, -- glitchdetector (3)
        special = {
            {type = "market", name = "Market", x = -1378.181763, y = -626.898132, z = 30.819565, h = 206.535278}, -- glitchdetector (3)
            {type = "atm", name = "ATM", x = -1390.876709, y = -590.812866, z = 30.319572, h = 352.726135}, -- glitchdetector (3)
            {type = "spawn", tier = 2, name = "Bahama Mamas", x = -1387.978516, y = -618.909302, z = 30.819576, h = 307.011322}, -- glitchdetector (3)
            {type = "special", name = "Daily", x = -1386.148438, y = -627.076721, z = 30.819559, h = 307.644745}, -- glitchdetector (3)
            {type = "garage", name = "Daily", x = -1372.306640625, y = -574.00933837891, z = 30.235149383545, h = 31.803773880005}, -- glitchdetector (3)
            {type = "chat", tier = 100, name = "Bahama Mamas Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "Bahama Mamas Icon", group = "chat.prefix.biz_bahama_mamas"}, -- glitchdetector (3)
        }
    },
    {
        name = "Banner Hotel & Spa",
        id = "biz_banner",
        cost = 4*10^6,
        reqlvl = {"@business.business.>26"},
        visuallvl = "27",
        position = {name = "Banner Hotel & Spa", x = -286.34310913086, y = -1062.0539550781, z = 27.205402374268, h = 249.81948852539}, -- glitchdetector (3)
        special = {
            {type = "spawn", tier = 2, name = "Banner Hotel & Spa", x = -306.35440063477, y = -1073.6545410156, z = 29.385011672974, h = 268.02471923828}, -- glitchdetector (3)
            {type = "special", name = "Daily", x = -297.72506713867, y = -1044.0821533203, z = 36.350997924805, h = 10.312854766846}, -- glitchdetector (3)
            {type = "garage", name = "Daily", x = -339.06344604492, y = -1082.8693847656, z = 23.025793075562, h = 354.91156005859}, -- glitchdetector (3)
        }
    },
    {
        name = "San Andreas Telecom Network",
        id = "biz_satn",
        cost = 750*10^6,
        reqlvl = {"@business.business.>99"},
        visuallvl = "100",
        position = {name = "San Andreas Telecom", x = 781.62677001953, y = 1296.8873291016, z = 361.36175537109}, -- glitchdetector (3)
        special = {
            {type = "spawn", tier = 2, name = "San Andreas Telecom Network", x = 781.39593505859, y = 1296.9387207031, z = 361.36175537109, h = 259.46548461914}, -- glitchdetector (3)
            {type = "special", name = "Daily", x = 662.40716552734, y = 1282.4750976563, z = 360.29614257813, h = 88.48641204834}, -- glitchdetector (3)
            {type = "garage", name = "Daily", x = 791.12365722656, y = 1276.9466552734, z = 360.29650878906, h = 303.72805786133}, -- glitchdetector (3)
            {type = "chat", name = "SATN Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", name = "SATN Perk", group = "biz_satn"}, -- glitchdetector (3)
        }
    },
    {
        name = "Ron Alternates Wind Farm",
        id = "biz_windfarm",
        cost = 350*10^6,
        reqlvl = {"@business.business.>93"},
        visuallvl = "94",
        position = {name = "Ron Alternates Wind Farm", x = 2462.0830078125, y = 1575.7342529297, z = 33.112606048584, h = 87.020378112793}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Daily", x = 2455.4624023438, y = 1594.7769775391, z = 32.875354766846, h = 255.55401611328}, -- glitchdetector (3)
            {type = "garage", name = "Daily", x = 2504.7087402344, y = 1592.7062988281, z = 32.015502929688, h = 292.72180175781}, -- glitchdetector (3)
        }
    },
    {
        name = "Wenger Institute",
        id = "biz_wenger",
        cost = 15000,
        reqlvl = {"@business.business.>0"},
        visuallvl = "1",
        position = {name = "Wenger Institute", x = -368.79766845703, y = -240.53649902344, z = 36.080070495605, h = 175.37205505371}, -- glitchdetector (3)
        special = {
            {type = "special", name = "Daily", x = -325.63018798828, y = -255.60180664063, z = 34.390846252441, h = 87.368705749512}, -- glitchdetector (3)
            {type = "garage", name = "Daily", x = -359.1682434082, y = -226.19747924805, z = 37.262523651123, h = 31.434759140015}, -- glitchdetector (3)
        }
    },
    {
        name = "Vanilla Unicorn",
        id = "biz_stripclub",
        cost = 30*10^6,
        reqlvl = {"@business.business.>63"},
        visuallvl = "64",
        position = {name = "Vanilla Unicorn - Buy point", x = 126.014801, y = -1283.903198, z = 29.282330, h = 203.052200}, -- Architectcobra (4757)
        special = {
            {type = "atm", name = "Vanilla Unicorn - ATM", x = 129.543274, y = -1291.885620, z = 29.269524, h = 299.878174}, -- Architectcobra (4757)
            {type = "special", name = "Vanilla Unicorn - Bonus point", x = 93.780701, y = -1292.122803, z = 29.268766, h = 297.499878}, -- Architectcobra (4757)
            {type = "garage", name = "Vanilla Unicorn - Vehicle Garage", x = 148.213455, y = -1305.821045, z = 29.202311, h = 278.457397}, -- Architectcobra (4757)
            {type = "self_storage", name = "Vanilla Unicorn", x = 138.807602, y = -1277.245728, z = 29.318634, h = 118.814560, size = 10000, fee = 0, area = "truck"}, -- Architectcobra (4757)
            {type = "spawn", tier = 2, name = "Vanilla Unicorn", x = 107.032562, y = -1305.037476, z = 28.768797, h = 348.094055}, -- Architectcobra (4757)
            {type = "chat", tier = 100, name = "Unicorn Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "Unicorn Icon", group = "chat.prefix.biz_stripclub"}, -- glitchdetector (3)
        }
    },
    {
        name = "Parsons Rehabilitation Center",
        id = "biz_persons",
        cost = 4.5*10^6,
        reqlvl = {"@business.business.>28"},
        visuallvl = "29",
        position = {name = "Parsons Rehabilitation Center - Buy Point", x = -1516.673828, y = 852.379761, z = 181.594666, h = 78.718536}, -- Architectcobra (4757)
        special = {
            {type = "garage", name = "Parsons Rehabilitation Center - Vehicle Garage", x = -1528.161255, y = 888.755615, z = 181.843719, h = 169.342880}, -- Architectcobra (4757)
            {type = "special", name = "Parsons Rehabilitation Center - Bonus Point", x = -1502.169800, y = 858.104065, z = 181.594666, h = 32.427231}, -- Architectcobra (4757)
            {type = "market", market = "Traffic Permits", name = "Parsons Rehabilitation Center - Market (Traffic Permits)", x = -1571.994385, y = 771.868530, z = 189.194489, h = 21.390676}, -- Architectcobra (4757)
        }
    },
    {
        name = "Grandma's House",
        id = "biz_granny",
        cost = 0.5*10^6,
        reqlvl = {"@business.business.>9"},
        visuallvl = "10",
        position = {name = "Grandmas House - Buy Point", x = 2220.858154, y = 5614.331543, z = 54.714058, h = 284.201660}, -- Architectcobra (4757)
        special = {
            {type = "special", name = "Grandmas House - Bonus Point", x = 2224.441895, y = 5604.611328, z = 54.922382, h = 286.514130}, -- Architectcobra (4757)
            {type = "garage", name = "Grandmas House - Garage", x = 2214.056396, y = 5596.330078, z = 53.932392, h = 20.762671}, -- Architectcobra (4757)
            {type = "helipad", name = "Grandmas House - Heli Garage", x = 2202.688477, y = 5573.490234, z = 53.725433, h = 347.494110}, -- Architectcobra (4757)
            {type = "self_storage", name = "Grandma's House", x = 2195.722412, y = 5606.561035, z = 53.540730, h = 336.438324, size = 10000, fee = 0, area = "truck"}, -- Architectcobra (4757)
            {type = "chat", tier = 100, name = "Grandma Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "Grandma Icon", group = "chat.prefix.biz_granny"}, -- glitchdetector (3)
        }
    },
    {
        name = "Mt. Chiliad Base",
        id = "biz_chiliad_base",
        cost = 200*10^6,
        reqlvl = {"@business.business.>89"},
        visuallvl = "90",
        position = {name = "MT Chiliad Base - Buy Point", x = 517.348389, y = 5582.300293, z = 782.589783, h = 178.094589}, -- Architectcobra (4757)
        special = {
            {type = "spawn", tier = 2, name = "Mt. Chiliad Base", x = 454.276703, y = 5571.912598, z = 781.184326, h = 91.870201}, -- Architectcobra (4757)
            {type = "special", name = "MT Chiliad Base - Bonus Point", x = 470.623077, y = 5549.953613, z = 793.367676, h = 302.335632}, -- Architectcobra (4757)
            {type = "helipad", name = "MT Chiliad Base - Heli Garage", x = 439.990936, y = 5525.470215, z = 793.449341, h = 127.437241}, -- Architectcobra (4757)
            {type = "garage", name = "MT Chiliad Base - Vehicle Garage", x = 521.909424, y = 5570.144043, z = 782.589600, h = 347.666595, spawnPos = {x = 524.38842773438, y = 5618.6245117188, z = 780.78814697266}}, -- Architectcobra (4757)
            {type = "helipad", name = "MT Chiliad Base - Heli Garage 2", x = 529.733826, y = 5520.782227, z = 793.418274, h = 223.622620}, -- Architectcobra (4757)
            {type = "helipad", name = "MT Chiliad Base - Heli Garage 3", x = 440.347809, y = 5617.488281, z = 793.419373, h = 49.333408}, -- Architectcobra (4757)
            {type = "chat", tier = 100, name = "Chiliad Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "Chiliad Icon", group = "chat.prefix.biz_chiliad_base"}, -- glitchdetector (3)
        }
    },
    {
        name = "Oil Platform",
        id = "biz_oilrig",
        cost = 125*10^6,
        reqlvl = {"@business.business.>86"},
        visuallvl = "87",
        hidden = true,
        position = {name = "Oilrig Platform - HIDDEN ICON Buy point", x = -4169.881348, y = 8913.024414, z = 24.945295, h = 142.318909}, -- Architectcobra (4757)
        special = {
            {type = "garage", name = "Oil Platform - Vehicle Garage", x = -4174.84375, y = 8902.2275390625, z = 19.753803253174, spawnPos = {x = -4174.84375, y = 8902.2275390625, z = 19.753803253174}},
            {type = "special", name = "Oilrig Platform - Bonus Point", x = -4168.999023, y = 8900.979492, z = 19.753553, h = 231.016586}, -- Architectcobra (4757)
            {type = "helipad", name = "Oilrig Platform - Heli Garage", x = -4192.656738, y = 8881.894531, z = 26.350149, h = 321.839081}, -- Architectcobra (4757)
            {type = "marina", name = "Oil Platform", x = -4152.684082, y = 8934.459961, z = 3.469843, h = 230.711456, spawnPos = {x = -4130.8237304688, y = 8885.779296875, z = -0.47749879956245, h = 253.00744628906}}, -- Architectcobra (4757)
            {type = "atm", name = "Oilrig Platform - ATM", x = -4168.686035, y = 8910.688477, z = 22.353851, h = 48.982681}, -- Architectcobra (4757)
            {type = "spawn", tier = 2, name = "Oil Platform", x = -4180.719727, y = 8897.704102, z = 19.754526, h = 315.897644}, -- Architectcobra (4757)
            {type = "market", name = "Oilrig Platform - Market (Food/drink)", x = -4166.974609375, y = 8912.498046875, z = 22.347826004028}, -- Architectcobra (4757)
            {type = "chat", tier = 100, name = "Oilrig Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "Oilrig Icon", group = "chat.prefix.biz_oilrig"}, -- glitchdetector (3)
        }
    },
    {
        name = "Hookies",
        id = "biz_hookies",
        cost = 0.3*10^6,
        reqlvl = {"@business.business.>6"},
        visuallvl = "7",
        position = {name = "Hookies - Buy Point", x = -2193.330811, y = 4286.322754, z = 49.175159, h = 321.513428}, -- Architectcobra (4757)
        special = {
            {type = "special", name = "Hookies - Special", x = -2174.7578125, y = 4293.8950195313, z = 49.050552368164, h = 60.389320373535}, -- Architectcobra (4757)
            {type = "market", name = "Hookies - Market (Food/drink)", x = -2193.779785, y = 4290.165039, z = 49.174187, h = 237.995483}, -- Architectcobra (4757)
            {type = "garage", name = "Hookies - Vehicle Garage", x = -2221.232910, y = 4235.166016, z = 47.093376, h = 328.200287}, -- Architectcobra (4757)
            {type = "self_storage", name = "Hookies - Self Storage", x = -2209.091553, y = 4246.667480, z = 47.557930, h = 340.259369, size = 10000, fee = 0, area = "truck"}, -- Architectcobra (4757)
        }
    },
    {
        name = "Barracuda Cafe",
        id = "biz_baracuda",
        cost = 0.75*10^6,
        reqlvl = {"@business.business.>12"},
        visuallvl = "13",
        position = {name = "Baracuda Cafe - Buy Point", x = -3276.633545, y = 965.100159, z = 8.347157, h = 176.848923}, -- Architectcobra (4757)
        special = {
            {type = "marina", name = "Barracuda Cafe - Boat Garage (Where you look at your boats)", x = -3424.493652, y = 981.182434, z = 8.346682, h = 320.229675, spawnPos = {x = -3426.7348632813, y = 1009.2990722656, z = -0.4799690246582, h = 132.80058288574}}, -- Architectcobra (4757)
            {type = "special", name = "Barracuda Cafe - Bonus Point", x = -3418.193359, y = 964.936157, z = 11.935834, h = 179.558502}, -- Architectcobra (4757)
        }
    },
    {
        name = "Pacific Bluffs Country Club",
        id = "biz_pbcc",
        cost = 18*10^6,
        reqlvl = {"@business.business.>57"},
        visuallvl = "58",
        position = {name = "Pacific Bluffs Country Club - Buy Point", x = -3023.455322, y = 81.415039, z = 11.608119, h = 142.129105}, -- Architectcobra (4757)
        special = {
            {type = "special", name = "Pacific Bluffs Country Club - Bonus Point", x = -3028.739014, y = 73.377396, z = 12.902237, h = 326.536987}, -- Architectcobra (4757)
            {type = "market", market = "Country Club", name = "Pacific Bluffs Country Club - CUSTOM MARKET", x = -2974.807861, y = 19.670259, z = 7.372063, h = 334.930878}, -- Architectcobra (4757)
            -- CUSTOM MARKET = Premium Donuts, Sprunk Soda, and Coffee.
            {type = "garage", name = "Pacific Bluffs Country Club - Vehicle Garage", x = -2990.966064, y = 80.633118, z = 11.608496, h = 47.025192}, -- Architectcobra (4757)
            {type = "chat", tier = 100, name = "pbcc Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "pbcc Icon", group = "chat.prefix.biz_pbcc"}, -- glitchdetector (3)
        }
    },
    {
        name = "Del Perro Pier",
        id = "biz_dp_pier",
        cost = 350*10^6,
        reqlvl = {"@business.business.>93"},
        visuallvl = "94",
        position = {name = "Del Perro Pier - Buy Point", x = -1812.495239, y = -1205.709717, z = 19.169615, h = 312.719574}, -- Architectcobra (4757)
        special = {
            {type = "special", name = "Del Perro Pier - Bonus Point", x = -1800.878662, y = -1205.954224, z = 14.304766, h = 297.654510}, -- Architectcobra (4757)
            {type = "garage", name = "Del Perro Pier - Vehicle Garage", x = -1602.391846, y = -1045.242310, z = 13.036755, h = 319.287292}, -- Architectcobra (4757)
            {type = "repair", name = "Del Perro Pier - Repair point", x = -1476.936157, y = -1005.860535, z = 6.278881, h = 339.248291}, -- Architectcobra (4757)
            {type = "marina", name = "Del Perro Pier", x = -1848.802734, y = -1246.498291, z = 8.615790, h = 154.191315, spawnPos = {x = -1877.2231445313, y = -1281.8366699219, z = 0.28344595432281}}, -- Architectcobra (4757)
            {type = "chat", tier = 100, name = "Pier Icon"}, -- glitchdetector (3)
            {type = "chat", tier = 100, name = "Pier Icon"}, -- glitchdetector (3)
            {type = "group", tier = 100, name = "Pier Icon", group = "chat.prefix.biz_dp_pier.1"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "Pier Icon", group = "chat.prefix.biz_dp_pier.2"}, -- glitchdetector (3)
        }
    },
    {
        name = "Vespucci Movie Masks",
        id = "biz_vespucci_masks",
        cost = 0.15*10^6,
        reqlvl = {"@business.business.>2"},
        visuallvl = "3",
        position = {name = "Vespucci Movie Masks - Buy Point", x = -1337.976440, y = -1276.094116, z = 4.895197, h = 258.556213}, -- Architectcobra (4757)
        special = {
            {type = "special", name = "Vespucci Movie Masks - Bonus Point", x = -1337.141724, y = -1279.103882, z = 4.857801, h = 283.663849}, -- Architectcobra (4757)
        }
    },
    {
        name = "Mr. Spoke's Bike Rental",
        id = "biz_spoke_bikes",
        cost = 0.25*10^6,
        reqlvl = {"@business.business.>4"},
        visuallvl = "5",
        position = {name = "Mr Spoke Bike rental - Buy Point", x = -1106.429565, y = -1695.158203, z = 4.373420, h = 138.722427}, -- Architectcobra (4757)
        special = {
            {type = "special", name = "Mr Spoke Bike rental - Bonus point", x = -1107.908203, y = -1693.208984, z = 4.374210, h = 125.991684}, -- Architectcobra (4757)
            {type = "atm", name = "Mr Spoke Bike rental - ATM", x = -1109.669678, y = -1690.732788, z = 4.374995, h = 127.622559}, -- Architectcobra (4757)
            {type = "vehicle", vehicle = "blazer", name = "Mr Spoke Bike rental - 'Blazer' Quad bike spawn point", x = -1105.632690, y = -1686.532715, z = 4.282356, h = 143.944611}, -- Architectcobra (4757)
            {type = "vehicle", vehicle = "scorcher", name = "Mr Spoke Bike rental - 'Scorcher' Bike Spawn", x = -1100.323364, y = -1693.083740, z = 4.277090, h = 98.081772}, -- Architectcobra (4757)
        }
    },
    {
        name = "Horny's Burgers",
        id = "biz_horny_burgie",
        cost = 0.3*10^6,
        reqlvl = {"@business.business.>6"},
        visuallvl = "7",
        position = {name = "Horny's Burgers - Buy Point", x = 1241.158325, y = -367.413361, z = 69.082199, h = 338.509918}, -- Architectcobra (4757)
        special = {
            {type = "special", name = "Horny's Burgers - Bonus Point", x = 1247.772217, y = -348.337677, z = 69.082207, h = 165.276779}, -- Architectcobra (4757)
            {type = "garage", name = "Horny's Burgers - Vehicle Garage", x = 1262.573853, y = -340.856812, z = 69.082146, h = 89.092758}, -- Architectcobra (4757)
        }
    },
    {
        name = "Casey's Diner",
        id = "biz_caseys_diner",
        cost = 0.35*10^6,
        reqlvl = {"@business.business.>7"},
        visuallvl = "8",
        position = {name = "Casey's Diner - Buy point", x = 792.384338, y = -735.770691, z = 27.482983, h = 270.720306}, -- Architectcobra (4757)
        special = {
            {type = "special", name = "Casey's Diner - Bonus point", x = 812.890869, y = -750.298828, z = 26.727577, h = 82.237343}, -- Architectcobra (4757)
            {type = "garage", name = "Casey's Diner - Vehicle Garage", x = 819.378052, y = -762.103882, z = 26.727320, h = 108.180382}, -- Architectcobra (4757)
        }
    },
    {
        name = "Playboy Mansion",
        id = "biz_playboi",
        cost = 550*10^6,
        reqlvl = {"@business.business.>96"},
        visuallvl = "97",
        position = {name = "Playboy Mansion - Buy Point", x = -1537.704224, y = 129.575684, z = 57.371269, h = 315.550293}, -- Architectcobra (4757)
        special = {
            {type = "special", name = "Playboy Mansion - Bonus Point", x = -1534.463867, y = 96.771317, z = 56.749710, h = 50.077282}, -- Architectcobra (4757)
            {type = "garage", name = "Playboy Mansion - Vehicle Garage", x = -1529.330933, y = 85.526779, z = 56.655930, h = 307.902466}, -- Architectcobra (4757)
            {type = "helipad", name = "Playboy Mansion - Heli Garage", x = -1608.549316, y = 107.671402, z = 61.133209, h = 268.107300}, -- Architectcobra (4757)
            {type = "self_storage", name = "Playboy Mansion - Self Storage", x = -1550.971924, y = 130.134979, z = 56.787189, h = 131.729889, size = 50000, fee = 0, area = "truck"}, -- Architectcobra (4757)
            {type = "spawn", tier = 2, name = "Playboy Mansion", x = -1504.735840, y = 135.670197, z = 55.652969, h = 319.440063}, -- Architectcobra (4757)
            {type = "chat", tier = 100, name = "Playboy Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "Playboy Icon", group = "chat.prefix.biz_playboi"}, -- glitchdetector (3)
        }
    },
    {
        name = "Pacific Standard Bank",
        id = "biz_pacific_standard",
        cost = 500*10^6,
        reqlvl = {"@business.business.>95"},
        visuallvl = "96",
        no_bonus = true,
        position = {name = "Pacific Standard", x = 260.769348, y = 205.027145, z = 110.286949, h = 342.328796}, -- glitchdetector (3)
        special = {
            {type = "biz_collection", name = "Pacific Standard Teller", x = 240.139389, y = 211.651917, z = 110.352989, h = 251.047852}, -- glitchdetector (3)
            {type = "spawn", name = "Pacific Standard", x = 235.49876403809, y = 216.98777770996, z = 110.28279876709, h = 287.76287841797}, -- Collins (2)
            {type = "garage", name = "Pacific Standard - Vehicle Garage", x = 370.75765991211, y = 273.21566772461, z = 103.1176071167, h = 251.90481567383}, -- Collins(2)
            {type = "atm", name = "Pacific Standard - ATM", x = 264.59243774414, y = 212.14471435547, z = 106.28313446045, h = 251.90481567383}, -- glitchdetector (3)
        }
    },
    {
        name = "Tongva Hills Vineyard",
        id = "biz_vineyard",
        cost = 600*10^6,
        reqlvl = {"@business.business.>98"},
        visuallvl = "99",
        position = {name = "Tongva Hills Vineyard - Buy Point", x = -1888.2740478516, y = 2049.98828125, z = 140.98390197754},
        special = {
            {type = "special", name = "Vineyard - Bonus Point", x = -1889.6013183594, y = 2045.1693115234, z = 140.87199401855},
            {type = "garage", name =  "Vineyard - Vehicle Garage", x = -1896.1896972656, y = 2029.3939208984, z = 140.73764038086},
            {type = "helipad", name = "Vineyard - Heli Garage", x = -1898.302734375, y = 2009.8988037109, z = 141.49560546875},
            {type = "self_storage", name = "Vineyard - Self Storage", x = -1922.0493164063, y = 2047.1319580078, z = 140.73503112793, size = 50000, fee = 0, area = "truck"},
            {type = "spawn", tier = 2, name = "Tongva Hills Vineyard", x = -1911.80078125, y = 2071.5505371094, z = 140.38899230957},
            {type = "chat", tier = 100, name = "Vineyard Icon"}, -- glitchdetector (3)
            {hidden = true, type = "group", tier = 100, name = "Vineyard Icon", group = "chat.prefix.biz_vineyard"}, -- glitchdetector (3)
        }
    },
    {
        name = "Walker Logistics",
        id = "biz_walker",
        cost = 120*10^6,
        reqlvl = {"@business.business.>82"},
        visuallvl = "83",
        position = {name = "Walker Logistics - Buy Point", x = 152.12530517578, y = -3210.3564453125, z = 5.8797378540039},
        special = {
            {type = "special", name = "Vineyard - Bonus Point", x = 156.57215881348, y = -3217.5297851563, z = 7.0316400527954},
            {type = "garage", name = "Garage", x = 138.56004333496, y = -3200.3269042969, z = 5.8575897216797},
            {type = "helipad", name = "Helipad", x = 166.39878845215, y = -3226.5815429688, z = 5.8778810501099},
            {type = "spawn", tier = 2, name = "Walker Logistics", x = 141.33074951172, y = -3181.2609863281, z = 5.8575911521912},
            {type = "self_storage", name = "Walker Logistics", x = 126.76761627197, y = -3212.6791992188, z = 5.8929586410522, size = 50000, fee = 0, area = "walker"},
        }
    },
    {
        name = "Train Yard - Paleto Bay",
        id = "biz_train_paleto",
        cost = 80*10^6,
        reqlvl = {"@business.business.>79"},
        visuallvl = "80",
        -- no_bonus = true,
        is_taxed = true,
        position = {name = "Train Yard - Paleto Bay - Buy Point", x = 147.79327392578, y = 6361.9321289063, z = 31.52921295166},
        special = {
            -- {type = "special", name = "Bonus Point", x = 178.38027954102, y = 6419.4775390625, z = 32.357215881348},
            {type = "self_storage_train", name = "Train Network", x = 151.61253356934, y = 6403.0478515625, z = 31.177011489868, size = 16000, fee = 250, id = "biz_train", area = "pb"},
        }
    },
    {
        name = "Train Yard - Grapeseed",
        id = "biz_train_grapeseed",
        cost = 80*10^6,
        reqlvl = {"@business.business.>79"},
        visuallvl = "80",
        is_taxed = true,
        -- no_bonus = true,
        position = {name = "Train Yard - Grapeseed - Buy Point", x = 2932.4145507813, y = 4617.755859375, z = 48.71703338623},
        special = {
            -- {type = "special", name = "Bonus Point", x = 2942.3371582031, y = 4624.9077148438, z = 48.720836639404},
            {type = "self_storage_train", name = "Train Network", x = 2928.67578125, y = 4627.6127929688, z = 48.545486450195, size = 16000, fee = 250, id = "biz_train", area = "gs"},
        }
    },
    {
        name = "Train Yard - Davis Quartz",
        id = "biz_train_davis",
        cost = 80*10^6,
        reqlvl = {"@business.business.>79"},
        visuallvl = "80",
        is_taxed = true,
        -- no_bonus = true,
        position = {name = "Train Yard - Davis Quartz - Buy Point", x = 2745.3869628906, y = 2788.5668945313, z = 35.4485206604},
        special = {
            -- {type = "special", name = "Bonus Point", x = 2706.9916992188, y = 2777.4643554688, z = 37.878028869629},
            {type = "self_storage_train", name = "Train Network", x = 2687.3676757813, y = 2767.3159179688, z = 37.877990722656, size = 16000, fee = 250, id = "biz_train", area = "dq"},
        }
    },
    {
        name = "Train Yard - LS Docks",
        id = "biz_train_docks",
        cost = 80*10^6,
        reqlvl = {"@business.business.>79"},
        visuallvl = "80",
        is_taxed = true,
        -- no_bonus = true,
        position = {name = "Train Yard - LS Docks - Buy Point", x = -175.61352539063, y = -2581.3151855469, z = 6.0010290145874},
        special = {
            -- {type = "special", name = "Bonus Point", x = -168.13526916504, y = -2582.4638671875, z = 6.001030921936},
            {type = "self_storage_train", name = "Train Network", x = -114.83979034424, y = -2576.6413574219, z = 6.0007061958313, size = 16000, fee = 250, id = "biz_train", area = "dx"},
        }
    },
    {
        name = "Train Yard - LS Terminal",
        id = "biz_train_terminal",
        cost = 80*10^6,
        reqlvl = {"@business.business.>79"},
        visuallvl = "80",
        is_taxed = true,
        -- no_bonus = true,
        position = {name = "Train Yard - LS Terminal - Buy Point", x = 858.45727539063, y = -3203.8115234375, z = 5.9949970245361},
        special = {
            -- {type = "special", name = "Bonus Point", x = 805.90661621094, y = -3184.9270019531, z = 5.9008164405823},
            {type = "self_storage_train", name = "Train Network", x = 796.67376708984, y = -3215.5600585938, z = 5.8998837471008, size = 16000, fee = 250, id = "biz_train", area = "tx"},
        }
    },
    {
        name = "Train Yard - Sandy Shores",
        id = "biz_train_sandy",
        cost = 80*10^6,
        reqlvl = {"@business.business.>79"},
        visuallvl = "80",
        is_taxed = true,
        -- no_bonus = true,
        position = {name = "Train Yard - Sandy Shores - Buy Point", x = 2009.6743164063, y = 3630.4052734375, z = 39.78341293335},
        special = {
            -- {type = "special", name = "Bonus Point", x = 1955.2746582031, y = 3602.5568847656, z = 36.453395843506},
            {type = "self_storage_train", name = "Train Network", x = 1972.3913574219, y = 3636.4680175781, z = 34.889045715332, size = 16000, fee = 250, id = "biz_train", area = "ss"},
        }
    },
    {
        name = "Train Yard - La Mesa",
        id = "biz_train_lm",
        cost = 80*10^6,
        reqlvl = {"@business.business.>79"},
        visuallvl = "80",
        is_taxed = true,
        -- no_bonus = true,
        position = {name = "Train Yard - La Mesa - Buy Point", x = 696.9375, y = -874.43109130859, z = 24.658582687378},
        special = {
            -- {type = "special", name = "Bonus Point", x = 709.72662353516, y = -878.29357910156, z = 24.398540496826},
            {type = "self_storage_train", name = "Train Network", x = 735.12860107422, y = -878.39239501953, z = 25.026447296143, size = 16000, fee = 250, id = "biz_train", area = "lm"},
        }
    },
    {
        name = "Train Yard - Mirror Park",
        id = "biz_train_mp",
        cost = 80*10^6,
        reqlvl = {"@business.business.>79"},
        visuallvl = "80",
        is_taxed = true,
        -- no_bonus = true,
        position = {name = "Train Yard - Mirror Park - Buy Point", x = 486.76611328125, y = -591.54602050781, z = 26.210861206055},
        special = {
            -- {type = "special", name = "Bonus Point", x = 486.21350097656, y = -630.42010498047, z = 25.009294509888},
            {type = "self_storage_train", name = "Train Network", x = 511.85794067383, y = -625.4267578125, z = 24.758949279785, size = 16000, fee = 250, id = "biz_train", area = "mp"},
        }
    },
    {
        name = "Ship Yard - Portland",
        id = "biz_train_lc",
        cost = 80*10^6,
        reqlvl = {"@business.business.>79"},
        visuallvl = "80",
        is_taxed = true,
        -- no_bonus = true,
        position = {name = "Ship Yard - Portland", x = -1505.7915039063, y = 6647.837890625, z = 11.887263298035},
        special = {
            -- {type = "special", name = "Bonus Point", x = -1510.712890625, y = 6623.3515625, z = 11.887256622314},
            {type = "self_storage_train", name = "Train / Ship Network", x = -1490.9998779297, y = 6598.751953125, z = 11.509660720825, size = 16000, fee = 250, id = "biz_train", area = "lc"},
        }
    },
    {
        name = "Pacific Allied Shipyard",
        id = "biz_shipyard_pa",
        cost = 80*10^6,
        reqlvl = {"@business.business.>79"},
        visuallvl = "80",
        position = {name = "Pacific Allied Shipyard - Buy Point", x = 94.309379577637, y = -2694.9694824219, z = 6.0004138946533},
        special = {
            {type = "special", name = "Bonus Point", x = 31.293899536133, y = -2666.236328125, z = 12.045051574707},
            {type = "garage", name = "Garage", x = 73.913352966309, y = -2730.0964355469, z = 6.0046491622925},
        }
    },
    {
        name = "Pier 400",
        id = "biz_pier_400",
        cost = 80*10^6,
        reqlvl = {"@business.business.>79"},
        visuallvl = "80",
        position = {name = "Pier 400 - Buy Point", x = -101.20858764648, y = -2693.1262207031, z = 6.1955623626709},
        special = {
            {type = "special", name = "Bonus Point", x = -95.854286193848, y = -2767.4626464844, z = 6.0821285247803},
            {type = "garage", name = "Garage", x = -154.87942504883, y = -2691.9230957031, z = 6.0114750862122},
        }
    },
    {
        name = "Raven Slaughterhouse",
        id = "biz_raven",
        cost = 80*10^6,
        reqlvl = {"@business.business.>79"},
        visuallvl = "80",
        position = {name = "Pier 400 - Buy Point", x = 941.13537597656, y = -2142.7016601563, z = 30.51904296875},
        special = {
            {type = "special", name = "Bonus Point", x = 991.09924316406, y = -2149.591796875, z = 30.20534324646},
            {type = "garage", name = "Garage", x = 946.88616943359, y = -2185.0324707031, z = 30.551580429077},
        }
    },
    {
        name = "Portland Safehouse",
        id = "biz_lcport_house",
        cost = 0.75*10^6,
        reqlvl = {"@business.business.>12"},
        visuallvl = "13",
        position = {name = "Portland Safehouse - Buy Point", x = -2189.1530761719, y = 6992.7895507813, z = 8.7821102142334},
        prereq = function(source, user_id) return vRP.hasPermission({user_id, ">liberty_enabled"}) end,
        special = {
            {type = "special", name = "Bonus Point", x = -2217.2224121094, y = 6982.6235351563, z = 10.208455085754},
            {type = "spawn", tier = 2, name = "Portland Safehouse", x = -2197.2009277344, y = 6992.7578125, z = 9.5984935760498},
            {type = "garage", name = "Garage", x = -2211.2197265625, y = 6993.2138671875, z = 8.3550186157227},
        }
    },
    {
        name = "Portland Mansion",
        id = "biz_lcport_mansion",
        cost = 35*10^6,
        reqlvl = {"@business.business.>67"},
        visuallvl = "68",
        position = {name = "Portland Mansion - Buy Point", x = -1612.5910644531, y = 7106.7553710938, z = 55.5129737854},
        prereq = function(source, user_id) return vRP.hasPermission({user_id, ">liberty_enabled"}) end,
        special = {
            {type = "special", name = "Bonus Point", x = -1649.3221435547, y = 7125.1391601563, z = 52.386394500732},
            {type = "spawn", tier = 2, name = "Portland Mansion", x = -1630.2764892578, y = 7112.6020507813, z = 55.418853759766},
            {type = "garage", name = "Garage", x = -1667.8529052734, y = 7129.5493164063, z = 50.889350891113},
        }
    },
    {
        name = "Staunton Island Safehouse",
        id = "biz_lcstau_house",
        cost = 5*10^6,
        reqlvl = {"@business.business.>31"},
        visuallvl = "32",
        position = {name = "Staunton Island Safehouse - Buy Point", x = -2981.9851074219, y = 6815.8100585938, z = 15.982629776001},
        prereq = function(source, user_id) return vRP.hasPermission({user_id, ">liberty_enabled"}) end,
        special = {
            {type = "special", name = "Bonus Point", x = -2955.3779296875, y = 6822.1235351563, z = 16.001016616821},
            {type = "spawn", tier = 2, name = "Staunton Island Safehouse", x = -2983.3874511719, y = 6821.974609375, z = 17.011686325073},
            {type = "garage", name = "Garage", x = -2973.5, y = 6834.7998046875, z = 16.107721328735},
        }
    },
    {
        name = "Staunton Island Casino",
        id = "biz_lcstau_casino",
        cost = 15*10^6,
        reqlvl = {"@business.business.>50"},
        visuallvl = "51",
        position = {name = "Staunton Island - Buy Point", x = -2642.5981445313, y = 5876.7041015625, z = 34.412357330322},
        prereq = function(source, user_id) return vRP.hasPermission({user_id, ">liberty_enabled"}) end,
        special = {
            {type = "special", name = "Bonus Point", x = -2617.9633789063, y = 5880.2358398438, z = 26.195936203003},
            {type = "helipad", name = "Garage", x = -2640.1711425781, y = 5853.5815429688, z = 44.393650054932},
            {type = "garage", name = "Garage", x = -2621.0070800781, y = 5814.3129882813, z = 18.740196228027},
            {type = "casino", name = "Garage", x = -2628.4030761719, y = 5891.3212890625, z = 26.196584701538},
        }
    },
    {
        name = "Shoreside Vale Safehouse",
        id = "biz_lcssv_house",
        cost = 20*10^6,
        reqlvl = {"@business.business.>59"},
        visuallvl = "60",
        position = {name = "Shoreside Vale Safehouse - Buy Point", x = -3749.3127441406, y = 7311.9458007813, z = 19.002645492554},
        prereq = function(source, user_id) return vRP.hasPermission({user_id, ">liberty_enabled"}) end,
        special = {
            {type = "special", name = "Bonus Point", x = -3744.8098144531, y = 7257.2514648438, z = 18.922008514404},
            {type = "spawn", tier = 2, name = "Shoreside Vale Safehouse", x = -3750.6433105469, y = 7306.5029296875, z = 20.002649307251},
            {type = "garage", name = "Garage", x = -3727.7917480469, y = 7266.8134765625, z = 18.921998977661},
        }
    },
    {
        name = "Francis Intl. Airport",
        id = "biz_lcssv_aeroport",
        cost = 150*10^6,
        reqlvl = {"@business.business.>88"},
        visuallvl = "89",
        position = {name = "Shoreside Vale - Buy Point", x = -3856.79296875, y = 6699.666015625, z = 11.377080917358},
        prereq = function(source, user_id) return vRP.hasPermission({user_id, ">liberty_enabled"}) end,
        special = {
            {type = "special", name = "Bonus Point", x = -4176.50390625, y = 6694.4682617188, z = 11.177491188049},
            {type = "garage", name = "Garage", x = -3834.46875, y = 6684.21875, z = 8.9415140151978},
            {type = "helipad", name = "Garage", x = -4639.1401367188, y = 6390.5795898438, z = 14.644359588623},
        }
    },
    {
        name = "Cochrane Dam",
        id = "biz_lcssv_dam",
        cost = 250*10^6,
        reqlvl = {"@business.business.>91"},
        visuallvl = "92",
        position = {name = "Shoreside Vale - Buy Point", x = -4276.0356445313, y = 7626.4375, z = 3.4900457859039},
        prereq = function(source, user_id) return vRP.hasPermission({user_id, ">liberty_enabled"}) end,
        special = {
            {type = "special", name = "Bonus Point", x = -4178.24609375, y = 7773.2705078125, z = 35.588367462158},
            {type = "garage", name = "Garage", x = -4267.1440429688, y = 7585.408203125, z = 3.7719495296478},
        }
    },
    {
        name = "Cayo Perico",
        id = "biz_fyrecay",
        cost = 80*10^6,
        reqlvl = {"@business.business.>79"},
        visuallvl = "80",
        position = {name = "Cayo Perico - Buy Point", x = 5011.8671875, y = -5753.5625, z = 28.845277786255},
        special = {
            {type = "special", name = "Bonus Point", x = 4985.3989257812, y = -5719.4213867188, z = 19.880222320557},
            {type = "garage", name = "Garage", x = 5090.5561523438, y = -5724.8081054688, z = 15.773634910583},
            {type = "helipad", name = "Garage", x = 4890.4775390625, y = -5736.67578125, z = 26.350877761841},
            {type = "atm", name = "Garage", x = 4973.3618164062, y = -5763.8071289062, z = 20.878234863281},
            {type = "spawn", tier = 10, name = "Cayo Perico", x = 4998.056640625, y = -5713.3544921875, z = 19.880207061768},
            {type = "self_storage_train", name = "Train / Ship Network", x = 4902.7143554688, y = -5194.22265625, z = 2.4385457038879, size = 16000, fee = 250, id = "biz_train", area = "fyre"},
            {type = "self_storage_train", name = "Train / Ship Network", x = 4940.45703125, y = -5132.0825195312, z = 0.87203848361969, size = 16000, fee = 250, id = "biz_train", area = "fyre2"},
        }
    },
    {
        name = "Palmer-Taylor Power Station",
        id = "biz_refinery",
        cost = 80*10^6,
        reqlvl = {"@business.business.>79"},
        visuallvl = "80",
        is_taxed = true,
        position = {name = "Palmer-Taylor Power Station - Buy Point", x = 2761.4274902344, y = 1548.5849609375, z = 30.792221069336},
        special = {
            {type = "atm", name = "Palmer-Taylor Power Station", x = 2760.5751953125, y = 1546.3438720703, z = 30.791902542114},
            {type = "spawn", tier = 10, name = "Palmer-Taylor Power Station", x = 2748.068359375, y = 1453.0616455078, z = 24.495775222778, h = 161.6213684082},
            {type = "garage", name = "Garage", x = 2727.236328125, y = 1415.6801757812, z = 24.439430236816},
            {type = "self_storage_train", name = "Train Network", x = 2690.7902832031, y = 1356.7669677734, z = 24.520862579346, size = 16000, fee = 250, id = "biz_train", area = "refinery"},
        }
    },
    -- {
    --     name = "Bugstars Pest Control",
    --     id = "biz_bugz",
    --     cost = 65*10^6,
    --     position = {name = "Bugstars Pest Control - Buy Point", x = 152.67199707031, y = -3081.009765625, z = 5.8963117599487},
    --     special = {
    --         {type = "special", name = "Bugstars Pest Control - Bonus Point", x = 122.31836700439, y = -3082.8073730469, z = 5.9940476417542},
    --         {type = "garage", name = "Garage", x = 138.57287597656, y = -3092.333984375, z = 5.8963103294373},
    --     }
    -- },
}

-- if IsDuplicityVersion() then
--     local bizjson = {}
--     for _, biz in next, BUSINESSES do
--         table.insert(bizjson, {(biz.position.x / 15) + 440, (-biz.position.y / 15) + 660})
--     end
--
--     SaveResourceFile("omni_businesses", "bizPos.json", json.encode(bizjson, {indent = false}), -1)
-- end


