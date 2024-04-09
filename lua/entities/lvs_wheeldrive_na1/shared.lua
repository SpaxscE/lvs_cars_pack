
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Honda NSX (NA1)"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/honda_nsx/na1.mdl"

ENT.MaxVelocity = 2800

ENT.EngineCurve = 0.15
ENT.EngineTorque = 140
ENT.EngineIdleRPM = 1000
ENT.EngineMaxRPM = 10000

ENT.TransGears = 5
ENT.TransGearsReverse = 1

ENT.PhysicsMass = 1050

ENT.WheelSideForce = 1000
ENT.WheelDownForce = 500

ENT.WheelPhysicsMass = 100

ENT.HornSound = "lvs/horn4.wav"
ENT.HornPos = Vector(40,0,35)
ENT.RandomColor = {
	Color(230,227,223),
	Color(232,233,232),
	Color(180,180,180),
	Color(224,173,22),
	Color(98,0,6),
	Color(14,16,12),
	Color(80,80,80),
	Color(40,40,40),
	Color(10,10,10),
}
ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/nsx/nsx_idle.wav",
		Volume = 0.7,
		Pitch = 85,
		PitchMul = 25,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/nsx/nsx_high.wav",
		Volume = 1,
		Pitch = 50,
		PitchMul = 65,
		SoundLevel = 105,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/nsx/nsx_revdown.wav",
		Volume = 1,
		Pitch = 50,
		PitchMul = 75,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_DOWN,
		UseDoppler = true,
	},
}

