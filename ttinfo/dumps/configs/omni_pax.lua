--[[ omni_pax CONFIG 1/1 (client/cfg_pax.lua) ]]--
ls_routeNB = {
	{
        _data = {name = "San Andreas PAX Northbound", extra = 1},
        {name = "La Mesa", x = 664.61596679688, y = -1054.2720947266, z = 21.749744415283, h = 340.356598},
        {name = "Tataviam Mountains", x = 2624.2807617188, y = 69.274353027344, z = 93.298599243164, h = 340.356598},
        {name = "Davis Quartz", x = 2613.84765625, y = 2942.9262695313, z = 39.438655853271, h = 340.356598},
        {name = "Sandy Shores", x = 1957.1993408203, y = 3594.33203125, z = 37.952209472656, h = 340.356598},
        {name = "Paleto Bay", x = -305.24319458008, y = 5972.2822265625, z = 38.502990722656, h = 340.356598},
    }
}

ls_routeSB = {
	{
        _data = {name = "San Andreas PAX Southbound", extra = 1},
        {name = "Grapeseed / SCMR", x = 2905.7446289063, y = 4829.677734375, z = 62.382148742676, h = 340.356598},
        {name = "Davis Quartz", x = 2596.9812011719, y = 2909.3583984375, z = 38.869571685791, h = 340.356598},
        {name = "Palmer-Taylor Power Station", x = 2611.0075683594, y = 1660.1267089844, z = 26.788070678711, h = 340.356598},
        {name = "Tataviam Mountains", x = 2614.5388183594, y = 25.088817596436, z = 93.261703491211, h = 340.356598},
        {name = "La Mesa", x = 669.27294921875, y = -1108.2435302734, z = 23.19966506958, h = 340.356598},
        {name = "Elysian Island", x = 217.44602966309, y = -2437.29296875, z = 6.5276184082031, h = 340.356598},
    }
}
-- Job Start markers
job_starts = {
    {name = "San Andreas PAX Northbound", x = 217.44602966309, y = -2437.29296875, z = 6.5276184082031, tier = 1, routes = ls_routeNB},
    {name = "San Andreas PAX Southbound", x = -305.24319458008, y = 5972.2822265625, z = 38.502990722656, tier = 1, routes = ls_routeSB},
}

-- Vehicles plus tiers
job_vehicles = {
    -- {name = "6F01", tier = 1},
    -- {name = "TGV01", tier = 2},
    -- {name = "ICE301", tier = 2},
    -- {name = "E701", tier = 3},
    -- {name = "E401", tier = 1},
    {name = "PASSENGER_ICE_TINY", tier = 1},
    {name = "PASSENGER_ICE_SHORT", tier = 4},
    {name = "PASSENGER_ICE_MEDIUM", tier = 7},
    {name = "PASSENGER_ICE_LONG", tier = 10},

    {name = "PASSENGER_E7_TINY", tier = 2},
    {name = "PASSENGER_E7_SHORT", tier = 5},
    {name = "PASSENGER_E7_MEDIUM", tier = 8},
    {name = "PASSENGER_E7_LONG", tier = 10},

    {name = "PASSENGER_6F_TINY", tier = 3},
    {name = "PASSENGER_6F_SHORT", tier = 6},
    {name = "PASSENGER_6F_MEDIUM", tier = 9},
	{name = "PASSENGER_6F_LONG", tier = 10},

    {name = "PASSENGER_AT_SHORT", tier = 10},
    {name = "PASSENGER_AT_MEDIUM", tier = 10},
    {name = "PASSENGER_AT_LONG", tier = 10},

    {name = "PASSENGER_E4_TINY", tier = 1},
    {name = "PASSENGER_E4_SHORT", tier = 2},
    {name = "PASSENGER_E4_MEDIUM", tier = 3},
    {name = "PASSENGER_E4_LONG", tier = 4},
}


