
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "lamborghini Countach"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/lambo_countach/countach.mdl"

ENT.MaxVelocity = 2800

ENT.MassCenterOverride = Vector(-10,0,22)

ENT.EngineTorque = 300
ENT.EngineCurve = 0.25
ENT.EngineCurveBoostLow = 0.5

ENT.EngineIdleRPM = 750
ENT.EngineMaxRPM = 9000

ENT.TransGears = 6
ENT.TransGearsReverse = 1
ENT.TransMinGearHoldTime = 1
ENT.TransShiftSpeed = 0.1
ENT.TransWobble = 0
ENT.TransWobbleTime = 0
ENT.TransWobbleFrequencyMultiplier = 0

ENT.ForceLinearMultiplier = 2.3
ENT.ForceAngleMultiplier = 1

ENT.WheelSideForce = 1200
ENT.WheelDownForce = 1000

ENT.RandomColor = {
	Color(255,191,0),
	Color(250,250,250),
}

ENT.HornSound = "lvs/horn2.wav"
ENT.HornPos = Vector(40,0,35)

ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/ferrari_365/eng_idle_loop.wav",
		Volume = 1,
		Pitch = 110,
		PitchMul = 25,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/ferrari_360/eng_loop.wav",
		Volume = 1,
		Pitch = 80,
		PitchMul = 160,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/dodge_charger/eng_revdown_loop.wav",
		Volume = 1,
		Pitch = 80,
		PitchMul = 160,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_DOWN,
		UseDoppler = true,
	},
}

ENT.ExhaustPositions = {
	{
		pos = Vector(-80.93,14.5,13.13),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-80.93,-14.5,13.13),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-80.91,11.65,13.05),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-80.91,-11.65,13.05),
		ang = Angle(0,180,0),
	}
}

ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 14,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = "l1", colorB = 200, colorA = 150 },
			{ pos = "l4", colorB = 200, colorA = 150 },
			{ pos = Vector(70.97,23.23,18.85), colorB = 200, colorA = 150, width = 30, height = 30 },
			{ pos = Vector(70.97,-23.23,18.85), colorB = 200, colorA = 150, width = 30, height = 30 },
		},
		ProjectedTextures = {
			{ pos = Vector(67.22,-29.37,24.99), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(67.22,29.37,24.99), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 15,
	},
	{
		Trigger = "high",
		SubMaterialID = 25,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = "l3", colorB = 200, colorA = 150 },
			{ pos = "l2", colorB = 200, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(67.17,-22.47,24.96), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(67.17,22.47,24.96), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 13,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(-82.6,24.47,26.45), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30 },
			{ pos = Vector(-82.6,-24.47,26.45), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30 },
		},
	},
	{
		Trigger = "reverse",
		SubMaterialID = 11,
		Sprites = {
			{ pos = Vector(-82.38,19.52,26.33), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-82.38,-19.52,26.33), height = 25, width = 25, colorA = 150 },
		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 9,
		Sprites = {
			{ width = 35, height = 25, pos = Vector(70.61,-26.79,18.54), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 20, height = 20, pos = Vector(66.39,-34.35,19.6), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 35, height = 35, pos = Vector(-82.49,-29.2,26.44), colorG = 100, colorB = 0, colorA = 150},
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 12,
		Sprites = {
			{ width = 35, height = 25, pos = Vector(70.61,26.79,18.54), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 20, height = 20, pos = Vector(66.39,34.35,19.6), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 35, height = 35, pos = Vector(-82.49,29.2,26.44), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 10,
		Sprites = {
			{ pos = Vector(81.67,14.64,11.77), colorB = 150, colorA = 150 },
			{ pos = Vector(81.67,-14.64,11.77), colorB = 150, colorA = 150 },
			{ pos = Vector(-80.72,13.51,19.26), colorG = 0, colorB = 0, colorA = 150 },
		},
	},
}
