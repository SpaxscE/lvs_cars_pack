
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Honda Prelude 4"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/honda_prelude4/prelude.mdl"

ENT.EnableDSPEffects = true

ENT.MaxVelocity = 2400

ENT.EngineTorque = 105
ENT.EngineIdleRPM = 1000
ENT.EngineMaxRPM = 8000

ENT.TransGears = 5
ENT.TransGearsReverse = 1

ENT.RandomColor = {Color(180,0,0),Color(80,0,0),Color(235,235,235),Color(110,110,110),Color(70,70,70),Color(20,20,20),Color(27,36,38),Color(63,96,127)}

ENT.ExhaustPositions = {
	{
		pos = Vector(-86.47,-12.86,11.8),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-86.55,-15.88,11.81),
		ang = Angle(0,180,0),
	},
}

ENT.HornSound = "lvs/horn2.wav"
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
		PitchMul = 90,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/miata/eng_revdown_loop.wav",
		Volume = 1,
		Pitch = 60,
		PitchMul = 90,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_DOWN,
		UseDoppler = true,
	},
}

ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 28,
		Sprites = {
			{ pos = Vector(78.08,23.52,24.88), colorB = 200, colorA = 150, width = 60, height = 60 },
			{ pos = Vector(78.08,-23.52,24.88), colorB = 200, colorA = 150, width = 60, height = 60 },
		},
		ProjectedTextures = {
			{ pos = Vector(78.08,23.52,24.88), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(78.08,-23.52,24.88), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 5,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(-81,22.96,34.48), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30 },
			{ pos = Vector(-81,-22.96,34.48), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30 },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 29,
	},
	{
		Trigger = "brake",
		SubMaterialID = 30,
	},
	{
		Trigger = "high",
		SubMaterialID = 10,
		Sprites = {
			{ pos = Vector(80.24,17.41,24.94), colorB = 200, colorA = 150 },
			{ pos = Vector(80.24,-17.41,24.94), colorB = 200, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(80.24,17.41,24.94), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(80.24,-17.41,24.94), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 13,
		Sprites = {
			{ pos = Vector(74.9,29.21,24.37), colorB = 200, colorA = 150 },
			{ pos = Vector(74.9,-29.21,24.37), colorB = 200, colorA = 150 },
		},
	},

	{
		Trigger = "reverse",
		SubMaterialID = 11,
		SubMaterialBrightness = 25,
		Sprites = {
			{ pos = Vector(-82.4,20.52,28.97), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-82.4,-20.52,28.97), height = 25, width = 25, colorA = 150 },
		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 12,
		SubMaterialBrightness = 25,
		Sprites = {
			{ width = 45, height = 45, pos = Vector(-81.24,-24.78,28.92), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 45, pos = Vector(78.12,-29.56,16.8), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(82.95,-23.55,17.13), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 4,
		SubMaterialBrightness = 25,
		Sprites = {
			{ width = 45, height = 45, pos = Vector(-81.24,24.78,28.92), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 45, pos = Vector(78.12,29.56,16.8), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(82.95,23.55,17.13), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
}


