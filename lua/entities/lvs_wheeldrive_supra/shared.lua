
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Toyota Supra (A80)"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/toyota_supra/supra.mdl"

ENT.MaxVelocity = 2650

ENT.EngineCurve = 0.15
ENT.EngineTorque = 105
ENT.EngineIdleRPM = 1000
ENT.EngineMaxRPM = 7000

ENT.TransGears = 6
ENT.TransGearsReverse = 1

ENT.RandomColor = {
	Color(230,230,230),
	Color(130,130,130),
	Color(30,30,30),
	Color(98,16,16),
	Color(106,111,106),
	Color(49,22,109),
	Color(200,180,0),
	Color(200,0,0),
}

ENT.HornSound = "lvs/horn2.wav"
ENT.HornPos = Vector(40,0,35)

ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/supra/eng_idle_loop.wav",
		Volume = 1,
		Pitch = 45,
		PitchMul = 25,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/supra/eng_loop.wav",
		Volume = 1,
		Pitch = 40,
		PitchMul = 65,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/supra/eng_revdown_loop.wav",
		Volume = 1,
		Pitch = 40,
		PitchMul = 65,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_DOWN,
		UseDoppler = true,
	},
}

ENT.ExhaustPositions = {
	{
		pos = Vector(-85,22,10),
		ang = Angle(-11.67,164.32,-0.19),
	}
}

ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 27,
		Sprites = {
			{ pos = Vector(78.06,-21.57,24.23), colorB = 200, colorA = 150 },
			{ pos = Vector(78.06,21.57,24.23), colorB = 200, colorA = 150 },
			{ width = 15, height = 15, pos = Vector(80.39,-26.11,17.66), colorB = 200, colorA = 150 },
			{ width = 15, height = 15, pos = Vector(80.39,26.11,17.66), colorB = 200, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(78.06,-21.57,24.23), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(78.06,21.57,24.23), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 25,
	},
	{
		Trigger = "high",
		SubMaterialID = 12,
		Sprites = {
			{ pos = Vector(77.73,-16.83,24.28), colorB = 200, colorA = 150 },
			{ pos = Vector(77.73,16.83,24.28), colorB = 200, colorA = 150 },

		},
		ProjectedTextures = {
			{ pos = Vector(77.73,-16.83,24.28), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(77.73,16.83,24.28), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},

	{
		Trigger = "brake",
		SubMaterialID = 9,
		Sprites = {
			{ width = 55, height = 15, pos = Vector(-84.91,0,37.5), colorG = 0, colorB = 0, colorA = 150 },
		}
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 8,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(-83.37,-18.7,31.54), colorG = 0, colorB = 0, colorA = 150 },
			{ width = 35, height = 35, pos = Vector(-83.37,18.7,31.54), colorG = 0, colorB = 0, colorA = 150 },
			{ width = 35, height = 35, pos = Vector(-84.81,-14.3,31.71), colorG = 0, colorB = 0, colorA = 150 },
			{ width = 35, height = 35, pos = Vector(-84.81,14.3,31.71), colorG = 0, colorB = 0, colorA = 150 },
		}
	},
	{
		Trigger = "reverse",
		SubMaterialID = 5,
		Sprites = {
			{ pos = Vector(-85.6,-10.12,31.61), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-85.6,10.12,31.61), height = 25, width = 25, colorA = 150 },
		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 7,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(82.08,-23.6,17.52), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 20, height = 20, pos = Vector(68.3,-33.94,18.76), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 20, height = 20, pos = Vector(-75.54,-31.76,22.94), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 40, height = 40, pos = Vector(-82.14,-22.89,31.63), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 6,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(82.08,23.6,17.52), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 20, height = 20, pos = Vector(68.3,33.94,18.76), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 20, height = 20, pos = Vector(-75.54,31.76,22.94), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 40, height = 40, pos = Vector(-82.14,22.89,31.63), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 28,
		Sprites = {
			{ pos = Vector(74.9,-25.48,23.86), colorB = 200, colorA = 150 },
			{ pos = Vector(74.9,25.48,23.86), colorB = 200, colorA = 150 },
		},
	},
}
