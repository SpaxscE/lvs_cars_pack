
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Reliant Supervan"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/reliant_regal/supervan.mdl"

ENT.AITEAM = 0

ENT.MaxVelocity = 1200

ENT.EngineCurve = 0.25
ENT.EngineTorque = 80

ENT.TransGears = 4
ENT.TransGearsReverse = 1

ENT.RandomColor = {Color(50,85,50),Color(78,159,159),Color(225,194,35),Color(216,25,19),Color(76,105,117),Color(85,171,209),Color(151,146,131),Color(25,25,25)}

ENT.HornSound = "lvs/horn2.wav"
ENT.HornPos = Vector(40,0,35)

ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/willy/eng_idle_loop.wav",
		Volume = 0.5,
		Pitch = 85,
		PitchMul = 25,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/willy/eng_loop.wav",
		Volume = 1,
		Pitch = 50,
		PitchMul = 100,
		SoundLevel = 75,
		UseDoppler = true,
	},
}

ENT.ExhaustPositions = {
	{
		pos = Vector(-58.14,13.57,-4.81),
		ang = Angle(0,180,0),
	},
}

ENT.Lights = {

	{
		Trigger = "main",
		ProjectedTextures = {
			{ pos = Vector(76.2,19.71,12.21), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(76.2,-19.71,12.21), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "high",
		ProjectedTextures = {
			{ pos = Vector(76.2,19.71,12.21), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(76.2,-19.71,12.21), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},


	{
		Trigger = "main+high",
		SubMaterialID = 13,
		Sprites = {
			{ pos = Vector(76.2,19.71,12.21), colorB = 200, colorA = 150,  },
			{ pos = Vector(76.2,-19.71,12.21), colorB = 200, colorA = 150,  },
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 19,
		Sprites = {
			{ pos = Vector(-57.06,24.62,13.64), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30 },
			{ pos = Vector(-57.06,-24.62,13.64), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30 },

		}
	},

	{
		Trigger = "turnright",
		SubMaterialID = 18,
		Sprites = {
			{ width = 25, height = 15, pos = Vector(76.4,-22.18,4.65), colorG = 100, colorB = 0, colorA = 150, },
			{ width = 25, height = 15, pos = Vector(-56.96,-24.35,18.22), colorG = 100, colorB = 0, colorA = 150, },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 22,
		Sprites = {
			{ width = 25, height = 15, pos = Vector(76.4,22.18,4.65), colorG = 100, colorB = 0, colorA = 150, },
			{ width = 25, height = 15, pos = Vector(-56.96,24.35,18.22), colorG = 100, colorB = 0, colorA = 150, },
		},
	},
}

