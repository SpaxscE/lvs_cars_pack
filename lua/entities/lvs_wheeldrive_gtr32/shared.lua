
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Nissan Skyline (BNR32)"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/nissan_skyline_gtr32/bnr32.mdl"

ENT.MaxVelocity = 2750

ENT.EngineCurve = 0.15
ENT.EngineTorque = 125
ENT.EngineIdleRPM = 1000
ENT.EngineMaxRPM = 8500

ENT.TransGears = 6
ENT.TransGearsReverse = 1

ENT.PhysicsMass = 1100

ENT.WheelPhysicsMass = 100

ENT.HornSound = "lvs/horn4.wav"
ENT.HornPos = Vector(40,0,35)

ENT.RandomColor = {
	Color(35,34,33),
	Color(222,222,222),
	Color(80,80,80),
	Color(11,11,11),
	Color(62,6,6),
}

ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/skyline/eng_idle_loop.wav",
		Volume = 1,
		Pitch = 85,
		PitchMul = 25,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/skyline/eng_loop.wav",
		Volume = 1,
		Pitch = 50,
		PitchMul = 75,
		SoundLevel = 105,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/skyline/eng_revdown_loop.wav",
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
		pos = Vector(-88.91,19.75,5.24),
		ang = Angle(0,180,0),
	}
}



ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 18,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(82.61,21.23,16.73), colorB = 200, colorA = 150, width = 60, height = 60 },
			{ pos = Vector(82.61,-21.23,16.73), colorB = 200, colorA = 150, width = 60, height = 60 },
		},
		ProjectedTextures = {
			{ pos = Vector(81.61,21.23,16.73), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(81.61,-21.23,16.73), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 24,
		SubMaterialBrightness = 10,
		Sprites = {
			{ width = 65, height = 65, pos = Vector(-85.37,26.66,22.3), colorG = 0, colorB = 0, colorA = 20 },
			{ width = 65, height = 65, pos = Vector(-85.37,-26.66,22.3), colorG = 0, colorB = 0, colorA = 20 },
			{ width = 65, height = 65, pos = Vector(-86.64,17.2,22.23), colorG = 0, colorB = 0, colorA = 20 },
			{ width = 65, height = 65, pos = Vector(-86.64,-17.2,22.23), colorG = 0, colorB = 0, colorA = 20 },
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 25,
		SubMaterialBrightness = 20,
	},

	{
		Trigger = "high",
		SubMaterialID = 16,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(85.43,-16.13,16.45), colorB = 200, colorA = 150 },
			{ pos = Vector(85.43,16.13,16.45), colorB = 200, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(85.43,-16.13,16.45), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(85.43,16.13,16.45), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},

	{
		Trigger = "reverse",
		SubMaterialID = 21,
		SubMaterialBrightness = 20,
		Sprites = {

			{ pos = Vector(-89.33,-8.26,12.41), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-89.33,8.26,12.41), height = 25, width = 25, colorA = 150 },

		}
	},

	{
		Trigger = "turnright",
		SubMaterialID = 15,
		SubMaterialBrightness = 20,
		Sprites = {
			{ width = 45, height = 45,  pos = Vector(-88,-21.67,22.44), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(78.97,-28.98,16.29), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 14,
		SubMaterialBrightness = 20,
		Sprites = {
			{ width = 45, height = 45, pos = Vector(-88,21.67,22.44), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(78.97,28.98,16.29), colorG = 100, colorB = 0, colorA = 50 },

		},
	},

}


