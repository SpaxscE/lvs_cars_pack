
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Nissan Silvia S15"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/nissan_silvias15/s15.mdl"

ENT.MaxVelocity = 2750

ENT.EngineCurve = 0.15
ENT.EngineTorque = 125
ENT.EngineIdleRPM = 1000
ENT.EngineMaxRPM = 8500

ENT.TransGears = 6
ENT.TransGearsReverse = 1

ENT.WheelPhysicsMass = 120

ENT.HornSound = "lvs/horn4.wav"
ENT.HornPos = Vector(40,0,35)

ENT.RandomColor = {
	Color(100,100,100),
	Color(213,219,227),
	Color(12,18,74),
	Color(20,20,20),
	Color(120,0,0),
	Color(204,181,25),
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
		pos = Vector(-87.22,18.78,5.97),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-87.64,16.34,5.95),
		ang = Angle(0,180,0),
	}
}


ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 18,
		SubMaterialBrightness = 1,
		Sprites = {
			{ pos = Vector(75.81,-23.53,17.61), colorB = 200, colorA = 150, width = 60, height = 60 },
			{ pos = Vector(75.81,23.53,17.61), colorB = 200, colorA = 150, width = 60, height = 60 },
		},
		ProjectedTextures = {
			{ pos = Vector(75.81,-23.53,17.61), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(75.81,23.53,17.61), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 5,
	},

	{
		Trigger = "main+brake",
		SubMaterialID = 16,
		SubMaterialBrightness = 10,
		Sprites = {
			{ width = 35, height = 15, pos = Vector(-83.03,-26.9,24.1), colorG = 0, colorB = 0, colorA = 150 },
			{ width = 35, height = 15, pos = Vector(-83.03,26.9,24.1), colorG = 0, colorB = 0, colorA = 150 },
			{ width = 35, height = 15, pos = Vector(-84.91,-21.67,23.98), colorG = 0, colorB = 0, colorA = 150 },
			{ width = 35, height = 15, pos = Vector(-84.91,21.67,23.98), colorG = 0, colorB = 0, colorA = 150 },
		},
	},

	{
		Trigger = "brake",
		SubMaterialID = 28,
		SubMaterialBrightness = 25,
	},
	{
		Trigger = "high",
		SubMaterialID = 15,
		Sprites = {
			{ pos = Vector(76.36,-15.38,17.08), colorB = 200, colorA = 150 },
			{ pos = Vector(76.36,15.38,17.08), colorB = 200, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(76.36,-15.38,17.08), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(76.36,15.38,17.08), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 27,
		Sprites = {
			{ pos = Vector(81.64,21.6,7.63), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_bumper", active = { 0 } }, },
			{ pos = Vector(81.64,-21.6,7.63), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_bumper", active = { 0 } }, },
		},
	},

	{
		Trigger = "reverse",
		SubMaterialID = 10,
		SubMaterialBrightness = 25,
		Sprites = {

			{ pos = Vector(-86.56,-16.85,23.9), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-86.56,16.85,23.9), height = 25, width = 25, colorA = 150 },

		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 13,
		SubMaterialBrightness = 10,
		Sprites = {
			{ width = 45, height = 25,  pos = Vector(-83.21,-25.8,26.93), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 45, pos = Vector(31.71,-33.79,14.73), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(73.75,-28.07,17.86), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 14,
		SubMaterialBrightness = 10,
		Sprites = {
			{ width = 45, height = 25, pos = Vector(-83.21,25.8,26.93), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 45, pos = Vector(31.71,33.79,14.73), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(73.75,28.07,17.86), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
}

