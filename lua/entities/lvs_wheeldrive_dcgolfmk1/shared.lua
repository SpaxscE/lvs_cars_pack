
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Volkswagen Golf GTi Mk1"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/vw_golf_mk1/golf_mk1.mdl"

ENT.MaxVelocity = 2000

ENT.EngineTorque = 90

ENT.TransGears = 5
ENT.TransGearsReverse = 1

ENT.RandomColor = {Color(180,0,0),Color(235,235,235),Color(70,70,70),Color(20,20,20),Color(130,130,130),Color(19,22,30),Color(54,98,95)}

ENT.HornSound = "lvs/horn4.wav"
ENT.HornPos = Vector(40,0,35)

ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/miata/eng_idle_loop.wav",
		Volume = 1,
		Pitch = 85,
		PitchMul = 25,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/miata/eng_loop.wav",
		Volume = 1,
		Pitch = 60,
		PitchMul = 96,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/miata/eng_revdown_loop.wav",
		Volume = 1,
		Pitch = 60,
		PitchMul = 96,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_DOWN,
		UseDoppler = true,
	},
}

ENT.ExhaustPositions = {
	{
		pos = Vector(-69.18,20.1,11.44),
		ang = Angle(0,150,0),
	}
}

ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 4,
		Sprites = {
			{ pos = Vector(71.13,22.35,26.27), colorB = 200, colorA = 150 },
			{ pos = Vector(71.13,-22.35,26.27), colorB = 200, colorA = 150 },
			{ width = 15, height = 15, pos = Vector(71.13,22.35,26.27), colorB = 200, colorA = 150 },
			{ width = 15, height = 15, pos = Vector(71.13,-22.35,26.27), colorB = 200, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(71.13,22.35,26.27), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(71.13,-22.35,26.27), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 28,
	},
	{
		Trigger = "main",
		SubMaterialID = 7,
	},
	{
	Trigger = "high",
		SubMaterialID = 19,
		Sprites = {
			{ pos = Vector(71.13,22.35,26.27), colorB = 200, colorA = 150, bodygroup = { name = "headlights", active = { 0 } }, },
			{ pos = Vector(71.13,-22.35,26.27), colorB = 200, colorA = 150, bodygroup = { name = "headlights", active = { 0 } },  },
			{ pos = Vector(72.4,15.24,26.71), colorB = 200, colorA = 150, bodygroup = { name = "headlights", active = { 1 } }, },
			{ pos = Vector(72.4,-15.24,26.71), colorB = 200, colorA = 150, bodygroup = { name = "headlights", active = { 1 } },  },
		},

		ProjectedTextures = {
			{ pos = Vector(71.13,22.35,26.27), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(71.13,-22.35,26.27), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},

	},

	{
		Trigger = "main",
		SubMaterialID = 21,
		Sprites = {
			{ pos = Vector(-69.75,20.91,28.64), colorG = 0, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 0 } }, },
			{ pos = Vector(-69.75,-20.91,28.64), colorG = 0, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 0 } }, },

			{ pos = Vector(-69.81,22.84,25.57), colorG = 0, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 1 } }, },
			{ pos = Vector(-69.81,-22.84,25.57), colorG = 0, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 1 } }, },
		}
	},

	{
		Trigger = "brake",
		SubMaterialID = 20,
		Sprites = {
			{ pos = Vector(-69.59,20.92,26.47), colorG = 0, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 0 } }, },
			{ pos = Vector(-69.59,-20.92,26.47), colorG = 0, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 0 } }, },

			{ pos = Vector(-69.64,13.96,25.55), colorG = 0, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 1 } }, },
			{ pos = Vector(-69.64,-13.96,25.55), colorG = 0, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 1 } }, },
			{ pos = Vector(-69.64,13.96,28.35), colorG = 0, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 1 } }, },
			{ pos = Vector(-69.64,-13.96,28.35), colorG = 0, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 1 } }, },
		}
	},

	{
		Trigger = "reverse",
		SubMaterialID = 22,
		Sprites = {
			{ pos = Vector(-69.81,17.53,27.47), colorA = 150, bodygroup = { name = "taillights", active = { 0 } }, },
			{ pos = Vector(-69.81,-17.53,27.47), colorA = 150, bodygroup = { name = "taillights", active = { 0 } }, },

			{ pos = Vector(-69.72,18.63,28.38), colorA = 150, bodygroup = { name = "taillights", active = { 1 } }, },
			{ pos = Vector(-69.72,-18.63,28.38), colorA = 150, bodygroup = { name = "taillights", active = { 1 } }, },
		}
	},

	{
		Trigger = "turnright",
		SubMaterialID = 16,
		Sprites = {
			{ width = 25, height = 25, pos = Vector(74.48,-23.61,20.26), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 0 } }, },
			{ width = 25, height = 25, pos = Vector(74.48,-23.61,20.26), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 1 } }, },
			{ width = 25, height = 25, pos = Vector(75.83,-23.45,19.65), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 2 } }, },

			{ width = 35, height = 35, pos = Vector(-69.66,-24.54,27.59), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 0 } }, },
			{ width = 35, height = 35, pos = Vector(-69.75,-23.27,28.42), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 1 } }, },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 15,
		Sprites = {
			{ width = 25, height = 25, pos = Vector(74.48,23.61,20.26), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 0 } }, },
			{ width = 25, height = 25, pos = Vector(74.48,23.61,20.26), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 1 } }, },
			{ width = 25, height = 25, pos = Vector(75.83,23.45,19.65), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 2 } }, },

			{ width = 35, height = 35, pos = Vector(-69.66,24.54,27.59), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 0 } }, },
			{ width = 35, height = 35, pos = Vector(-69.75,23.27,28.42), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 1 } }, },
		},
	},
}


