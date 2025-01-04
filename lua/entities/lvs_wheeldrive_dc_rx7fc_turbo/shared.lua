
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Mazda RX-7 Turbo FC3S"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/mazda_rx7fc/rx7_turbo.mdl"

ENT.EnableDSPEffects = true

ENT.MaxVelocity = 2400

ENT.EngineTorque = 80
ENT.EngineIdleRPM = 1000
ENT.EngineMaxRPM = 8000

ENT.TransGears = 5
ENT.TransGearsReverse = 1

ENT.RandomColor = {
	Color(179,179,179),
	Color(77,77,77),
	Color(40,40,40),
	Color(98,5,5),
	Color(24,32,69),
}

ENT.ExhaustPositions = {
	{
		pos = Vector(-89.83,-20.89,4.15),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-89.83,20.89,4.15),
		ang = Angle(0,180,0),
	},
}

ENT.HornSound = "lvs/horn2.wav"
ENT.HornPos = Vector(40,0,35)

ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/rx7/rx7fc_idle.wav",
		Volume = 1,
		Pitch = 85,
		PitchMul = 25,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/rx7/rx7fc_rev.wav",
		Volume = 1,
		Pitch = 60,
		PitchMul = 90,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_NONE,
		UseDoppler = true,
	},
}


ENT.Lights = {
	{
		Trigger = "main",
		ProjectedTextures = {
			{ pos = Vector(71.62,20.83,19.79), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(71.62,-20.83,19.79), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 20,
	},
	{
		Trigger = "main",
		SubMaterialID = 24,
	},
	{
		Trigger = "main",
		SubMaterialID = 10,
	},
	{
		Trigger = "high",
		ProjectedTextures = {
			{ pos = Vector(71.62,20.83,19.79), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(71.62,-20.83,19.79), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main+high",
		SubMaterialID = 23,
		Sprites = {
			{ pos = Vector(71.62,20.83,19.7), colorB = 200, colorA = 150, width = 60, height = 60 },
			{ pos = Vector(71.62,-20.83,19.7), colorB = 200, colorA = 150, width = 60, height = 60 },
		},
		ProjectedTextures = {
			{ pos = Vector(71.62,20.83,19.79), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(71.62,-20.83,19.79), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 7,
		SubMaterialBrightness = 15,
		Sprites = {
			{ pos = Vector(-85.5,16.7,21.37), colorG = 0, colorB = 0, colorA = 50, width = 40, height = 20 },
			{ pos = Vector(-85.5,-16.7,21.37), colorG = 0, colorB = 0, colorA = 50, width = 40, height = 20 },
			{ pos = Vector(-85.46,23.4,21.29), colorG = 0, colorB = 0, colorA = 50, width = 40, height = 20 },
			{ pos = Vector(-85.46,-23.4,21.29), colorG = 0, colorB = 0, colorA = 50, width = 40, height = 20 },
		},
	},
	{
		Trigger = "brake",
		SubMaterialID = 6,
		Sprites = {
			{ pos = Vector(-86.97,0,26.78), colorG = 0, colorB = 0, colorA = 150, width = 50, height = 25 },
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 28,
		Sprites = {
			{ pos = Vector(76.18,19.77,13.89), colorB = 200, colorA = 150 },
			{ pos = Vector(76.18,-19.77,13.89), colorB = 200, colorA = 150 },
		},
	},

	{
		Trigger = "reverse",
		SubMaterialID = 8,
		SubMaterialBrightness = 25,
		Sprites = {
			{ pos = Vector(-85.56,16.57,18.3), height = 15, width = 35, colorA = 150 },
			{ pos = Vector(-85.56,-16.57,18.3), height = 15, width = 35, colorA = 150 },
		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 2,
		SubMaterialBrightness = 25,
		Sprites = {
			{ width = 45, height = 25, pos = Vector(77.73,-19.03,10.39), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 25, pos = Vector(63.81,-31.84,10.55), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 35, height = 15, pos = Vector(-84.98,-24.05,18.21), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 3,
		SubMaterialBrightness = 25,
		Sprites = {
			{ width = 45, height = 25, pos = Vector(77.73,19.03,10.39), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 25, pos = Vector(63.81,31.84,10.55), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 35, height = 15, pos = Vector(-84.98,24.05,18.21), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
}


