
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Plymouth Duster"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/plymouth_duster/duster.mdl"

ENT.MaxVelocity = 2200

ENT.EngineTorque = 120
ENT.EngineIdleRPM = 750
ENT.EngineMaxRPM = 6000

ENT.TransGears = 4
ENT.TransGearsReverse = 1

ENT.RandomColor = {
	Color(0,114,221),
	Color(127,0,0),
	Color(255,93,0),
	Color(232,251,90),
	Color(95,127,63),
	Color(255,223,127),
	Color(255,255,255),
	Color(32,85,154),
	Color(154,154,154),
}

ENT.HornSound = "lvs/horn2.wav"
ENT.HornPos = Vector(40,0,35)

ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/dodge_charger/eng_idle_loop.wav",
		Volume = 1,
		Pitch = 85,
		PitchMul = 25,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/dodge_charger/eng_loop.wav",
		Volume = 1,
		Pitch = 60,
		PitchMul = 110,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/dodge_charger/eng_revdown_loop.wav",
		Volume = 1,
		Pitch = 60,
		PitchMul = 110,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_DOWN,
		UseDoppler = true,
	},
}

ENT.ExhaustPositions = {
	{
		pos = Vector(-102.25,-18.6,12.44),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-102.25,18.6,12.44),
		ang = Angle(0,180,0),
	}
}

ENT.Lights = {
	{
		Trigger = "main",
		ProjectedTextures = {
			{ pos = Vector(90.75,26.94,26.96), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(90.75,-26.94,26.96), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 23,
	},
	{
		Trigger = "main+high",
		SubMaterialID = 11,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(90.75,26.94,26.96), colorB = 200, colorA = 150, width = 30, height = 30 },
			{ pos = Vector(90.75,-26.94,26.96), colorB = 200, colorA = 150, width = 30, height = 30 },
		},
	},
	{
		Trigger = "high",
		ProjectedTextures = {
			{ pos = Vector(90.75,26.94,26.96), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(90.75,-26.94,26.96), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main+brake+turnleft",
		SubMaterialID = 22,
		Sprites = {
			{ pos = Vector(-102.41,21.31,26.19), width = 80, height = 20, colorG = 0, colorB = 0, colorA = 150, mat = "sprites/lvs/glow_smooth" },
			{ pos = Vector(-101.83,21.31,29.62), width = 80, height = 20, colorG = 0, colorB = 0, colorA = 150, mat = "sprites/lvs/glow_smooth" },
		},
	},
	{
		Trigger = "main+brake+turnright",
		SubMaterialID = 20,
		Sprites = {
			{ pos = Vector(-102.41,-21.31,26.19), width = 80, height = 20, colorG = 0, colorB = 0, colorA = 150, mat = "sprites/lvs/glow_smooth" },
			{ pos = Vector(-101.83,-21.31,29.62), width = 80, height = 20, colorG = 0, colorB = 0, colorA = 150, mat = "sprites/lvs/glow_smooth" },
		},
	},
	{
		Trigger = "turnright",
		SubMaterialID = 13,
		Sprites = {
			{ width = 40, height = 40, pos = Vector(89.71,-16.72,27.12), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 12,
		Sprites = {
			{ width = 40, height = 40, pos = Vector(89.71,16.72,27.12), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "reverse",
		SubMaterialID = 21,
		Sprites = {
			{ pos = Vector(-101.83,15.64,29.62), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-101.83,-15.64,29.62), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-102.47,15.54,26.15), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-102.47,-15.54,26.15), height = 25, width = 25, colorA = 150 },
		}
	},
}
