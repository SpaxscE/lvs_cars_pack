
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Dodge Charger"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/dodge_charger/charger.mdl"

ENT.MaxVelocity = 2200

ENT.EngineTorque = 120
ENT.EngineIdleRPM = 750
ENT.EngineMaxRPM = 5000

ENT.TransGears = 4
ENT.TransGearsReverse = 1

ENT.SuperChargerVisible = false

ENT.RandomColor = {
	{
		Skin = 0,
		Color = Color(0,114,221),
		Wheels = {
			Skin = 1,
			Color = Color(21,84,140),
		}
	},
	{
		Skin = 0,
		Color = Color(127,0,0),
		Wheels = {
			Skin = 1,
			Color = Color(100,0,0),
		}
	},
	{
		Skin = 0,
		Color = Color(255,93,0),
		Wheels = {
			Skin = 1,
			Color = Color(154,64,0),
		}
	},
	{
		Skin = 0,
		Color = Color(232,251,90),
		Wheels = {
			Skin = 1,
			Color = Color(152,164,63),
		}
	},
	{
		Skin = 0,
		Color = Color(95,127,63),
		Wheels = {
			Skin = 1,
			Color = Color(71,90,53),
		}
	},
	{
		Skin = 0,
		Color = Color(255,223,127),
		Wheels = {
			Skin = 1,
			Color = Color(169,148,82),
		}
	},
	{
		Skin = 0,
		Color = Color(255,255,255),
		Wheels = {
			Skin = 1,
			Color = Color(185,185,185),
		}
	},
	{
		Skin = 0,
		Color = Color(32,85,154),
		Wheels = {
			Skin = 1,
			Color = Color(10,10,10),
		}
	},
	{
		Skin = 0,
		Color = Color(154,154,154),
		Wheels = {
			Skin = 1,
			Color = Color(84,84,84),
		}
	},
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
		pos = Vector(-100.04,14.72,4.84),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-100.04,-14.72,4.84),
		ang = Angle(0,180,0),
	}
}

ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 26,
		Sprites = {
			{ pos = Vector(98.77,27.7,16.51), colorB = 200, colorA = 150 },
			{ pos = Vector(98.77,-27.7,16.51), colorB = 200, colorA = 150 },
			{ pos = Vector(-102,10,20), width = 60, height = 50, colorG = 0, colorB = 0, colorA = 80, mat = Material( "sprites/lvs/glow_smooth" ) },
			{ pos = Vector(-102,-10,20), width = 60, height = 50, colorG = 0, colorB = 0, colorA = 80, mat = Material( "sprites/lvs/glow_smooth" ) },
		},
		ProjectedTextures = {
			{ pos = Vector(97.66,27.7,16.51), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(97.66,-27.7,16.51), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 20,
	},
	{
		Trigger = "high",
		SubMaterialID = 29,
		Sprites = {
			{ pos = Vector(97.66,20.39,16.58), colorB = 200, colorA = 150 },
			{ pos = Vector(97.66,-20.39,16.58), colorB = 200, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(97.66,20.39,16.58), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(97.66,-20.39,16.58), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main+brake+turnleft",
		SubMaterialID = 27,
		Sprites = {
			{ pos = Vector(-102,18,20), width = 80, height = 50, colorG = 0, colorB = 0, colorA = 150, mat = "sprites/lvs/glow_smooth" },
			{ pos = Vector(-102,26,20), width = 60, height = 50, colorG = 0, colorB = 0, colorA = 150, mat = "sprites/lvs/glow_smooth" },
		},
	},
	{
		Trigger = "main+brake+turnright",
		SubMaterialID = 28,
		Sprites = {
			{ pos = Vector(-102,-18,20), width = 80, height = 50, colorG = 0, colorB = 0, colorA = 150, mat = "sprites/lvs/glow_smooth" },
			{ pos = Vector(-102,-26,20), width = 60, height = 50, colorG = 0, colorB = 0, colorA = 150, mat = "sprites/lvs/glow_smooth" },
		},
	},
	{
		Trigger = "turnright",
		SubMaterialID = 1,
		Sprites = {
			{ width = 40, height = 40, pos = Vector(99.23,-24.9,5.96), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 2,
		Sprites = {
			{ width = 40, height = 40, pos = Vector(99.23,24.9,5.96), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "reverse",
		SubMaterialID = 25,
		Sprites = {
			{ pos = Vector(-102.14,-15.04,8.9), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-102.14,15.04,8.9), height = 25, width = 25, colorA = 150 },
		}
	},
}
