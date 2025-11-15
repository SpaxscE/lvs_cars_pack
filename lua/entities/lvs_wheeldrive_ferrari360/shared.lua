
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Ferrari 360"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/ferrari_360/ferrari_360.mdl"

ENT.MaxVelocity = 2900

ENT.EngineTorque = 175
ENT.EngineIdleRPM = 750
ENT.EngineMaxRPM = 10000

ENT.TransGears = 6
ENT.TransGearsReverse = 1
ENT.TransMinGearHoldTime = 1
ENT.TransShiftSpeed = 0.2

ENT.TransWobble = 50
ENT.TransWobbleTime = 2.5
ENT.TransWobbleFrequencyMultiplier = 1.5

ENT.PhysicsMass = 1000

ENT.WheelPhysicsMass = 100

ENT.ForceLinearMultiplier = 1.5 -- multiply all linear forces (such as downforce, wheel side force, ect)
ENT.ForceAngleMultiplier = 0.75 -- multiply all angular forces such turn stability / inertia. Exception: Wheel/Engine torque. Those remain unchanged.

ENT.RandomColor = {
	Color(10,12,19),
	Color(101,3,0),
	Color(10,10,10),
	Color(101,126,169),
	Color(85,85,85),
	Color(255,191,0),
	Color(14,32,14),
	Color(6,10,51),
	Color(200,200,200),
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
		pos = Vector(-83.75,27.98,15.85),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-83.75,-27.98,15.85),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-84.53,24.9,15.9),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-84.53,-24.9,15.9),
		ang = Angle(0,180,0),
	}
}


ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 19,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(68.79,27.62,24.73), colorB = 200, colorA = 150, width = 60, height = 60 },
			{ pos = Vector(68.79,-27.62,24.73), colorB = 200, colorA = 150, width = 60, height = 60 },
		},
		ProjectedTextures = {
			{ pos = Vector(68.79,27.62,24.73), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(68.79,-27.62,24.73), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 11,
	},

	{
		Trigger = "main+brake",
		SubMaterialID = 26,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(-80.84,-28.92,29.18), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30, bodygroup = { name = "taillight_right", active = { 0 } }, },
			{ pos = Vector(-83.74,-21.58,29.21), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30, bodygroup = { name = "taillight_right", active = { 0 } }, },
			{ pos = Vector(-80.84,28.92,29.18), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30, bodygroup = { name = "taillight_left", active = { 0 } }, },
			{ pos = Vector(-83.74,21.58,29.21), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30, bodygroup = { name = "taillight_left", active = { 0 } }, },
		},
	},

	{
		Trigger = "brake",
		SubMaterialID = 22,
	},
	{
		Trigger = "high",
		SubMaterialID = 18,
		Sprites = {
			{ pos = Vector(69.67,-22.81,23.56), colorB = 200, colorA = 150 },
			{ pos = Vector(69.67,22.81,23.56), colorB = 200, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(69.67,-22.81,23.56), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(69.67,22.81,23.56), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 17,
		Sprites = {
			{ pos = Vector(66.28,-30.36,26.76), colorB = 200, colorA = 150 },
			{ pos = Vector(66.28,30.36,26.76), colorB = 200, colorA = 150 },
		},
	},

	{
		Trigger = "reverse",
		SubMaterialID = 27,
		SubMaterialBrightness = 25,
		Sprites = {

			{ pos = Vector(-83.74,-21.58,29.21), height = 25, width = 25, colorA = 150, bodygroup = { name = "taillight_right", active = { 0 } }, },
			{ pos = Vector(-83.74,21.58,29.21), height = 25, width = 25, colorA = 150, bodygroup = { name = "taillight_left", active = { 0 } }, },

		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 9,
		SubMaterialBrightness = 25,
		Sprites = {
			{ pos = Vector(-80.84,-28.92,29.18), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "taillight_right", active = { 0 } }, },
			{ width = 45, height = 45, pos = Vector(32.37,-38.62,22.49), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(65.54,-32.72,25.08), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 8,
		SubMaterialBrightness = 25,
		Sprites = {
			{ pos = Vector(-80.84,28.92,29.18), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "taillight_left", active = { 0 } }, },
			{ width = 45, height = 45, pos = Vector(32.37,38.62,22.49), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(65.54,32.72,25.08), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
}

