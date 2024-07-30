TARDIS:AddInteriorTemplate("tardis2010_intportals", {
	Interior = {
		Parts = {
			tardis2010_corridordoors12_static 	= false,
			tardis2010_corridordoors15_static 	= false,

			tardis2010_corridordoors12_portal 	= {},
			tardis2010_corridordoors15_portal 	= {},
		},
		CustomPortals = {
			intportal = {
				entry = {
					pos = Vector(828.87341, -627.82385, 112),
					ang = Angle(0, -90, 0),
					fallback = Vector(-714,537,102),
					width = 60,
					height = 100,
					link = "tardis2010_corridordoors12_portal"
				},
				exit = {
					pos = Vector(-716.78595, 553.15112, 144),
					ang = Angle(0, -81.12609, 0),
					fallback = Vector(828, -643, 70),
					width = 60, height = 100,
					link = "tardis2010_corridordoors12_portal"
				}
			},
			intportal2 = {
				entry = {
					pos = Vector(463.19858, 742.70459, 144.3),
					ang = Angle(0, -81.12609, 0),
					fallback = Vector(624, -527 ,-87),
					width = 60,
					height = 100,
					link = "tardis2010_corridordoors15_portal"
				},
				exit = {
					pos = Vector(628.81195, -542.46033, -45),
					ang = Angle(0, 108.853505, 0),
					fallback = Vector(465, 727, 102),
					width = 60,
					height = 100,
					link = "tardis2010_corridordoors15_portal"
				}
			}
		},
	},
})

TARDIS:AddInteriorTemplate("tardis2010_no_corridors", {
	Interior = {
		ExitDistance = 600,
		Parts = {
			-- we can't disable corridors themselves since doorframes are required
			-- but it's still less laggy
			--tardis2010_corridors1 				= false,
			--tardis2010_corridors2 				= false,
			--tardis2010_corridors3 				= false,
			tardis2010_corridordoors1 			= false,
			tardis2010_corridordoors2 			= false,
			tardis2010_corridordoors3 			= false,
			tardis2010_corridordoors4 			= false,
			tardis2010_corridordoors5 			= false,
			tardis2010_corridordoors6 			= false,
			tardis2010_corridordoors7 			= false,
			tardis2010_corridordoors8 			= false,
			tardis2010_corridordoors9 			= false,
			tardis2010_corridordoors10 			= false,
			tardis2010_corridordoors11 			= false,
			tardis2010_corridordoors12_static 	= false,
			tardis2010_corridordoors12_portal 	= false,
			tardis2010_corridordoors13 			= false,
			tardis2010_corridordoors14 			= false,
			tardis2010_corridordoors15_static	= false,
			tardis2010_corridordoors15_portal 	= false,

			tardis2010_corridordoors1_static	= {},
			tardis2010_corridordoors4_static	= {},
			tardis2010_corridordoors7_static	= {},
		},
		CustomPortals = false,
	},
})

TARDIS:AddInteriorTemplate("tardis2010_no_lights", {
	Interior = {
		Lights = false,
		Light = {
			brightness = 8,
		}
	},
})

TARDIS:AddInteriorTemplate("tardis2010_no_lamps", {
	Interior = {
		Lamps = false,
	},
})