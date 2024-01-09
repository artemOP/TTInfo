--[[ vrp CONFIG 1/1 (cfg/homes.lua) ]]--

local cfg = {}

-- example of study transformer
local itemtr_study = {
    name = "Bookcase", -- menu name
    r = 0, g = 255, b = 0, -- color
    max_units = 20,
    units_per_minute = 10,
    x = 0, y = 0, z = 0, -- pos (doesn't matter as home component)
    radius = 1.1, height = 1.5, -- area
    recipes = {
        ["Chemicals book"] = { -- action name
            description = "Read a chemicals book", -- action description
            in_money = 0, -- money taken per unit
            out_money = 0, -- money earned per unit
            reagents = {}, -- items taken per unit
            products = {}, -- items given per unit
            aptitudes = { -- optional
                ["science.chemicals"] = 1 -- "group.aptitude", give 1 exp per unit
            }
        },
        ["Mathematics book"] = { -- action name
            description = "Read a mathematics book", -- action description
            in_money = 0, -- money taken per unit
            out_money = 0, -- money earned per unit
            reagents = {}, -- items taken per unit
            products = {}, -- items given per unit
            aptitudes = { -- optional
                ["science.mathematics"] = 1 -- "group.aptitude", give 1 exp per unit
            }
        }
    }
}

local itemtr_kitchen = {
    name = "Kitchen", -- menu name
    r = 0, g = 255, b = 0, -- color
    max_units = 100,
    units_per_minute = 10,
    x = 0, y = 0, z = 0, -- pos (doesn't matter as home component)
    radius = 2.5, height = 1.5, -- area
    recipes = {
        ["Craft Complete Meals"] = { -- action name
            description = "", -- action description
            in_money = 0, -- money taken per unit
            out_money = 0, -- money earned per unit
            reagents = {
                ["comp_water"] = 1000,
                ["comp_paste"] = 1000,
                ["comp_solid"] = 1000,
                ["comp_alcohol"] = 1000,
            }, -- items taken per unit
            products = {
                ["complete_meal"] = 3
            }, -- items given per unit
            aptitudes = { -- optional
                ["player.player"] = 5.0
            }
        },
    }
}

local itemtr_workshop = {
    name = "Workshop", -- menu name
    r = 0, g = 255, b = 0, -- color
    max_units = 20,
    units_per_minute = 10,
    x = 0, y = 0, z = 0, -- pos (doesn't matter as home component)
    radius = 2.5, height = 1.5, -- area
    recipes = {
    }
}

----------------------------------------------------------------------------------------- laboratory
local itemtr_laboratory = {
    name = "workbench", -- menu name
    r = 0, g = 255, b = 0, -- color
    max_units = 20,
    units_per_minute = 10,
    x = 0, y = 0, z = 0, -- pos (doesn't matter as home component)
    radius = 1.1, height = 1.5, -- area
    recipes = {
        ["cocaine"] = { -- action name
            description = "make cocaine", -- action description
            in_money = 1000, -- money taken per unit
            out_money = 0, -- money earned per unit
            reagents = { -- items taken per unit
                ["benzoilmetilecgonina"] = 1

            },
            products = { -- items given per unit
                ["cocaine"] = 5
            },
            aptitudes = { -- optional
                ["laboratory.cocaine"] = 5, -- "group.aptitude", give 1 exp per unit
                ["science.chemicals"] = 10
            }
        },
        ["weed"] = { -- action name
            description = "make weed", -- action description
            in_money = 1000, -- money taken per unit
            out_money = 0, -- money earned per unit
            reagents = { -- items taken per unit
                ["seeds"] = 1
            },
            products = { -- items given per unit
                ["weed"] = 5
            },
            aptitudes = { -- optional
                ["laboratory.weed"] = 5, -- "group.aptitude", give 1 exp per unit
                ["science.chemicals"] = 10
            }
        },
        -----------------
        ["lsd"] = { -- action name
            description = "make lsd", -- action description
            in_money = 1000, -- money taken per unit
            out_money = 0, -- money earned per unit
            reagents = { -- items taken per unit
                ["harness"] = 1
            },
            products = { -- items given per unit
                ["lsd"] = 5
            },
            aptitudes = { -- optional
                ["laboratory.lsd"] = 5, -- "group.aptitude", give 1 exp per unit
                ["science.chemicals"] = 10
            }
        },
        ---------------------------------------------
    }
}
------------------------------------------------ hacker

local itemtr_hacker = {
    name = "hacker", -- menu name
    r = 0, g = 255, b = 0, -- color
    max_units = 20,
    units_per_minute = 10,
    x = 0, y = 0, z = 0, -- pos (doesn't matter as home component)
    radius = 1.1, height = 1.5, -- area
    recipes = {
        ["logic pdf"] = { -- action name
            description = "Read a logic pdf", -- action description
            in_money = 0, -- money taken per unit
            out_money = 0, -- money earned per unit
            reagents = {}, -- items taken per unit
            products = {}, -- items given per unit
            aptitudes = { -- optional
                ["hacker.logic"] = 10 -- "group.aptitude", give 1 exp per unit
            }
        },
        ["c++ pdf"] = { -- action name
            description = "Read a C++ pdf", -- action description
            in_money = 0, -- money taken per unit
            out_money = 0, -- money earned per unit
            reagents = {}, -- items taken per unit
            products = {}, -- items given per unit
            aptitudes = { -- optional
                ["hacker.c++"] = 1 -- "group.aptitude", give 1 exp per unit
            }
        },
        ["lua pdf"] = { -- action name
            description = "Read a C++ pdf", -- action description
            in_money = 0, -- money taken per unit
            out_money = 0, -- money earned per unit
            reagents = {}, -- items taken per unit
            products = {}, -- items given per unit
            aptitudes = { -- optional
                ["hacker.lua"] = 1 -- "group.aptitude", give 1 exp per unit
            }
        },
        ["hacking"] = { -- action name
            description = "hacking a Credit card informations", -- action description
            in_money = 0, -- money taken per unit
            out_money = 0, -- money earned per unit
            reagents = {}, -- items taken per unit
            products = {
                ["dirty_money"] = 5000
            }, -- items given per unit
            aptitudes = { -- optional
                ["hacker.lua"] = 1, -- "group.aptitude", give 1 exp per unit
                ["hacker.c++"] = 1, -- "group.aptitude", give 1 exp per unit
                ["hacker.logic"] = 1, -- "group.aptitude", give 1 exp per unit
                ["hacker.hacking"] = 1 -- "group.aptitude", give 1 exp per unit
            }
        },
    }
}

-- default flats positions from https://github.com/Nadochima/HomeGTAV/blob/master/List

-- define the home slots (each entry coordinate should be unique for ALL types)
-- each slots is a list of home components
--- {component,x,y,z} (optional _config)
--- the entry component is required
cfg.slot_types = {
    ["ranch_01"] = {
        {
            {"entry", 1396.8780517578, 1141.8103027344, 114.33364868164},
            {"bed", 1398.4398193359, 1156.826171875, 114.33365631104},
            {"gametable", 1395.7352294922, 1131.2335205078, 114.33364105225},
            {"wardrobe", 1397.7651367188, 1163.8553466797, 114.33364105225},
            {"itemtr", _config = itemtr_kitchen, 1393.6143798828, 1147.3548583984, 114.33364868164},
            {"chest", 1396.7282714844, 1137.9888916016, 114.33364105225, _config = {weight = 1000}},
        }
    },
    ["bunker_01"] = {
        {
            {"entry", 894.08093261719, -3245.697265625, -98.260025024414},
            {"bed", 906.34216308594, -3199.5778808594, -97.187957763672},
            {"gametable", 890.13067626953, -3202.4868164063, -98.18994140625},
            {"wardrobe", 908.02038574219, -3203.4270019531, -97.187911987305},
            {"itemtr", _config = itemtr_kitchen, 897.58569335938, -3199.0139160156, -98.19620513916},
            {"itemtr", _config = itemtr_workshop, 897.07012939453, -3217.6606445313, -98.228012084961},
            {"chest", 879.74774169922, -3248.4694824219, -98.290390014648, _config = {weight = 50000}},
            {"atm", 905.86975097656, -3208.7456054688, -97.187965393066},
        },
        {
            {"entry", 894.08093261719, -3245.697265625, -98.260025024414},
            {"bed", 906.34216308594, -3199.5778808594, -97.187957763672},
            {"gametable", 890.13067626953, -3202.4868164063, -98.18994140625},
            {"wardrobe", 908.02038574219, -3203.4270019531, -97.187911987305},
            {"itemtr", _config = itemtr_kitchen, 897.58569335938, -3199.0139160156, -98.19620513916},
            {"itemtr", _config = itemtr_workshop, 897.07012939453, -3217.6606445313, -98.228012084961},
            {"chest", 879.74774169922, -3248.4694824219, -98.290390014648, _config = {weight = 50000}},
            {"atm", 905.86975097656, -3208.7456054688, -97.187965393066},
        },
        {
            {"entry", 894.08093261719, -3245.697265625, -98.260025024414},
            {"bed", 906.34216308594, -3199.5778808594, -97.187957763672},
            {"gametable", 890.13067626953, -3202.4868164063, -98.18994140625},
            {"wardrobe", 908.02038574219, -3203.4270019531, -97.187911987305},
            {"itemtr", _config = itemtr_kitchen, 897.58569335938, -3199.0139160156, -98.19620513916},
            {"itemtr", _config = itemtr_workshop, 897.07012939453, -3217.6606445313, -98.228012084961},
            {"chest", 879.74774169922, -3248.4694824219, -98.290390014648, _config = {weight = 50000}},
            {"atm", 905.86975097656, -3208.7456054688, -97.187965393066},
        },
        {
            {"entry", 894.08093261719, -3245.697265625, -98.260025024414},
            {"bed", 906.34216308594, -3199.5778808594, -97.187957763672},
            {"gametable", 890.13067626953, -3202.4868164063, -98.18994140625},
            {"wardrobe", 908.02038574219, -3203.4270019531, -97.187911987305},
            {"itemtr", _config = itemtr_kitchen, 897.58569335938, -3199.0139160156, -98.19620513916},
            {"itemtr", _config = itemtr_workshop, 897.07012939453, -3217.6606445313, -98.228012084961},
            {"chest", 879.74774169922, -3248.4694824219, -98.290390014648, _config = {weight = 50000}},
            {"atm", 905.86975097656, -3208.7456054688, -97.187965393066},
        },
    },
    ["facility_01"] = {
        {
            {"entry", 486.4909362793, 4819.8559570313, -58.382858276367},
            {"chest", 473.85610961914, 4787.916015625, -58.393932342529, _config = {weight = 50000}},
            {"wardrobe", 371.22790527344, 4819.7368164063, -58.996437072754},
            {"gametable", 364.76846313477, 4842.2280273438, -58.999095916748},
            {"bed", 363.06811523438, 4821.2377929688, -58.996395111084},
            {"itemtr", _config = itemtr_kitchen, 364.60913085938, 4840.400390625, -62.599517822266},
            {"itemtr", _config = itemtr_workshop, 483.89471435547, 4766.9301757813, -58.993824005127},
            {"atm", 419.49807739258, 4815.380859375, -58.997932434082},
        },
        {
            {"entry", 486.4909362793, 4819.8559570313, -58.382858276367},
            {"chest", 473.85610961914, 4787.916015625, -58.393932342529, _config = {weight = 50000}},
            {"wardrobe", 371.22790527344, 4819.7368164063, -58.996437072754},
            {"gametable", 364.76846313477, 4842.2280273438, -58.999095916748},
            {"bed", 363.06811523438, 4821.2377929688, -58.996395111084},
            {"itemtr", _config = itemtr_kitchen, 364.60913085938, 4840.400390625, -62.599517822266},
            {"itemtr", _config = itemtr_workshop, 483.89471435547, 4766.9301757813, -58.993824005127},
            {"atm", 419.49807739258, 4815.380859375, -58.997932434082},
        },
        {
            {"entry", 486.4909362793, 4819.8559570313, -58.382858276367},
            {"chest", 473.85610961914, 4787.916015625, -58.393932342529, _config = {weight = 50000}},
            {"wardrobe", 371.22790527344, 4819.7368164063, -58.996437072754},
            {"gametable", 364.76846313477, 4842.2280273438, -58.999095916748},
            {"bed", 363.06811523438, 4821.2377929688, -58.996395111084},
            {"itemtr", _config = itemtr_kitchen, 364.60913085938, 4840.400390625, -62.599517822266},
            {"itemtr", _config = itemtr_workshop, 483.89471435547, 4766.9301757813, -58.993824005127},
            {"atm", 419.49807739258, 4815.380859375, -58.997932434082},
        },
        {
            {"entry", 486.4909362793, 4819.8559570313, -58.382858276367},
            {"chest", 473.85610961914, 4787.916015625, -58.393932342529, _config = {weight = 50000}},
            {"wardrobe", 371.22790527344, 4819.7368164063, -58.996437072754},
            {"gametable", 364.76846313477, 4842.2280273438, -58.999095916748},
            {"bed", 363.06811523438, 4821.2377929688, -58.996395111084},
            {"itemtr", _config = itemtr_kitchen, 364.60913085938, 4840.400390625, -62.599517822266},
            {"itemtr", _config = itemtr_workshop, 483.89471435547, 4766.9301757813, -58.993824005127},
            {"atm", 419.49807739258, 4815.380859375, -58.997932434082},
        },
    },
    -- City Apartments
    ["apartments_01"] = {
        {
            {"entry", - 782.171, 324.589, 223.258},
            {"chest", - 773.718078613281, 325.144409179688, 223.266357421875, _config = {weight = 1000}},
            {"wardrobe", - 760.885437011719, 325.457153320313, 217.061080932617},
            {"gametable", - 755.40185546875, 318.263214111328, 221.875823974609},
            {"itemtr", _config = itemtr_kitchen, -767.68286132813, 328.66143798828, 221.85511779785},
            --{"itemtr", _config = itemtr_study, -758.670104980469,315.048156738281,221.854904174805},
            --{"itemtr", _config = itemtr_laboratory, -772.294372558594,328.913177490234,223.261581420898},
            --{"itemtr", _config = itemtr_hacker, -778.154296875,326.660491943359,223.25764465332}
        },
        {
            {"entry", - 774.171, 333.589, 207.621},
            {"chest", - 782.118591308594, 332.147399902344, 207.629608154297, _config = {weight = 1000}},
            {"wardrobe", - 795.118469238281, 331.631256103516, 201.42431640625},
            {"gametable", - 800.763427734375, 338.574951171875, 206.239105224609},
            {"itemtr", _config = itemtr_kitchen, -788.42242431641, 328.40460205078, 206.21838378906},
            --{"itemtr", _config = itemtr_study, -797.283447265625,342.134338378906,206.21842956543},
            --{"itemtr", _config = itemtr_laboratory, -783.788635253906,328.553985595703,207.625396728516},
            --{"itemtr", _config = itemtr_hacker, -777.960876464844,330.808135986328,207.620849609375}
        },
        {
            {"entry", - 774.171, 333.589, 159.998},
            {"chest", - 782.66015625, 332.523284912109, 160.010223388672, _config = {weight = 1000}},
            {"wardrobe", - 795.550964355469, 332.229614257813, 153.804931640625},
            {"gametable", - 801.228942871094, 339.106231689453, 158.619750976563},
            {"itemtr", _config = itemtr_kitchen, -788.65606689453, 328.82748413086, 158.59898376465},
            --{"itemtr", _config = itemtr_study, -797.896728515625,342.543273925781,158.599044799805},
            --{"itemtr", _config = itemtr_laboratory, -784.178588867188,328.916839599609,160.006057739258},
            --{"itemtr", _config = itemtr_hacker, -778.430236816406,331.083160400391,160.001556396484}
        },
        {
            {"entry", - 596.689, 59.139, 108.030},
            {"chest", - 604.427001953125, 57.0807762145996, 108.035743713379, _config = {weight = 1000}},
            {"wardrobe", - 617.180358886719, 56.9536590576172, 101.830520629883},
            {"gametable", - 623.078796386719, 63.688045501709, 106.645317077637},
            {"itemtr", _config = itemtr_kitchen, -610.02136230469, 53.406833648682, 106.62447357178},
            --{"itemtr", _config = itemtr_study, -619.724853515625,67.1367950439453,106.624366760254},
            --{"itemtr", _config = itemtr_laboratory, -605.9560546875,53.3968696594238,108.031196594238},
            --{"itemtr", _config = itemtr_hacker, -600.219604492188,55.7631721496582,108.027030944824}
        },
        {
            {"entry", - 1451.557, - 523.546, 69.556},
            {"chest", - 1457.28601074219, - 529.699523925781, 69.565315246582, _config = {weight = 1000}},
            {"wardrobe", - 1467.07995605469, - 536.98583984375, 63.3601188659668},
            {"gametable", - 1476.12658691406, - 534.873474121094, 68.1748962402344},
            {"itemtr", _config = itemtr_kitchen, -1459.6524658203, -535.80712890625, 68.154037475586},
            --{"itemtr", _config = itemtr_study, -1475.36840820313,-530.117126464844,68.1540756225586},
            --{"itemtr", _config = itemtr_laboratory, -1456.35876464844,-533.55029296875,69.5607528686523},
            --{"itemtr", _config = itemtr_hacker, -1452.96923828125,-528.350952148438,69.5566177368164}
        },
        {
            {"entry", - 1452.185, - 522.640, 56.929},
            {"chest", - 1457.3740234375, - 529.737854003906, 56.9376449584961, _config = {weight = 1000}},
            {"wardrobe", - 1467.7158203125, - 537.308349609375, 50.732494354248},
            {"gametable", - 1476.12670898438, - 534.895751953125, 55.547306060791},
            {"itemtr", _config = itemtr_kitchen, -1459.8557128906, -535.75994873047, 55.526397705078},
            --{"itemtr", _config = itemtr_study, -1475.39453125,-530.135192871094,55.5264129638672},
            --{"itemtr", _config = itemtr_laboratory, -1456.32409667969,-533.43701171875,56.9333839416504},
            --{"itemtr", _config = itemtr_hacker, -1452.95886230469,-528.371948242188,56.9289970397949}
        },
        {
            {"entry", - 907.900, - 370.608, 109.440},
            {"chest", - 914.79296875, - 375.26416015625, 109.448974609375, _config = {weight = 1000}},
            {"wardrobe", - 926.047912597656, - 381.470153808594, 103.243774414063},
            {"gametable", - 934.216979980469, - 378.082336425781, 108.05859375},
            {"itemtr", _config = itemtr_kitchen, -918.03533935547, -381.18743896484, 108.03772735596},
            -- {"itemtr", _config = itemtr_study, -932.810302734375,-373.413330078125,108.03776550293},
            -- {"itemtr", _config = itemtr_laboratory, -914.430541992188,-379.17333984375,109.444869995117},
            --{"itemtr", _config = itemtr_hacker, -910.40234375,-374.561859130859,109.440299987793}
        },
        {
            {"entry", - 921.124, - 381.099, 85.480},
            {"chest", - 915.268737792969, - 375.818084716797, 85.4891815185547, _config = {weight = 1000}},
            {"wardrobe", - 904.0673828125, - 369.910552978516, 79.2839508056641},
            {"gametable", - 895.890075683594, - 373.167846679688, 84.0987701416016},
            {"itemtr", _config = itemtr_kitchen, -911.94799804688, -369.71130371094, 84.077911376953},
            --{"itemtr", _config = itemtr_study, -897.224792480469,-377.828887939453,84.0779266357422},
            --{"itemtr", _config = itemtr_laboratory, -915.567504882813,-371.905731201172,85.4850234985352},
            --{"itemtr", _config = itemtr_hacker, -919.742492675781,-376.550506591797,85.4804763793945}
        },
        {
            {"entry", - 464.453, - 708.617, 77.086},
            {"chest", - 466.566558837891, - 700.528991699219, 77.0956268310547, _config = {weight = 1000}},
            {"wardrobe", - 466.892852783203, - 687.88720703125, 70.8903503417969},
            {"gametable", - 459.870513916016, - 682.054565429688, 75.7051773071289},
            {"itemtr", _config = itemtr_kitchen, -470.0764465332, -694.86181640625, 75.68433380127},
            --{"itemtr", _config = itemtr_study, -456.510467529297,-685.274841308594,75.6842498779297},
            --{"itemtr", _config = itemtr_laboratory, -470.110504150391,-699.137634277344,77.0915145874023},
            --{"itemtr", _config = itemtr_hacker, -467.985504150391,-704.850036621094,77.0868835449219}
        },
        {
            {"entry", - 470.647, - 689.459, 53.402},
            {"chest", - 469.077453613281, - 697.664672851563, 53.4144515991211, _config = {weight = 1000}},
            {"wardrobe", - 468.939910888672, - 710.398986816406, 47.2093048095703},
            {"gametable", - 475.543884277344, - 716.226867675781, 52.0241050720215},
            {"itemtr", _config = itemtr_kitchen, -465.66879272461, -703.28564453125, 52.003200531006},
            --{"itemtr", _config = itemtr_study, -479.113037109375,-712.874938964844,52.0032043457031},
            --{"itemtr", _config = itemtr_laboratory, -465.526031494141,-699.133666992188,53.4103393554688},
            --{"itemtr", _config = itemtr_hacker, -467.812896728516,-693.403869628906,53.4058074951172}
        }
    },

    ["apartments_02"] = { -- terst
        {
            {"entry", - 784.363, 323.792, 211.996},
            {"chest", - 766.744384765625, 328.375, 211.396545410156, _config = {weight = 1000}},
            {"wardrobe", - 793.502136230469, 326.861846923828, 210.796630859375},
            {"gametable", - 781.973083496094, 338.788482666016, 211.231979370117},
            {"itemtr", _config = itemtr_kitchen, -769.81079101563, 339.31039428711, 211.39706420898},
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        },
        {
            {"entry", - 603.997, 58.954, 98.200},
            {"chest", - 621.323669433594, 54.2074241638184, 97.5995330810547, _config = {weight = 1000}},
            {"wardrobe", - 594.668823242188, 55.5750961303711, 96.9996185302734},
            {"gametable", - 606.140441894531, 43.8849754333496, 97.4350128173828},
            {"itemtr", _config = itemtr_kitchen, -618.25427246094, 43.468120574951, 97.600028991699},
            -- {"itemtr", _config = itemtr_study, -608.968322753906,49.1769981384277,97.4001312255859},
            --{"itemtr", _config = itemtr_laboratory, -624.831909179688,55.5965461730957,97.5995635986328},
            --{"itemtr", _config = itemtr_hacker, -625.2353515625,50.4472694396973,97.5995254516602}
        },
        {
            {"entry", - 1453.013, - 539.629, 74.044},
            {"chest", - 1466.57763671875, - 528.339294433594, 73.4436492919922, _config = {weight = 1000}},
            {"wardrobe", - 1449.85034179688, - 549.231323242188, 72.8437194824219},
            {"gametable", - 1466.37182617188, - 546.663757324219, 73.279052734375},
            {"itemtr", _config = itemtr_kitchen, -1473.9970703125, -537.24102783203, 73.444152832031},
            -- {"itemtr", _config = itemtr_study, -1463.84411621094,-541.1962890625,73.2442169189453},
            --{"itemtr", _config = itemtr_laboratory, -1467.62377929688,-524.550842285156,73.4436492919922},
            --{"itemtr", _config = itemtr_hacker, -1472.04296875,-527.374267578125,73.4436416625977}
        },
        {
            {"entry", - 912.547, - 364.706, 114.274},
            {"chest", - 926.693176269531, - 377.596130371094, 113.674102783203, _config = {weight = 1000}},
            {"wardrobe", - 903.66650390625, - 364.023223876953, 113.074157714844},
            {"gametable", - 908.407165527344, - 379.825714111328, 113.509590148926},
            {"itemtr", _config = itemtr_kitchen, -918.69732666016, -386.31555175781, 113.67459869385},
            -- {"itemtr", _config = itemtr_study, -913.553588867188,-376.692016601563,113.474617004395},
            --{"itemtr", _config = itemtr_laboratory, -930.571899414063,-378.051239013672,113.674072265625},
            --{"itemtr", _config = itemtr_hacker, -928.425598144531,-382.820159912109,113.67407989502}
        }
    },

    ["apartments_03"] = {
        {
            {"entry", - 782.171, 324.589, 223.258},
            {"chest", - 773.718078613281, 325.144409179688, 223.266357421875, _config = {weight = 1000}},
            {"wardrobe", - 760.885437011719, 325.457153320313, 217.061080932617},
            {"gametable", - 755.40185546875, 318.263214111328, 221.875823974609},
            {"itemtr", _config = itemtr_kitchen, -767.68286132813, 328.66143798828, 221.85511779785},
            --{"itemtr", _config = itemtr_study, -758.670104980469,315.048156738281,221.854904174805},
            --{"itemtr", _config = itemtr_laboratory, -772.294372558594,328.913177490234,223.261581420898},
            --{"itemtr", _config = itemtr_hacker, -778.154296875,326.660491943359,223.25764465332}
        },
        {
            {"entry", - 774.171, 333.589, 207.621},
            {"chest", - 782.118591308594, 332.147399902344, 207.629608154297, _config = {weight = 1000}},
            {"wardrobe", - 795.118469238281, 331.631256103516, 201.42431640625},
            {"gametable", - 800.763427734375, 338.574951171875, 206.239105224609},
            {"itemtr", _config = itemtr_kitchen, -788.42242431641, 328.40460205078, 206.21838378906},
            --{"itemtr", _config = itemtr_study, -797.283447265625,342.134338378906,206.21842956543},
            --{"itemtr", _config = itemtr_laboratory, -783.788635253906,328.553985595703,207.625396728516},
            --{"itemtr", _config = itemtr_hacker, -777.960876464844,330.808135986328,207.620849609375}
        },
        {
            {"entry", - 774.171, 333.589, 159.998},
            {"chest", - 782.66015625, 332.523284912109, 160.010223388672, _config = {weight = 1000}},
            {"wardrobe", - 795.550964355469, 332.229614257813, 153.804931640625},
            {"gametable", - 801.228942871094, 339.106231689453, 158.619750976563},
            {"itemtr", _config = itemtr_kitchen, -788.65606689453, 328.82748413086, 158.59898376465},
            --{"itemtr", _config = itemtr_study, -797.896728515625,342.543273925781,158.599044799805},
            --{"itemtr", _config = itemtr_laboratory, -784.178588867188,328.916839599609,160.006057739258},
            --{"itemtr", _config = itemtr_hacker, -778.430236816406,331.083160400391,160.001556396484}
        },
        {
            {"entry", - 596.689, 59.139, 108.030},
            {"chest", - 604.427001953125, 57.0807762145996, 108.035743713379, _config = {weight = 1000}},
            {"wardrobe", - 617.180358886719, 56.9536590576172, 101.830520629883},
            {"gametable", - 623.078796386719, 63.688045501709, 106.645317077637},
            {"itemtr", _config = itemtr_kitchen, -610.02136230469, 53.406833648682, 106.62447357178},
            --{"itemtr", _config = itemtr_study, -619.724853515625,67.1367950439453,106.624366760254},
            --{"itemtr", _config = itemtr_laboratory, -605.9560546875,53.3968696594238,108.031196594238},
            --{"itemtr", _config = itemtr_hacker, -600.219604492188,55.7631721496582,108.027030944824}
        },
        {
            {"entry", - 1451.557, - 523.546, 69.556},
            {"chest", - 1457.28601074219, - 529.699523925781, 69.565315246582, _config = {weight = 1000}},
            {"wardrobe", - 1467.07995605469, - 536.98583984375, 63.3601188659668},
            {"gametable", - 1476.12658691406, - 534.873474121094, 68.1748962402344},
            {"itemtr", _config = itemtr_kitchen, -1459.6524658203, -535.80712890625, 68.154037475586},
            --{"itemtr", _config = itemtr_study, -1475.36840820313,-530.117126464844,68.1540756225586},
            --{"itemtr", _config = itemtr_laboratory, -1456.35876464844,-533.55029296875,69.5607528686523},
            --{"itemtr", _config = itemtr_hacker, -1452.96923828125,-528.350952148438,69.5566177368164}
        },
        {
            {"entry", - 1452.185, - 522.640, 56.929},
            {"chest", - 1457.3740234375, - 529.737854003906, 56.9376449584961, _config = {weight = 1000}},
            {"wardrobe", - 1467.7158203125, - 537.308349609375, 50.732494354248},
            {"gametable", - 1476.12670898438, - 534.895751953125, 55.547306060791},
            {"itemtr", _config = itemtr_kitchen, -1459.8557128906, -535.75994873047, 55.526397705078},
            --{"itemtr", _config = itemtr_study, -1475.39453125,-530.135192871094,55.5264129638672},
            --{"itemtr", _config = itemtr_laboratory, -1456.32409667969,-533.43701171875,56.9333839416504},
            --{"itemtr", _config = itemtr_hacker, -1452.95886230469,-528.371948242188,56.9289970397949}
        },
        {
            {"entry", - 907.900, - 370.608, 109.440},
            {"chest", - 914.79296875, - 375.26416015625, 109.448974609375, _config = {weight = 1000}},
            {"wardrobe", - 926.047912597656, - 381.470153808594, 103.243774414063},
            {"gametable", - 934.216979980469, - 378.082336425781, 108.05859375},
            {"itemtr", _config = itemtr_kitchen, -918.03533935547, -381.18743896484, 108.03772735596},
            -- {"itemtr", _config = itemtr_study, -932.810302734375,-373.413330078125,108.03776550293},
            -- {"itemtr", _config = itemtr_laboratory, -914.430541992188,-379.17333984375,109.444869995117},
            --{"itemtr", _config = itemtr_hacker, -910.40234375,-374.561859130859,109.440299987793}
        },
        {
            {"entry", - 921.124, - 381.099, 85.480},
            {"chest", - 915.268737792969, - 375.818084716797, 85.4891815185547, _config = {weight = 1000}},
            {"wardrobe", - 904.0673828125, - 369.910552978516, 79.2839508056641},
            {"gametable", - 895.890075683594, - 373.167846679688, 84.0987701416016},
            {"itemtr", _config = itemtr_kitchen, -911.94799804688, -369.71130371094, 84.077911376953},
            --{"itemtr", _config = itemtr_study, -897.224792480469,-377.828887939453,84.0779266357422},
            --{"itemtr", _config = itemtr_laboratory, -915.567504882813,-371.905731201172,85.4850234985352},
            --{"itemtr", _config = itemtr_hacker, -919.742492675781,-376.550506591797,85.4804763793945}
        },
        {
            {"entry", - 464.453, - 708.617, 77.086},
            {"chest", - 466.566558837891, - 700.528991699219, 77.0956268310547, _config = {weight = 1000}},
            {"wardrobe", - 466.892852783203, - 687.88720703125, 70.8903503417969},
            {"gametable", - 459.870513916016, - 682.054565429688, 75.7051773071289},
            {"itemtr", _config = itemtr_kitchen, -470.0764465332, -694.86181640625, 75.68433380127},
            --{"itemtr", _config = itemtr_study, -456.510467529297,-685.274841308594,75.6842498779297},
            --{"itemtr", _config = itemtr_laboratory, -470.110504150391,-699.137634277344,77.0915145874023},
            --{"itemtr", _config = itemtr_hacker, -467.985504150391,-704.850036621094,77.0868835449219}
        },
        {
            {"entry", - 470.647, - 689.459, 53.402},
            {"chest", - 469.077453613281, - 697.664672851563, 53.4144515991211, _config = {weight = 1000}},
            {"wardrobe", - 468.939910888672, - 710.398986816406, 47.2093048095703},
            {"gametable", - 475.543884277344, - 716.226867675781, 52.0241050720215},
            {"itemtr", _config = itemtr_kitchen, -465.66879272461, -703.28564453125, 52.003200531006},
            --{"itemtr", _config = itemtr_study, -479.113037109375,-712.874938964844,52.0032043457031},
            --{"itemtr", _config = itemtr_laboratory, -465.526031494141,-699.133666992188,53.4103393554688},
            --{"itemtr", _config = itemtr_hacker, -467.812896728516,-693.403869628906,53.4058074951172}
        }
    },

    ["apartments_04"] = {
        {
            {"entry", - 782.171, 324.589, 223.258},
            {"chest", - 773.718078613281, 325.144409179688, 223.266357421875, _config = {weight = 1000}},
            {"wardrobe", - 760.885437011719, 325.457153320313, 217.061080932617},
            {"gametable", - 755.40185546875, 318.263214111328, 221.875823974609},
            {"itemtr", _config = itemtr_kitchen, -767.68286132813, 328.66143798828, 221.85511779785},
            --{"itemtr", _config = itemtr_study, -758.670104980469,315.048156738281,221.854904174805},
            --{"itemtr", _config = itemtr_laboratory, -772.294372558594,328.913177490234,223.261581420898},
            --{"itemtr", _config = itemtr_hacker, -778.154296875,326.660491943359,223.25764465332}
        },
        {
            {"entry", - 774.171, 333.589, 207.621},
            {"chest", - 782.118591308594, 332.147399902344, 207.629608154297, _config = {weight = 1000}},
            {"wardrobe", - 795.118469238281, 331.631256103516, 201.42431640625},
            {"gametable", - 800.763427734375, 338.574951171875, 206.239105224609},
            {"itemtr", _config = itemtr_kitchen, -788.42242431641, 328.40460205078, 206.21838378906},
            --{"itemtr", _config = itemtr_study, -797.283447265625,342.134338378906,206.21842956543},
            --{"itemtr", _config = itemtr_laboratory, -783.788635253906,328.553985595703,207.625396728516},
            --{"itemtr", _config = itemtr_hacker, -777.960876464844,330.808135986328,207.620849609375}
        },
        {
            {"entry", - 774.171, 333.589, 159.998},
            {"chest", - 782.66015625, 332.523284912109, 160.010223388672, _config = {weight = 1000}},
            {"wardrobe", - 795.550964355469, 332.229614257813, 153.804931640625},
            {"gametable", - 801.228942871094, 339.106231689453, 158.619750976563},
            {"itemtr", _config = itemtr_kitchen, -788.65606689453, 328.82748413086, 158.59898376465},
            --{"itemtr", _config = itemtr_study, -797.896728515625,342.543273925781,158.599044799805},
            --{"itemtr", _config = itemtr_laboratory, -784.178588867188,328.916839599609,160.006057739258},
            --{"itemtr", _config = itemtr_hacker, -778.430236816406,331.083160400391,160.001556396484}
        },
        {
            {"entry", - 596.689, 59.139, 108.030},
            {"chest", - 604.427001953125, 57.0807762145996, 108.035743713379, _config = {weight = 1000}},
            {"wardrobe", - 617.180358886719, 56.9536590576172, 101.830520629883},
            {"gametable", - 623.078796386719, 63.688045501709, 106.645317077637},
            {"itemtr", _config = itemtr_kitchen, -610.02136230469, 53.406833648682, 106.62447357178},
            --{"itemtr", _config = itemtr_study, -619.724853515625,67.1367950439453,106.624366760254},
            --{"itemtr", _config = itemtr_laboratory, -605.9560546875,53.3968696594238,108.031196594238},
            --{"itemtr", _config = itemtr_hacker, -600.219604492188,55.7631721496582,108.027030944824}
        },
        {
            {"entry", - 1451.557, - 523.546, 69.556},
            {"chest", - 1457.28601074219, - 529.699523925781, 69.565315246582, _config = {weight = 1000}},
            {"wardrobe", - 1467.07995605469, - 536.98583984375, 63.3601188659668},
            {"gametable", - 1476.12658691406, - 534.873474121094, 68.1748962402344},
            {"itemtr", _config = itemtr_kitchen, -1459.6524658203, -535.80712890625, 68.154037475586},
            --{"itemtr", _config = itemtr_study, -1475.36840820313,-530.117126464844,68.1540756225586},
            --{"itemtr", _config = itemtr_laboratory, -1456.35876464844,-533.55029296875,69.5607528686523},
            --{"itemtr", _config = itemtr_hacker, -1452.96923828125,-528.350952148438,69.5566177368164}
        },
        {
            {"entry", - 1452.185, - 522.640, 56.929},
            {"chest", - 1457.3740234375, - 529.737854003906, 56.9376449584961, _config = {weight = 1000}},
            {"wardrobe", - 1467.7158203125, - 537.308349609375, 50.732494354248},
            {"gametable", - 1476.12670898438, - 534.895751953125, 55.547306060791},
            {"itemtr", _config = itemtr_kitchen, -1459.8557128906, -535.75994873047, 55.526397705078},
            --{"itemtr", _config = itemtr_study, -1475.39453125,-530.135192871094,55.5264129638672},
            --{"itemtr", _config = itemtr_laboratory, -1456.32409667969,-533.43701171875,56.9333839416504},
            --{"itemtr", _config = itemtr_hacker, -1452.95886230469,-528.371948242188,56.9289970397949}
        },
        {
            {"entry", - 907.900, - 370.608, 109.440},
            {"chest", - 914.79296875, - 375.26416015625, 109.448974609375, _config = {weight = 1000}},
            {"wardrobe", - 926.047912597656, - 381.470153808594, 103.243774414063},
            {"gametable", - 934.216979980469, - 378.082336425781, 108.05859375},
            {"itemtr", _config = itemtr_kitchen, -918.03533935547, -381.18743896484, 108.03772735596},
            -- {"itemtr", _config = itemtr_study, -932.810302734375,-373.413330078125,108.03776550293},
            -- {"itemtr", _config = itemtr_laboratory, -914.430541992188,-379.17333984375,109.444869995117},
            --{"itemtr", _config = itemtr_hacker, -910.40234375,-374.561859130859,109.440299987793}
        },
        {
            {"entry", - 921.124, - 381.099, 85.480},
            {"chest", - 915.268737792969, - 375.818084716797, 85.4891815185547, _config = {weight = 1000}},
            {"wardrobe", - 904.0673828125, - 369.910552978516, 79.2839508056641},
            {"gametable", - 895.890075683594, - 373.167846679688, 84.0987701416016},
            {"itemtr", _config = itemtr_kitchen, -911.94799804688, -369.71130371094, 84.077911376953},
            --{"itemtr", _config = itemtr_study, -897.224792480469,-377.828887939453,84.0779266357422},
            --{"itemtr", _config = itemtr_laboratory, -915.567504882813,-371.905731201172,85.4850234985352},
            --{"itemtr", _config = itemtr_hacker, -919.742492675781,-376.550506591797,85.4804763793945}
        },
        {
            {"entry", - 464.453, - 708.617, 77.086},
            {"chest", - 466.566558837891, - 700.528991699219, 77.0956268310547, _config = {weight = 1000}},
            {"wardrobe", - 466.892852783203, - 687.88720703125, 70.8903503417969},
            {"gametable", - 459.870513916016, - 682.054565429688, 75.7051773071289},
            {"itemtr", _config = itemtr_kitchen, -470.0764465332, -694.86181640625, 75.68433380127},
            --{"itemtr", _config = itemtr_study, -456.510467529297,-685.274841308594,75.6842498779297},
            --{"itemtr", _config = itemtr_laboratory, -470.110504150391,-699.137634277344,77.0915145874023},
            --{"itemtr", _config = itemtr_hacker, -467.985504150391,-704.850036621094,77.0868835449219}
        },
        {
            {"entry", - 470.647, - 689.459, 53.402},
            {"chest", - 469.077453613281, - 697.664672851563, 53.4144515991211, _config = {weight = 1000}},
            {"wardrobe", - 468.939910888672, - 710.398986816406, 47.2093048095703},
            {"gametable", - 475.543884277344, - 716.226867675781, 52.0241050720215},
            {"itemtr", _config = itemtr_kitchen, -465.66879272461, -703.28564453125, 52.003200531006},
            --{"itemtr", _config = itemtr_study, -479.113037109375,-712.874938964844,52.0032043457031},
            --{"itemtr", _config = itemtr_laboratory, -465.526031494141,-699.133666992188,53.4103393554688},
            --{"itemtr", _config = itemtr_hacker, -467.812896728516,-693.403869628906,53.4058074951172}
        }
    },
    ["apartments_05"] = {
        {
            {"entry", - 782.171, 324.589, 223.258},
            {"chest", - 773.718078613281, 325.144409179688, 223.266357421875, _config = {weight = 1000}},
            {"wardrobe", - 760.885437011719, 325.457153320313, 217.061080932617},
            {"gametable", - 755.40185546875, 318.263214111328, 221.875823974609},
            {"itemtr", _config = itemtr_kitchen, -767.68286132813, 328.66143798828, 221.85511779785},
            --{"itemtr", _config = itemtr_study, -758.670104980469,315.048156738281,221.854904174805},
            --{"itemtr", _config = itemtr_laboratory, -772.294372558594,328.913177490234,223.261581420898},
            --{"itemtr", _config = itemtr_hacker, -778.154296875,326.660491943359,223.25764465332}
        },
        {
            {"entry", - 774.171, 333.589, 207.621},
            {"chest", - 782.118591308594, 332.147399902344, 207.629608154297, _config = {weight = 1000}},
            {"wardrobe", - 795.118469238281, 331.631256103516, 201.42431640625},
            {"gametable", - 800.763427734375, 338.574951171875, 206.239105224609},
            {"itemtr", _config = itemtr_kitchen, -788.42242431641, 328.40460205078, 206.21838378906},
            --{"itemtr", _config = itemtr_study, -797.283447265625,342.134338378906,206.21842956543},
            --{"itemtr", _config = itemtr_laboratory, -783.788635253906,328.553985595703,207.625396728516},
            --{"itemtr", _config = itemtr_hacker, -777.960876464844,330.808135986328,207.620849609375}
        },
        {
            {"entry", - 774.171, 333.589, 159.998},
            {"chest", - 782.66015625, 332.523284912109, 160.010223388672, _config = {weight = 1000}},
            {"wardrobe", - 795.550964355469, 332.229614257813, 153.804931640625},
            {"gametable", - 801.228942871094, 339.106231689453, 158.619750976563},
            {"itemtr", _config = itemtr_kitchen, -788.65606689453, 328.82748413086, 158.59898376465},
            --{"itemtr", _config = itemtr_study, -797.896728515625,342.543273925781,158.599044799805},
            --{"itemtr", _config = itemtr_laboratory, -784.178588867188,328.916839599609,160.006057739258},
            --{"itemtr", _config = itemtr_hacker, -778.430236816406,331.083160400391,160.001556396484}
        },
        {
            {"entry", - 596.689, 59.139, 108.030},
            {"chest", - 604.427001953125, 57.0807762145996, 108.035743713379, _config = {weight = 1000}},
            {"wardrobe", - 617.180358886719, 56.9536590576172, 101.830520629883},
            {"gametable", - 623.078796386719, 63.688045501709, 106.645317077637},
            {"itemtr", _config = itemtr_kitchen, -610.02136230469, 53.406833648682, 106.62447357178},
            --{"itemtr", _config = itemtr_study, -619.724853515625,67.1367950439453,106.624366760254},
            --{"itemtr", _config = itemtr_laboratory, -605.9560546875,53.3968696594238,108.031196594238},
            --{"itemtr", _config = itemtr_hacker, -600.219604492188,55.7631721496582,108.027030944824}
        },
        {
            {"entry", - 1451.557, - 523.546, 69.556},
            {"chest", - 1457.28601074219, - 529.699523925781, 69.565315246582, _config = {weight = 1000}},
            {"wardrobe", - 1467.07995605469, - 536.98583984375, 63.3601188659668},
            {"gametable", - 1476.12658691406, - 534.873474121094, 68.1748962402344},
            {"itemtr", _config = itemtr_kitchen, -1459.6524658203, -535.80712890625, 68.154037475586},
            --{"itemtr", _config = itemtr_study, -1475.36840820313,-530.117126464844,68.1540756225586},
            --{"itemtr", _config = itemtr_laboratory, -1456.35876464844,-533.55029296875,69.5607528686523},
            --{"itemtr", _config = itemtr_hacker, -1452.96923828125,-528.350952148438,69.5566177368164}
        },
        {
            {"entry", - 1452.185, - 522.640, 56.929},
            {"chest", - 1457.3740234375, - 529.737854003906, 56.9376449584961, _config = {weight = 1000}},
            {"wardrobe", - 1467.7158203125, - 537.308349609375, 50.732494354248},
            {"gametable", - 1476.12670898438, - 534.895751953125, 55.547306060791},
            {"itemtr", _config = itemtr_kitchen, -1459.8557128906, -535.75994873047, 55.526397705078},
            --{"itemtr", _config = itemtr_study, -1475.39453125,-530.135192871094,55.5264129638672},
            --{"itemtr", _config = itemtr_laboratory, -1456.32409667969,-533.43701171875,56.9333839416504},
            --{"itemtr", _config = itemtr_hacker, -1452.95886230469,-528.371948242188,56.9289970397949}
        },
        {
            {"entry", - 907.900, - 370.608, 109.440},
            {"chest", - 914.79296875, - 375.26416015625, 109.448974609375, _config = {weight = 1000}},
            {"wardrobe", - 926.047912597656, - 381.470153808594, 103.243774414063},
            {"gametable", - 934.216979980469, - 378.082336425781, 108.05859375},
            {"itemtr", _config = itemtr_kitchen, -918.03533935547, -381.18743896484, 108.03772735596},
            -- {"itemtr", _config = itemtr_study, -932.810302734375,-373.413330078125,108.03776550293},
            -- {"itemtr", _config = itemtr_laboratory, -914.430541992188,-379.17333984375,109.444869995117},
            --{"itemtr", _config = itemtr_hacker, -910.40234375,-374.561859130859,109.440299987793}
        },
        {
            {"entry", - 921.124, - 381.099, 85.480},
            {"chest", - 915.268737792969, - 375.818084716797, 85.4891815185547, _config = {weight = 1000}},
            {"wardrobe", - 904.0673828125, - 369.910552978516, 79.2839508056641},
            {"gametable", - 895.890075683594, - 373.167846679688, 84.0987701416016},
            {"itemtr", _config = itemtr_kitchen, -911.94799804688, -369.71130371094, 84.077911376953},
            --{"itemtr", _config = itemtr_study, -897.224792480469,-377.828887939453,84.0779266357422},
            --{"itemtr", _config = itemtr_laboratory, -915.567504882813,-371.905731201172,85.4850234985352},
            --{"itemtr", _config = itemtr_hacker, -919.742492675781,-376.550506591797,85.4804763793945}
        },
        {
            {"entry", - 464.453, - 708.617, 77.086},
            {"chest", - 466.566558837891, - 700.528991699219, 77.0956268310547, _config = {weight = 1000}},
            {"wardrobe", - 466.892852783203, - 687.88720703125, 70.8903503417969},
            {"gametable", - 459.870513916016, - 682.054565429688, 75.7051773071289},
            {"itemtr", _config = itemtr_kitchen, -470.0764465332, -694.86181640625, 75.68433380127},
            --{"itemtr", _config = itemtr_study, -456.510467529297,-685.274841308594,75.6842498779297},
            --{"itemtr", _config = itemtr_laboratory, -470.110504150391,-699.137634277344,77.0915145874023},
            --{"itemtr", _config = itemtr_hacker, -467.985504150391,-704.850036621094,77.0868835449219}
        },
        {
            {"entry", - 470.647, - 689.459, 53.402},
            {"chest", - 469.077453613281, - 697.664672851563, 53.4144515991211, _config = {weight = 1000}},
            {"wardrobe", - 468.939910888672, - 710.398986816406, 47.2093048095703},
            {"gametable", - 475.543884277344, - 716.226867675781, 52.0241050720215},
            {"itemtr", _config = itemtr_kitchen, -465.66879272461, -703.28564453125, 52.003200531006},
            --{"itemtr", _config = itemtr_study, -479.113037109375,-712.874938964844,52.0032043457031},
            --{"itemtr", _config = itemtr_laboratory, -465.526031494141,-699.133666992188,53.4103393554688},
            --{"itemtr", _config = itemtr_hacker, -467.812896728516,-693.403869628906,53.4058074951172}
        }
    },
    -- Cheap Houses
    ["cheaphouse_01"] = {
        {
            {"entry", 266.18344116211, - 1007.5275268555, - 101.00854492188},
            {"chest", 265.89135742188, - 999.16387939453, - 99.008583068848, _config = {weight = 500}},
            {"wardrobe", 259.85131835938, - 1003.8620605469, - 99.008583068848},
            {"itemtr", _config = itemtr_kitchen, 265.37005615234, -996.1142578125, -99.008598327637},
            --{"gametable",-781.973083496094,338.788482666016,211.231979370117}
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }
    },
    ["cheaphouse_02"] = {
        {
            {"entry", 266.18344116211, - 1007.5275268555, - 101.00854492188},
            {"chest", 265.89135742188, - 999.16387939453, - 99.008583068848, _config = {weight = 500}},
            {"wardrobe", 259.85131835938, - 1003.8620605469, - 99.008583068848},
            {"itemtr", _config = itemtr_kitchen, 265.37005615234, -996.1142578125, -99.008598327637},
            --{"gametable",-781.973083496094,338.788482666016,211.231979370117}
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }
    },
    ["cheaphouse_03"] = {
        {
            {"entry", 266.18344116211, - 1007.5275268555, - 101.00854492188},
            {"chest", 265.89135742188, - 999.16387939453, - 99.008583068848, _config = {weight = 500}},
            {"wardrobe", 259.85131835938, - 1003.8620605469, - 99.008583068848},
            {"itemtr", _config = itemtr_kitchen, 265.37005615234, -996.1142578125, -99.008598327637},
            --{"gametable",-781.973083496094,338.788482666016,211.231979370117}
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }
    },
    ["cheaphouse_04"] = {
        {
            {"entry", 266.18344116211, - 1007.5275268555, - 101.00854492188},
            {"chest", 265.89135742188, - 999.16387939453, - 99.008583068848, _config = {weight = 500}},
            {"wardrobe", 259.85131835938, - 1003.8620605469, - 99.008583068848},
            {"itemtr", _config = itemtr_kitchen, 265.37005615234, -996.1142578125, -99.008598327637},
            --{"gametable",-781.973083496094,338.788482666016,211.231979370117}
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }
    },
    ["cheaphouse_05"] = {
        {
            {"entry", 266.18344116211, - 1007.5275268555, - 101.00854492188},
            {"chest", 265.89135742188, - 999.16387939453, - 99.008583068848, _config = {weight = 500}},
            {"wardrobe", 259.85131835938, - 1003.8620605469, - 99.008583068848},
            {"itemtr", _config = itemtr_kitchen, 265.37005615234, -996.1142578125, -99.008598327637},
            --{"gametable",-781.973083496094,338.788482666016,211.231979370117}
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }
    },
    ["cheaphouse_06"] = {
        {
            {"entry", 266.18344116211, - 1007.5275268555, - 101.00854492188},
            {"chest", 265.89135742188, - 999.16387939453, - 99.008583068848, _config = {weight = 500}},
            {"wardrobe", 259.85131835938, - 1003.8620605469, - 99.008583068848},
            {"itemtr", _config = itemtr_kitchen, 265.37005615234, -996.1142578125, -99.008598327637},
            --{"gametable",-781.973083496094,338.788482666016,211.231979370117}
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }
    },
    ["cheaphouse_07"] = {
        {
            {"entry", 266.18344116211, - 1007.5275268555, - 101.00854492188},
            {"chest", 265.89135742188, - 999.16387939453, - 99.008583068848, _config = {weight = 500}},
            {"wardrobe", 259.85131835938, - 1003.8620605469, - 99.008583068848},
            {"itemtr", _config = itemtr_kitchen, 265.37005615234, -996.1142578125, -99.008598327637},
            --{"gametable",-781.973083496094,338.788482666016,211.231979370117}
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }
    },


    -- Beach Houses
    ["beachhouse_01"] = { -- 2133 Mad Wayne Thunder
        {
            {"entry", - 1289.8505859375, 449.41665649414, 97.902519226074},
            {"chest", - 1287.9752197266, 455.57751464844, 90.294692993164, _config = {weight = 750}},
            {"wardrobe", - 1286.1096191406, 437.84994506836, 94.09481048584},
            {"gametable", - 1286.6052246094, 432.55169677734, 97.522277832031},
            {"itemtr", _config = itemtr_kitchen, -1284.7794189453, 445.61001586914, 97.894691467285},
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }
    },
    ["beachhouse_02"] = { -- 2133 Mad Wayne Thunder
        {
            {"entry", - 173.98661804199, 496.94943237305, 137.6669921875},
            {"chest", - 174.310546875, 493.84652709961, 130.04371643066, _config = {weight = 750}},
            {"wardrobe", - 167.03958129883, 488.14254760742, 133.84379577637},
            {"gametable", - 166.99108886719, 482.29800415039, 137.26550292969},
            {"itemtr", _config = itemtr_kitchen, -167.0747833252, 495.54299926758, 137.65357971191},
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }
    },
    -- Vine Houses
    ["vinehouse_01"] = { -- 2133 Mad Wayne Thunder
        {
            {"entry", - 1289.8505859375, 449.41665649414, 97.902519226074},
            {"chest", - 1287.9752197266, 455.57751464844, 90.294692993164, _config = {weight = 2000}},
            {"wardrobe", - 1286.1096191406, 437.84994506836, 94.09481048584},
            {"gametable", - 1286.6052246094, 432.55169677734, 97.522277832031},
            {"itemtr", _config = itemtr_kitchen, -1284.7794189453, 445.61001586914, 97.894691467285},
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }
    },
    ["vinehouse_03"] = { -- 2133 Mad Wayne Thunder
        {
            {"entry", - 1289.8505859375, 449.41665649414, 97.902519226074},
            {"chest", - 1287.9752197266, 455.57751464844, 90.294692993164, _config = {weight = 900}},
            {"wardrobe", - 1286.1096191406, 437.84994506836, 94.09481048584},
            {"gametable", - 1286.6052246094, 432.55169677734, 97.522277832031},
            {"itemtr", _config = itemtr_kitchen, -1284.7794189453, 445.61001586914, 97.894691467285},
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }
    },
    ["vinehouse_02"] = { -- 2133 Mad Wayne Thunder
        {
            {"entry", - 173.98661804199, 496.94943237305, 137.6669921875},
            {"chest", - 174.310546875, 493.84652709961, 130.04371643066, _config = {weight = 2000}},
            {"wardrobe", - 167.03958129883, 488.14254760742, 133.84379577637},
            {"gametable", - 166.99108886719, 482.29800415039, 137.26550292969},
            {"itemtr", _config = itemtr_kitchen, -167.0747833252, 495.54299926758, 137.65357971191},
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }
    },
    -- Mansions
    ["mansion_01"] = {
        {
            {"entry", - 774.74200439453, 342.02062988281, 196.68644714355},
            {"chest", - 765.94415283203, 331.51928710938, 196.0860748291, _config = {weight = 5000}},
            {"wardrobe", - 762.85308837891, 328.88027954102, 199.48867797852},
            {"gametable", - 774.99877929688, 318.30819702148, 195.9227142334},
            {"itemtr", _config = itemtr_kitchen, -778.86761474609, 327.13641357422, 196.08598327637},
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }

    },

    ["mansion_02"] = {
        {
            {"entry", - 774.74200439453, 342.02062988281, 196.68644714355},
            {"chest", - 765.94415283203, 331.51928710938, 196.0860748291, _config = {weight = 6000}},
            {"wardrobe", - 762.85308837891, 328.88027954102, 199.48867797852},
            {"gametable", - 774.99877929688, 318.30819702148, 195.9227142334},
            {"itemtr", _config = itemtr_kitchen, -778.86761474609, 327.13641357422, 196.08598327637},
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }

    },

    ["mansion_03"] = {
        {
            {"entry", - 774.74200439453, 342.02062988281, 196.68644714355},
            {"chest", - 765.94415283203, 331.51928710938, 196.0860748291, _config = {weight = 7000}},
            {"wardrobe", - 762.85308837891, 328.88027954102, 199.48867797852},
            {"gametable", - 774.99877929688, 318.30819702148, 195.9227142334},
            {"itemtr", _config = itemtr_kitchen, -778.86761474609, 327.13641357422, 196.08598327637},
            --{"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898},
            -- {"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
            --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
        }

    },

    --- Businesses
    ["plantation_flat"] = {
        {
            {"entry", 1906.6708984375, 3711.19384765625, 32.8070220947266},
            {"chest", 1903.47888183594, 3715.30200195313, 32.7704811096191, _config = {weight = 500}},
            {"wardrobe", 1902.52734375, 3714.08325195313, 32.7693138122559},
            {"gametable", - 102.721557617188, 2817.1640625, 53.1586837768555},
            {"itemtr", _config = itemtr_laboratory, 1900.09545898438, 3711.39282226563, 32.767204284668}
        },
    }
}

cfg.homes = {
    ["Sundale Apartments"] = {
        slot = "apartments_01",
        entry_point = { - 635.665, 44.155, 42.697},
        buy_price = 600000,
        sell_price = 300000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Seaside Apartments"] = {
        slot = "apartments_02",
        entry_point = { - 1446.769, - 538.531, 34.740},
        buy_price = 600000,
        sell_price = 300000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Real Apartments"] = {
        slot = "apartments_03",
        entry_point = { - 270.06497192383, - 957.7294921875, 31.223129272461},
        buy_price = 600000,
        sell_price = 300000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Raleside Apartments"] = {
        slot = "apartments_04",
        entry_point = { - 264.12719726563, - 959.89477539063, 31.223129272461},
        buy_price = 600000,
        sell_price = 300000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Jinway Apartments"] = {
        slot = "apartments_05",
        entry_point = { - 47.192813873291, - 585.90869140625, 37.953037261963},
        buy_price = 600000,
        sell_price = 300000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    -- Cheap House
    ["Cheap House 01"] = {
        slot = "cheaphouse_01",
        entry_point = {170.34069824219, - 1871.0430908203, 24.400234222412},
        buy_price = 50000,
        sell_price = 25000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Cheap House 02"] = {
        slot = "cheaphouse_02",
        entry_point = {130.48016357422, - 1853.7473144531, 25.234796524048},
        buy_price = 50000,
        sell_price = 25000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Cheap House 03"] = {
        slot = "cheaphouse_03",
        entry_point = {53.71800994873, - 1873.8394775391, 22.63035774231},
        buy_price = 50000,
        sell_price = 25000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Cheap House 04"] = {
        slot = "cheaphouse_04",
        entry_point = {495.32553100586, - 1823.2912597656, 28.869703292847},
        buy_price = 50000,
        sell_price = 25000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Cheap House 05"] = {
        slot = "cheaphouse_05",
        entry_point = {474.69973754883, - 1757.7108154297, 29.092336654663},
        buy_price = 50000,
        sell_price = 25000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Cheap House 06"] = {
        slot = "cheaphouse_06",
        entry_point = { - 46.406589508057, - 1446.0021972656, 32.429599761963},
        buy_price = 50000,
        sell_price = 25000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Cheap House 07"] = {
        slot = "cheaphouse_07",
        entry_point = {16.901012420654, - 1443.9825439453, 30.94934463501},
        buy_price = 50000,
        sell_price = 25000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    -- Beach Houses
    ["Beach House 01"] = {
        slot = "beachhouse_01",
        entry_point = { - 3100.0009765625, 211.42239379883, 14.070214271545},
        buy_price = 300000,
        sell_price = 150000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Beach House 02"] = {
        slot = "beachhouse_02",
        entry_point = { - 3093.7634277344, 349.42279052734, 7.5440983772278},
        buy_price = 300000,
        sell_price = 150000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Beach House 03"] = {
        slot = "beachhouse_01",
        entry_point = { - 3088.7712402344, 392.19720458984, 11.450889587402},
        buy_price = 300000,
        sell_price = 150000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Beach House 04"] = {
        slot = "beachhouse_02",
        entry_point = { - 3078.0476074219, 659.08959960938, 11.66823387146},
        buy_price = 300000,
        sell_price = 150000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    -- Paleto Houses
    ["Paleto House 01"] = {
        slot = "vinehouse_03",
        entry_point = { - 130.58122253418, 6551.9985351563, 29.872177124023},
        buy_price = 400000,
        sell_price = 200000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Paleto House 02"] = {
        slot = "vinehouse_03",
        entry_point = { - 368.14477539063, 6341.3520507813, 29.843647003174},
        buy_price = 400000,
        sell_price = 200000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    -- Vine Houses
    ["Vinewood House 01"] = {
        slot = "vinehouse_01",
        entry_point = {166.95069885254, 473.75390625, 142.51322937012},
        buy_price = 1500000,
        sell_price = 750000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Vinewood House 02"] = {
        slot = "vinehouse_02",
        entry_point = {80.681861877441, 485.89529418945, 148.20156860352},
        buy_price = 1500000,
        sell_price = 750000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Vinewood House 03"] = {
        slot = "vinehouse_01",
        entry_point = {107.31491851807, 467.91271972656, 147.37396240234},
        buy_price = 1500000,
        sell_price = 750000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Vinewood House 04"] = {
        slot = "vinehouse_02",
        entry_point = { - 354.53610229492, 470.02471923828, 112.51850128174},
        buy_price = 1500000,
        sell_price = 750000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Vinewood House 05"] = {
        slot = "vinehouse_01",
        entry_point = { - 355.57876586914, 459.52340698242, 116.46737670898},
        buy_price = 1500000,
        sell_price = 750000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Vinewood House 06"] = {
        slot = "vinehouse_02",
        entry_point = { - 305.20928955078, 430.99114990234, 110.48238372803},
        buy_price = 1500000,
        sell_price = 750000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Vinewood House 07"] = {
        slot = "vinehouse_01",
        entry_point = { - 400.51916503906, 427.40106201172, 112.34136199951},
        buy_price = 1500000,
        sell_price = 750000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Vinewood House 08"] = {
        slot = "vinehouse_02",
        entry_point = { - 678.90808105469, 511.77136230469, 113.52604675293},
        buy_price = 1500000,
        sell_price = 750000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Vinewood House 09"] = {
        slot = "vinehouse_01",
        entry_point = { - 718.63916015625, 448.93826293945, 106.90914916992},
        buy_price = 1500000,
        sell_price = 750000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Vinewood House 10"] = {
        slot = "vinehouse_02",
        entry_point = { - 825.09899902344, 423.0524597168, 92.114364624023},
        buy_price = 1500000,
        sell_price = 750000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Vinewood House 11"] = {
        slot = "vinehouse_01",
        entry_point = { - 873.08508300781, 562.53955078125, 96.619506835938},
        buy_price = 1500000,
        sell_price = 750000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Vinewood House 12"] = {
        slot = "vinehouse_02",
        entry_point = { - 1673.2824707031, 386.10702514648, 89.348297119141},
        buy_price = 1500000,
        sell_price = 750000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    -- Mansions
    ["Mansion 01"] = {
        slot = "mansion_01",
        entry_point = { - 1931.3208007813, 362.61923217773, 93.975776672363},
        buy_price = 5000000,
        sell_price = 2500000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Mansion 02"] = {
        slot = "mansion_01",
        entry_point = { - 2008.4484863281, 366.77478027344, 94.814315795898},
        buy_price = 5000000,
        sell_price = 2500000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Mansion 03"] = {
        slot = "mansion_01",
        entry_point = { - 1943.6705322266, 449.36422729492, 102.92749023438},
        buy_price = 5000000,
        sell_price = 2500000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Mansion 04"] = {
        slot = "mansion_01",
        entry_point = { - 1465.3780517578, - 34.278411865234, 55.050457000732},
        buy_price = 5000000,
        sell_price = 2500000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Mansion 05"] = {
        slot = "mansion_01",
        entry_point = { - 1548.7512207031, - 89.299011230469, 54.929176330566},
        buy_price = 5000000,
        sell_price = 2500000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Mansion 06"] = {
        slot = "mansion_01",
        entry_point = { - 929.64025878906, 18.589931488037, 47.865501403809},
        buy_price = 5000000,
        sell_price = 2500000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Mansion 07"] = {
        slot = "mansion_01",
        entry_point = { - 896.07269287109, - 4.5561814308167, 43.798919677734},
        buy_price = 5000000,
        sell_price = 2500000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Mansion 08"] = {
        slot = "mansion_01",
        entry_point = { - 842.05841064453, - 25.242256164551, 40.398399353027},
        buy_price = 5000000,
        sell_price = 2500000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Mansion 09"] = {
        slot = "mansion_01",
        entry_point = { - 830.51116943359, 115.13666534424, 56.025623321533},
        buy_price = 5000000,
        sell_price = 2500000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Mansion 10"] = {
        slot = "mansion_01",
        entry_point = { - 998.35919189453, 158.14129638672, 62.318813323975},
        buy_price = 5000000,
        sell_price = 2500000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Mansion 11"] = {
        slot = "mansion_02",
        entry_point = { - 113.238, 985.824, 235.754},
        buy_price = 8000000,
        sell_price = 4000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Mansion 12"] = {
        slot = "mansion_03",
        entry_point = { - 2588.0, 1910.9375, 167.49894714355},
        buy_price = 10000000,
        sell_price = 5000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Paleto Bay Facility"] = {
        slot = "facility_01",
        entry_point = {4.9648733139038, 6840.5942382813, 15.786159515381},
        buy_price = 50000000,
        sell_price = 25000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Mount Gordo Facility"] = {
        slot = "facility_01",
        entry_point = {3404.5668945313, 5495.3642578125, 26.24715423584},
        buy_price = 50000000,
        sell_price = 25000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Sandy Shores Facility"] = {
        slot = "facility_01",
        entry_point = {2775.2600097656, 3913.0573730469, 45.786937713623},
        buy_price = 50000000,
        sell_price = 25000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Grand Senora Desert Facility"] = {
        slot = "facility_01",
        entry_point = {1281.2705078125, 2853.0390625, 49.363178253174},
        buy_price = 50000000,
        sell_price = 25000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Zancudo River Facility"] = {
        slot = "facility_01",
        entry_point = {-15.844653129578, 3329.2624511719, 41.600143432617},
        buy_price = 50000000,
        sell_price = 25000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Lago Zancudo Facility"] = {
        slot = "facility_01",
        entry_point = {-2222.1899414063, 2419.3876953125, 12.15016078949},
        buy_price = 50000000,
        sell_price = 25000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Route 68 Facility"] = {
        slot = "facility_01",
        entry_point = {13.447340965271, 2618.751953125, 85.969207763672},
        buy_price = 50000000,
        sell_price = 25000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Ron Alternates Wind Farm Facility"] = {
        slot = "facility_01",
        entry_point = {2067.357421875, 1755.3452148438, 104.48314666748},
        buy_price = 50000000,
        sell_price = 25000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Land Act Reservoir Facility"] = {
        slot = "facility_01",
        entry_point = {1882.1716308594, 279.54504394531, 164.27406311035},
        buy_price = 50000000,
        sell_price = 25000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Sandy Shores House 01"] = {
        slot = "cheaphouse_01",
        entry_point = {1662.1782226563, 3820.517578125, 35.469757080078},
        buy_price = 50000,
        sell_price = 25000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Grapeseed House 01"] = {
        slot = "cheaphouse_02",
        entry_point = {1718.9334716797, 4677.3916015625, 43.655788421631},
        buy_price = 50000,
        sell_price = 25000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Great Chaparral House 01"] = {
        slot = "cheaphouse_03",
        entry_point = {-43.847114562988, 1960.1241455078, 190.35333251953},
        buy_price = 50000,
        sell_price = 25000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Bunker 01"] = {
        slot = "bunker_01",
        entry_point = {-3172.5021972656, 1375.3063964844, 18.688335418701},
        buy_price = 50000000,
        sell_price = 25000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Bunker 02"] = {
        slot = "bunker_01",
        entry_point = {1814.7071533203, 4706.5883789063, 41.538543701172},
        buy_price = 50000000,
        sell_price = 25000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Bunker 03"] = {
        slot = "bunker_01",
        entry_point = {2118.5275878906, 3331.046875, 46.723114013672},
        buy_price = 50000000,
        sell_price = 25000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Bunker 04"] = {
        slot = "bunker_01",
        entry_point = {-391.09243774414, 4354.2353515625, 57.674869537354},
        buy_price = 50000000,
        sell_price = 25000000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
    ["Ranch 01"] = {
        slot = "ranch_01",
        entry_point = {1394.4489746094, 1141.8684082031, 114.60940551758},
        buy_price = 150000,
        sell_price = 75000,
        max = 99,
        blipid = 40,
        blipcolor = 4
    },
}

return cfg


