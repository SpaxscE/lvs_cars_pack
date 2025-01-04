
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Audi S5 (B8)"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/audi_s5/s5.mdl"

ENT.EnableDSPEffects = true

ENT.MaxVelocity = 2700

ENT.EngineTorque = 140
ENT.EngineIdleRPM = 660
ENT.EngineMaxRPM = 8000

ENT.TransGears = 6
ENT.TransGearsReverse = 1

ENT.RandomColor = {
	Color(237,236,233),
	Color(200,200,200),
	Color(80,80,80),
	Color(20,20,20),
	Color(226,221,31),
	Color(182,89,13),
	Color(228,19,12),
	Color(170,0,0),
	Color(125,7,31),
	Color(66,27,22),
	Color(18,80,118),
	Color(27,82,106),
	Color(116,155,77),
}

ENT.HornSound = "lvs/horn1.wav"
ENT.HornPos = Vector(40,0,35)

ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/audi_r8/idle2.wav",
		Volume = 1,
		Pitch = 70,
		PitchMul = 70,
		SoundLevel = 55,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/audi_r8/high.wav",
		Volume = 1,
		Pitch = 80,
		PitchMul = 110,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/audi_r8/revdown.wav",
		Volume = 1,
		Pitch = 80,
		PitchMul = 110,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_DOWN,
		UseDoppler = true,
	},
}

ENT.ExhaustPositions = {
	{
		pos = Vector(-86.84,23.7,6.04),
		ang = Angle(20,180,0),
	},
	{
		pos = Vector(-87.96,19.92,5.86),
		ang = Angle(20,180,0),
	},
	{
		pos = Vector(-86.84,-23.7,6.04),
		ang = Angle(20,180,0),
	},
	{
		pos = Vector(-87.96,-19.92,5.86),
		ang = Angle(20,180,0),
	},
}


ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 11,
		SubMaterialBrightness = 10,
		ProjectedTextures = {
			{ pos = Vector(83.78,22.35,19.63), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
			{ pos = Vector(83.78,-22.35,19.63), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "high",
		ProjectedTextures = {
			{ pos = Vector(79.63,27.51,19.7), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
			{ pos = Vector(79.63,-27.51,19.7), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 15,
		SubMaterialBrightness = 20,
		Sprites = {
			{ width = 65, height = 35, pos = Vector(-84.32,23.53,26.31), colorG = 0, colorB = 0, colorA = 50 },
			{ width = 65, height = 35, pos = Vector(-84.32,-23.53,26.31), colorG = 0, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 0,
	},
	{
		Trigger = "main",
		SubMaterialID = 2,
	},
	{
		Trigger = "main",
		SubMaterialID = 12,
	},
	{
		Trigger = "brake",
		SubMaterialID = 26,
		SubMaterialBrightness = 20,
		Sprites = {
			{ width = 65, height = 15, pos = Vector(-45.96,0,44.43), colorG = 0, colorB = 0, colorA = 150 },
		},
	},
	{
	Trigger = "main+high",
		SubMaterialID = 20,
		SubMaterialBrightness = 20,
		Sprites = {
			{ pos = Vector(79.63,27.51,19.7), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
			{ pos = Vector(79.63,-27.51,19.7), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
			{ pos = Vector(83.78,-22.35,19.63), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
			{ pos = Vector(83.78,22.35,19.63), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
		},
	},



	{
		Trigger = "fog",
		SubMaterialID = 28,
		Sprites = {
			{ width = 25, height = 25, pos = Vector(82.28,28.48,6.53), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
			{ width = 25, height = 25, pos = Vector(82.28,-28.48,6.53), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
		},
	},

	{
		Trigger = "reverse",
		SubMaterialID = 14,
		SubMaterialBrightness = 2,
		Sprites = {

			{ pos = Vector(-85.52,18.79,28.68), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-85.52,-18.79,28.68), height = 25, width = 25, colorA = 150 },

		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 13,
		SubMaterialBrightness = 1,
		Sprites = {
			{ width = 45, height = 25,  pos = "tlr", colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 25,  pos = Vector(84.39,-23.53,18.03), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(-82.17,-26.67,28.62), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 9,
		SubMaterialBrightness = 1,
		Sprites = {
			{ width = 45, height = 25,  pos = "tll", colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 25, pos = Vector(84.39,23.53,18.03), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(-82.17,26.67,28.62), colorG = 100, colorB = 0, colorA = 50 },

		},
	},
}

