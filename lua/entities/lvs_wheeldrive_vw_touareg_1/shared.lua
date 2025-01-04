
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "VolksWagen Touareg (I)"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/vw_touareg/touareg.mdl"

ENT.EnableDSPEffects = true

ENT.MaxVelocity = 2500

ENT.EngineTorque = 95
ENT.EngineIdleRPM = 660
ENT.EngineMaxRPM = 6000

ENT.TransGears = 5
ENT.TransGearsReverse = 1

ENT.PhysicsMass = 1500

ENT.RandomColor = {
	Color(237,236,233),
}

ENT.HornSound = "lvs/horn1.wav"
ENT.HornPos = Vector(40,0,35)

ENT.RandomColor = {
	{
		Skin = 4,
		Color = Color(200,200,200),
	},
	{
		Skin = 10,
		Color = Color(90,21,21),
	},
	{
		Skin = 7,
		Color = Color(140,140,140),
	},
	{
		Skin = 0,
		Color = Color(61,60,57),
	},
	{
		Skin = 2,
		Color = Color(55,60,51),
	},
	{
		Skin = 14,
		Color = Color(20,20,20),
	},
	{
		Skin = 1,
		Color = Color(36,41,80),
	},
}

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
		pos = Vector(-90.99,22.9,6.434),
		ang = Angle(20,180,0),
	},
	{
		pos = Vector(-90.99,-22.9,6.43),
		ang = Angle(20,180,0),
	},
}


ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 24,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(77.45,30.08,24.04), colorR = 200, colorG = 200, colorB = 250, colorA = 250 },
			{ pos = Vector(77.45,-30.08,24.04), colorR = 200, colorG = 200, colorB = 250, colorA = 250 },
			{ width = 65, height = 65, pos = Vector(-87.53,21.57,31.12), colorG = 0, colorB = 0, colorA = 150 },
			{ width = 65, height = 65, pos = Vector(-87.53,-21.57,31.12), colorG = 0, colorB = 0, colorA = 150 },
			{ width = 15, height = 15, pos = Vector(-87.53,21.57,31.12), colorR = 255, colorG = 255, colorB = 255, colorA = 105, },
			{ width = 15, height = 15, pos = Vector(-87.53,-21.57,31.12), colorR = 255, colorG = 255, colorB = 255, colorA = 105, },
		},
		ProjectedTextures = {
			{ pos = Vector(82,30.08,24.04), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
			{ pos = Vector(82,-30.08,24.04), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 5,
		SubMaterialBrightness = 2,
		Sprites = {
			{ width = 65, height = 65, pos = Vector(-83.91,29.78,31.07), colorG = 0, colorB = 0, colorA = 250 },
			{ width = 65, height = 65, pos = Vector(-83.91,-29.78,31.07), colorG = 0, colorB = 0, colorA = 250 },
			{ width = 15, height = 15, pos = Vector(-83.91,29.78,31.07), colorR = 255, colorG = 255, colorB = 255, colorA = 155, },
			{ width = 15, height = 15, pos = Vector(-83.91,-29.78,31.07), colorR = 255, colorG = 255, colorB = 255, colorA = 155, },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 12,
	},
	{
		Trigger = "main",
		SubMaterialID = 16,
	},
	{
		Trigger = "brake",
		SubMaterialID = 3,
		SubMaterialBrightness = 2,
		Sprites = {
			{ width = 65, height = 15, pos = Vector(-76.05,0,54.49), colorG = 0, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "main+high",
		SubMaterialID = 23,
		SubMaterialBrightness = 2,
		Sprites = {
			{ pos = Vector(81.62,24.07,24.54), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
			{ pos = Vector(81.62,-24.07,24.54), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
		},

	},
	{
		Trigger = "high",
		ProjectedTextures = {
			{ pos = Vector(86,27.51,19.7), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
			{ pos = Vector(86,-27.51,19.7), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 31,
		Sprites = {
			{ width = 25, height = 25, pos = Vector(85.68,24.73,5.41), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
			{ width = 25, height = 25, pos = Vector(85.68,-24.73,5.41), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
		},
	},

	{
		Trigger = "reverse",
		SubMaterialID = 4,
		SubMaterialBrightness = 2,
		Sprites = {

			{ width = 45, height = 25, pos = Vector(-88.95,-21.52,27.28), height = 25, width = 25, colorA = 150 },
			{ width = 45, height = 25, pos = Vector(-88.95,21.52,27.28), height = 25, width = 25, colorA = 150 },

		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 2,
		SubMaterialBrightness = 1,
		Sprites = {
			{ width = 45, height = 25,  pos = "tlr", colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 45,  pos = Vector(75.11,-34.16,23.96), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 25, pos = Vector(-86.02,-30.5,27.37), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 1,
		SubMaterialBrightness = 1,
		Sprites = {
			{ width = 45, height = 25,  pos = "tll", colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 45, pos = Vector(75.11,34.16,23.96), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 25, pos = Vector(-86.02,30.5,27.37), colorG = 100, colorB = 0, colorA = 50 },

		},
	},
}

