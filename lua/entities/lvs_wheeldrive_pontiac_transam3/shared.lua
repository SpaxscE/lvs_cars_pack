
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Pontiac Trans Am"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/pontiac_transam3/transam.mdl"

ENT.MaxVelocity = 2200

ENT.EngineTorque = 120
ENT.EngineIdleRPM = 750
ENT.EngineMaxRPM = 5000

ENT.TransGears = 4
ENT.TransGearsReverse = 1
ENT.TransShiftSpeed = 0
ENT.TransWobbleTime = 0
ENT.TransWobbleFrequencyMultiplier = 0
ENT.TransShiftSound = "common/null.wav"

ENT.SuperChargerVisible = false

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
		pos = Vector(-84.96,-22.41,3.99),
		ang = Angle(15,180,0),
	},
	{
		pos = Vector(-84.96,22.41,3.99),
		ang = Angle(15,180,0),
	}
}

ENT.Lights = {

	{
		Trigger = "main",
		ProjectedTextures = {
			{ pos = Vector(84.53,24.61,18.32), ang = Angle(7,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(84.53,-24.61,18.32), ang = Angle(7,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "high",
		ProjectedTextures = {
			{ pos = Vector(84.53,24.61,18.32), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(84.53,-24.61,18.32), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
	Trigger = "main+high",
		SubMaterialID = 20,
		Sprites = {
			{ pos = Vector(84.53,24.61,18.32), colorB = 200, colorA = 150 },
			{ pos = Vector(84.53,-24.61,18.32), colorB = 200, colorA = 150 },
		},
	},

	{
		Trigger = "main+brake",
		SubMaterialID = 17,
		Sprites = {
			{ pos = Vector(-89.47,21.99,20.61), colorG = 0, colorB = 0, colorA = 50 },
			{ pos = Vector(-90,15.9,20.65), colorG = 0, colorB = 0, colorA = 50 },

			{ pos = Vector(-89.47,-21.99,20.61), colorG = 0, colorB = 0, colorA = 50 },
			{ pos = Vector(-90,-15.9,20.65), colorG = 0, colorB = 0, colorA = 50 },
		}
	},
	{
		Trigger = "main",
		SubMaterialID = 0,
	},
	{
		Trigger = "main+brake+turnleft",
		SubMaterialID = 19,
		Sprites = {
			{ pos = Vector(-88.88,27.8,20.62), width = 50, height = 50, colorG = 0, colorB = 0, colorA = 50, mat = "sprites/lvs/glow_smooth" },
		},
	},
	{
		Trigger = "main+brake+turnright",
		SubMaterialID = 18,
		Sprites = {
			{ pos = Vector(-88.88,-27.8,20.62), width = 50, height = 50, colorG = 0, colorB = 0, colorA = 50, mat = "sprites/lvs/glow_smooth" },
		},
	},
	{
		Trigger = "turnright",
		SubMaterialID = 6,
		Sprites = {
			{ width = 40, height = 40, pos = Vector(86.17,-13.98,15.96), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 40, height = 20, pos = Vector(79.2,-32.85,11.49), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 40, height = 20, pos = Vector(-80.69,-33.68,12.69), colorG = 0, colorB = 0, colorA = 150 },

		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 5,
		Sprites = {
			{ width = 40, height = 40, pos = Vector(86.17,13.98,15.96), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 40, height = 20, pos = Vector(79.2,32.85,11.49), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 40, height = 20, pos = Vector(-80.69,33.68,12.69), colorG = 0, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "reverse",
		SubMaterialID = 16,
		Sprites = {
			{ pos = Vector(-90.06,-10.41,20.67), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-90.06,10.41,20.67), height = 25, width = 25, colorA = 150 },
		}
	},
}