ENT.ExhaustPositions = {
	{
		pos = Vector(-86.06,22.2,5.96),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-86.06,-22.2,5.96),
		ang = Angle(0,180,0),
	},
}



ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 13,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(74.5,25.19,20), colorB = 200, colorA = 150, width = 60, height = 60, bodygroup = { name = "Headlights", active = { 0 } }, },
			{ pos = Vector(74.5,-25.19,20), colorB = 200, colorA = 150, width = 60, height = 60, bodygroup = { name = "Headlights", active = { 0 } }, },
			{ pos = Vector(74.57,25.09,19.15), colorB = 200, colorA = 150, width = 60, height = 60, bodygroup = { name = "Headlights", active = { 1 } }, },
			{ pos = Vector(74.57,-25.09,19.15), colorB = 200, colorA = 150, width = 60, height = 60, bodygroup = { name = "Headlights", active = { 1 } }, },
			{ pos = Vector(66.43,25.47,19.46), colorB = 200, colorA = 150, width = 60, height = 60, bodygroup = { name = "Headlights", active = { 2 } }, },
			{ pos = Vector(66.43,-25.47,19.46), colorB = 200, colorA = 150, width = 60, height = 60, bodygroup = { name = "Headlights", active = { 2 } }, },

			{ pos = Vector(78.14,27.07,12.59), colorB = 200, colorA = 150, width = 20, height = 20, bodygroup = { name = "Front_Bumper", active = { 0 } }, },
			{ pos = Vector(78.14,-27.07,12.59), colorB = 200, colorA = 150, width = 20, height = 20, bodygroup = { name = "Front_Bumper", active = { 0 } }, },
			{ pos = Vector(78.14,27.07,12.59), colorB = 200, colorA = 150, width = 20, height = 20, bodygroup = { name = "Front_Bumper", active = { 1 } }, },
			{ pos = Vector(78.14,-27.07,12.59), colorB = 200, colorA = 150, width = 20, height = 20, bodygroup = { name = "Front_Bumper", active = { 1 } }, },
			{ pos = Vector(78.14,27.07,12.59), colorB = 200, colorA = 150, width = 20, height = 20, bodygroup = { name = "Front_Bumper", active = { 2 } }, },
			{ pos = Vector(78.14,-27.07,12.59), colorB = 200, colorA = 150, width = 20, height = 20, bodygroup = { name = "Front_Bumper", active = { 2 } }, },

			{ width = 65, height = 65, pos = Vector(-84.42,11.48,25.57), colorG = 0, colorB = 0, colorA = 40, bodygroup = { name = "taillights", active = { 0 } },},
			{ width = 65, height = 65, pos = Vector(-84.42,-11.48,25.57), colorG = 0, colorB = 0, colorA = 40, bodygroup = { name = "taillights", active = { 0 } },},
			{ width = 65, height = 65, pos = Vector(-80.42,11.48,25.57), colorG = 0, colorB = 0, colorA = 40, bodygroup = { name = "taillights", active = { 1 } },},
			{ width = 65, height = 65, pos = Vector(-80.42,-11.48,25.57), colorG = 0, colorB = 0, colorA = 40, bodygroup = { name = "taillights", active = { 1 } },},
		},
		ProjectedTextures = {
			{ pos = Vector(74.5,25.19,20), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Headlights", active = { 0 } }, },
			{ pos = Vector(74.5,-25.19,20), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Headlights", active = { 0 } }, },
			{ pos = Vector(74.57,25.09,19.15), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Headlights", active = { 1 } }, },
			{ pos = Vector(74.57,-25.09,19.15), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Headlights", active = { 1 } }, },
			{ pos = Vector(66.43,25.47,19.46), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Headlights", active = { 2 } }, },
			{ pos = Vector(66.43,-25.47,19.46), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Headlights", active = { 2 } }, },
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 18,
		SubMaterialBrightness = 10,
		Sprites = {
			{ width = 65, height = 65, pos = Vector(-84.34,16.52,25.57), colorG = 0, colorB = 0, colorA = 40, bodygroup = { name = "taillights", active = { 0 } },},
			{ width = 65, height = 65, pos = Vector(-83.95,21.13,25.51), colorG = 0, colorB = 0, colorA = 40, bodygroup = { name = "taillights", active = { 0 } },},
			{ width = 65, height = 65, pos = Vector(-84.34,-16.52,25.57), colorG = 0, colorB = 0, colorA = 40, bodygroup = { name = "taillights", active = { 0 } },},
			{ width = 65, height = 65, pos = Vector(-83.95,-21.13,25.51), colorG = 0, colorB = 0, colorA = 40, bodygroup = { name = "taillights", active = { 0 } },},
			{ width = 65, height = 65, pos = Vector(-80.34,16.52,25.57), colorG = 0, colorB = 0, colorA = 40, bodygroup = { name = "taillights", active = { 1 } },},
			{ width = 65, height = 65, pos = Vector(-79.95,21.13,25.51), colorG = 0, colorB = 0, colorA = 40, bodygroup = { name = "taillights", active = { 1 } },},
			{ width = 65, height = 65, pos = Vector(-80.34,-16.52,25.57), colorG = 0, colorB = 0, colorA = 40, bodygroup = { name = "taillights", active = { 1 } },},
			{ width = 65, height = 65, pos = Vector(-79.95,-21.13,25.51), colorG = 0, colorB = 0, colorA = 40, bodygroup = { name = "taillights", active = { 1 } },},
		},
	},

	{
		Trigger = "brake",
		SubMaterialID = 28,
		SubMaterialBrightness = 100,
	},

	{
		Trigger = "high",
		SubMaterialID = 12,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(75.21,20.77,20.09), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 0 } }, },
			{ pos = Vector(75.21,-20.77,20.09), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 0 } }, },
			{ pos = Vector(74.97,20.91,19.23), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 1 } }, },
			{ pos = Vector(74.97,-20.91,19.23), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 1 } }, },
			{ pos = Vector(67.09,21.42,19.49), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 2 } }, },
			{ pos = Vector(67.09,-21.42,19.49), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 2 } }, },
		},
		ProjectedTextures = {
			{ pos = Vector(75.21,20.77,20.09), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Headlights", active = { 0 } }, },
			{ pos = Vector(75.21,-20.77,20.09), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Headlights", active = { 0 } }, },
			{ pos = Vector(74.97,20.91,19.23), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Headlights", active = { 1 } }, },
			{ pos = Vector(74.97,-20.91,19.23), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Headlights", active = { 1 } }, },
			{ pos = Vector(67.09,21.42,19.49), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Headlights", active = { 2 } }, },
			{ pos = Vector(67.09,-21.42,19.49), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Headlights", active = { 2 } }, },
		},
	},

	{
		Trigger = "reverse",
		SubMaterialID = 16,
		SubMaterialBrightness = 20,
		Sprites = {
			{ pos = Vector(-84.32,7.17,25.52), height = 25, width = 25, colorA = 150, bodygroup = { name = "taillights", active = { 0 } }, },
			{ pos = Vector(-84.32,-7.17,25.52), height = 25, width = 25, colorA = 150, bodygroup = { name = "taillights", active = { 0 } }, },
			{ pos = Vector(-80.32,7.17,25.52), height = 25, width = 25, colorA = 150, bodygroup = { name = "taillights", active = { 1 } }, },
			{ pos = Vector(-80.32,-7.17,25.52), height = 25, width = 25, colorA = 150, bodygroup = { name = "taillights", active = { 1 } }, },
		}
	},

	{
		Trigger = "turnright",
		SubMaterialID = 19,
		SubMaterialBrightness = 20,
		Sprites = {
			{ width = 35, height = 25,  pos = Vector(81.08,-22.38,12.3), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Bumper", active = { 0 } }, },
			{ width = 35, height = 25,  pos = Vector(81.08,-22.38,12.3), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Bumper", active = { 1 } }, },
			{ width = 35, height = 25,  pos = Vector(81.08,-22.38,12.3), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Bumper", active = { 2 } }, },
			{ width = 25, height = 25,  pos = Vector(35.89,-35.15,19.09), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Fenders", active = { 0 } }, },
			{ width = 25, height = 25,  pos = Vector(36.64,-37.77,19.11), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Fenders", active = { 2 } }, },
			{ width = 35, height = 35, pos = Vector(-83.16,-27.3,25.26), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 0 } }, },
			{ width = 35, height = 35, pos = Vector(-79.16,-27.3,25.26), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 1 } }, },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 17,
		SubMaterialBrightness = 20,
		Sprites = {
			{ width = 35, height = 25,  pos = Vector(81.08,22.38,12.3), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Bumper", active = { 0 } }, },
			{ width = 35, height = 25,  pos = Vector(81.08,22.38,12.3), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Bumper", active = { 1 } }, },
			{ width = 35, height = 25,  pos = Vector(81.08,22.38,12.3), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Bumper", active = { 2 } }, },
			{ width = 25, height = 25,  pos = Vector(35.89,35.15,19.09), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Fenders", active = { 0 } }, },
			{ width = 25, height = 25,  pos = Vector(36.64,37.77,19.11), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Fenders", active = { 2 } }, },
			{ width = 35, height = 35, pos = Vector(-83.16,27.3,25.26), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 0 } }, },
			{ width = 35, height = 35, pos = Vector(-79.16,27.3,25.26), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 1 } }, },
		},
	},




	{
		Trigger = "main+brake",
		SubMaterialID = 20,
		SubMaterialBrightness = 20,
		Sprites = {
			{ width = 105, height = 50, pos = Vector(-83.95,21.13,25.51), colorG = 0, colorB = 0, colorA = 40, bodygroup = { name = "taillights", active = { 2 } },},
			{ width = 105, height = 50, pos = Vector(-83.95,-21.13,25.51), colorG = 0, colorB = 0, colorA = 40, bodygroup = { name = "taillights", active = { 2 } },},
		},
	},
	{
		Trigger = "reverse",
		SubMaterialID = 22,
		SubMaterialBrightness = 20,
		Sprites = {
			{ pos = Vector(-84.32,7.17,25.52), height = 25, width = 25, colorA = 150, bodygroup = { name = "taillights", active = { 2 } }, },
			{ pos = Vector(-84.32,-7.17,25.52), height = 25, width = 25, colorA = 150, bodygroup = { name = "taillights", active = { 2 } }, },
		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 23,
		SubMaterialBrightness = 20,
		Sprites = {
			{ width = 100, height = 40, pos = Vector(-83.95,-21.13,25.51), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 2 } }, },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 24,
		SubMaterialBrightness = 20,
		Sprites = {
			{ width = 100, height = 40, pos = Vector(-83.95,21.13,25.51), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 2 } }, },
		},
	},
}


