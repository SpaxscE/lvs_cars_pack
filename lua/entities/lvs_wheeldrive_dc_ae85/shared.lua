
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Toyota AE85"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/toyota_ae86/ae86_rhd.mdl"

ENT.MaxVelocity = 2400

ENT.EngineTorque = 65
ENT.EngineIdleRPM = 1000
ENT.EngineMaxRPM = 8000

ENT.FastSteerActiveVelocity = 500
ENT.FastSteerAngleClamp = 10
ENT.FastSteerDeactivationDriftAngle = 7

ENT.SteerAssistDeadZoneAngle = 1
ENT.SteerAssistMaxAngle = 15
ENT.SteerAssistExponent = 1.5
ENT.SteerAssistMultiplier = 3

ENT.PhysicsDampingSpeed = 4000

ENT.ForceLinearMultiplier = 1
ENT.ForceAngleMultiplier = 0.5

ENT.TransGears = 5
ENT.TransGearsReverse = 1

ENT.RandomColor = {



--trueno

--2door
	{
		Skin = 2,
		Color = Color(245,245,245),
		BodyGroups = {
			[2] = 5,
			[8] = 2,
			[11] = 1,
			[12] = 2,
			[13] = 2,

			[3] = 1,
			[4] = 1,
			[5] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
	},

	{
		Skin = 2,
		Color = Color(145,0,0),
		BodyGroups = {
			[2] = 5,
			[8] = 2,
			[11] = 1,
			[12] = 2,
			[13] = 2,

			[3] = 1,
			[4] = 1,
			[5] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
	},

	{
		Skin = 2,
		Color = Color(255,191,0),
		BodyGroups = {
			[2] = 5,
			[8] = 2,
			[11] = 1,
			[12] = 2,
			[13] = 2,

			[3] = 1,
			[4] = 1,
			[5] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
	},

	{
		Skin = 2,
		Color = Color(63,90,127),
		BodyGroups = {
			[2] = 5,
			[8] = 2,
			[11] = 1,
			[12] = 2,
			[13] = 2,

			[3] = 1,
			[4] = 1,
			[5] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
	},

	{
		Skin = 2,
		Color = Color(20,20,20),
		BodyGroups = {
			[2] = 5,
			[8] = 2,
			[11] = 1,
			[12] = 2,
			[13] = 2,

			[3] = 1,
			[4] = 1,
			[5] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
	},

	{
		Skin = 2,
		Color = Color(127,111,63),
		BodyGroups = {
			[2] = 5,
			[8] = 2,
			[11] = 1,
			[12] = 2,
			[13] = 2,

			[3] = 1,
			[4] = 1,
			[5] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
	},

	{
		Skin = 2,
		Color = Color(100,100,100),
		BodyGroups = {
			[2] = 5,
			[8] = 2,
			[11] = 1,
			[12] = 2,
			[13] = 2,

			[3] = 1,
			[4] = 1,
			[5] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
	},


--3door
	{
		Skin = 2,
		Color = Color(245,245,245),
		BodyGroups = {
			[2] = 3,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
		},
	},
	{
		Skin = 2,
		Color = Color(145,0,0),
		BodyGroups = {
			[2] = 3,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
		},
	},
	{
		Skin = 2,
		Color = Color(63,90,127),
		BodyGroups = {
			[2] = 3,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
		},
	},
	{
		Skin = 2,
		Color = Color(127,111,63),
		BodyGroups = {
			[2] = 3,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
		},
	},
	{
		Skin = 2,
		Color = Color(255,191,0),
		BodyGroups = {
			[2] = 3,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
		},
	},
	{
		Skin = 2,
		Color = Color(20,20,20),
		BodyGroups = {
			[2] = 3,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
		},
	},
	{
		Skin = 2,
		Color = Color(100,100,100),
		BodyGroups = {
			[2] = 3,
			[3] = 1,
			[4] = 1,
			[5] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
		},
	},



--levin

--2door

	{
		Skin = 2,
		Color = Color(245,245,245),
		BodyGroups = {
			[1] = 8,
			[3] = 9,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[9] = 1,
			[10] = 1,

			[2] = 5,
			[8] = 2,
			[11] = 1,
			[12] = 2,
			[13] = 2,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
	},

	{
		Skin = 2,
		Color = Color(145,0,0),
		BodyGroups = {
			[1] = 8,
			[3] = 9,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[9] = 1,
			[10] = 1,

			[2] = 5,
			[8] = 2,
			[11] = 1,
			[12] = 2,
			[13] = 2,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
	},

	{
		Skin = 2,
		Color = Color(100,100,100),
		BodyGroups = {
			[1] = 8,
			[3] = 9,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[9] = 1,
			[10] = 1,

			[2] = 5,
			[8] = 2,
			[11] = 1,
			[12] = 2,
			[13] = 2,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
	},

	{
		Skin = 2,
		Color = Color(20,20,20),
		BodyGroups = {
			[1] = 8,
			[3] = 9,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[9] = 1,
			[10] = 1,

			[2] = 5,
			[8] = 2,
			[11] = 1,
			[12] = 2,
			[13] = 2,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
	},

	{
		Skin = 2,
		Color = Color(63,90,127),
		BodyGroups = {
			[1] = 8,
			[3] = 9,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[9] = 1,
			[10] = 1,

			[2] = 5,
			[8] = 2,
			[11] = 1,
			[12] = 2,
			[13] = 2,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
	},

	{
		Skin = 2,
		Color = Color(127,111,63),
		BodyGroups = {
			[1] = 8,
			[3] = 9,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[9] = 1,
			[10] = 1,

			[2] = 5,
			[8] = 2,
			[11] = 1,
			[12] = 2,
			[13] = 2,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
	},

	{
		Skin = 2,
		Color = Color(255,191,0),
		BodyGroups = {
			[1] = 8,
			[3] = 9,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[9] = 1,
			[10] = 1,

			[2] = 5,
			[8] = 2,
			[11] = 1,
			[12] = 2,
			[13] = 2,
			[14] = 1,
			[15] = 1,
			[16] = 1,
			[17] = 1,
		},
	},

--3door

	{
		Skin = 2,
		Color = Color(245,245,245),
		BodyGroups = {
			[1] = 8,
			[2] = 3,
			[3] = 9,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[8] = 1,
			[9] = 1,
			[10] = 1,

			[12] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
			[16] = 1,
			[17] = 1,
		},
	},
	{
		Skin = 2,
		Color = Color(100,100,100),
		BodyGroups = {
			[1] = 8,
			[2] = 3,
			[3] = 9,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[8] = 1,
			[9] = 1,
			[10] = 1,

			[12] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
			[16] = 1,
			[17] = 1,
		},
	},

	{
		Skin = 2,
		Color = Color(20,20,20),
		BodyGroups = {
			[1] = 8,
			[2] = 3,
			[3] = 9,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[8] = 1,
			[9] = 1,
			[10] = 1,

			[12] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
			[16] = 1,
			[17] = 1,
		},
	},
	{
		Skin = 2,
		Color = Color(150,0,0),
		BodyGroups = {
			[1] = 8,
			[2] = 3,
			[3] = 9,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[8] = 1,
			[9] = 1,
			[10] = 1,

			[12] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
			[16] = 1,
			[17] = 1,
		},
	},
	{
		Skin = 2,
		Color = Color(255,191,0),
		BodyGroups = {
			[1] = 8,
			[2] = 3,
			[3] = 9,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[8] = 1,
			[9] = 1,
			[10] = 1,

			[12] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
			[16] = 1,
			[17] = 1,
		},
	},
	{
		Skin = 2,
		Color = Color(127,111,63),
		BodyGroups = {
			[1] = 8,
			[2] = 3,
			[3] = 9,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[8] = 1,
			[9] = 1,
			[10] = 1,

			[12] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
			[16] = 1,
			[17] = 1,
		},
	},
	{
		Skin = 2,
		Color = Color(63,90,127),
		BodyGroups = {
			[1] = 8,
			[2] = 3,
			[3] = 9,
			[4] = 1,
			[5] = 1,
			[6] = 2,
			[8] = 1,
			[9] = 1,
			[10] = 1,

			[12] = 1,
			[13] = 1,
			[14] = 2,
			[15] = 2,
			[16] = 1,
			[17] = 1,
		},
	},
}

ENT.ExhaustPositions = {
	{
		pos = Vector(-96.08,18.43,4.86),
		ang = Angle(0,180,0),
	}
}

ENT.HornSound = "lvs/horn2.wav"
ENT.HornPos = Vector(40,0,35)

ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/ae86/ae86_low.wav",
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
		ProjectedTextures = {
			{ pos = Vector(69.49,19.92,20.21), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(69.49,-19.92,20.21), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 4,
	},
	{
		Trigger = "high",
		ProjectedTextures = {
			{ pos = Vector(69.49,19.92,20.21), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(69.49,-19.92,20.21), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main+high",
		SubMaterialBrightness = 25,
		SubMaterialID = 25,
		Sprites = {
			{ pos = Vector(69.49,19.92,20.21), colorB = 200, colorA = 150, bodygroup = { name = "headlights", active = { 0 } }, },
			{ pos = Vector(69.49,-19.92,20.21), colorB = 200, colorA = 150, bodygroup = { name = "headlights", active = { 0 } }, },
			{ pos = Vector(69.49,19.92,20.21), colorB = 200, colorA = 150, bodygroup = { name = "headlights", active = { 1 } }, },
			{ pos = Vector(69.49,-19.92,20.21), colorB = 200, colorA = 150, bodygroup = { name = "headlights", active = { 1 } }, },

			{ pos = Vector(70.89,-18.77,18.11), colorB = 200, colorA = 150, bodygroup = { name = "front", active = { 1 } }, },
			{ pos = Vector(70.89,18.77,18.11), colorB = 200, colorA = 150, bodygroup = { name = "front", active = { 1 } }, },
		},
		ProjectedTextures = {
			{ pos = Vector(69.49,19.92,20.21), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(69.49,-19.92,20.21), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 28,
		SubMaterialBrightness = 15,
		Sprites = {
			{ pos = Vector(-88.78,-14.76,21.92), colorG = 0, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 0 } }, },
			{ pos = Vector(-88.78,14.76,21.92), colorG = 0, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 0 } }, },
			{ pos = Vector(-88.16,-23.05,21.99), colorG = 0, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 0 } }, },
			{ pos = Vector(-88.16,23.05,21.99), colorG = 0, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 0 } }, },

			{ pos = Vector(-88.78,-14.76,21.92), colorG = 0, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 1 } }, },
			{ pos = Vector(-88.78,14.76,21.92), colorG = 0, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 1 } }, },
			{ pos = Vector(-88.16,-23.05,21.99), colorG = 0, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 1 } }, },
			{ pos = Vector(-88.16,23.05,21.99), colorG = 0, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 1 } }, },

			{ pos = Vector(-88.78,-14.76,21.92), colorG = 0, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 2 } }, },
			{ pos = Vector(-88.78,14.76,21.92), colorG = 0, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 2 } }, },
			{ pos = Vector(-88.16,-23.05,21.99), colorG = 0, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 2 } }, },
			{ pos = Vector(-88.16,23.05,21.99), colorG = 0, colorB = 0, colorA = 50, bodygroup = { name = "taillights", active = { 2 } }, },

			{ pos = Vector(-87.32,19.62,24.15), colorG = 0, colorB = 0, colorA = 50, bodygroup = { name = "back", active = { 1 } }, },
			{ pos = Vector(-87.32,-19.62,24.15), colorG = 0, colorB = 0, colorA = 50, bodygroup = { name = "back", active = { 1 } }, },

		},
	},
	{
		Trigger = "brake",
		SubMaterialID = 13,
	},
	{
		Trigger = "fog",
		SubMaterialBrightness = 15,
		SubMaterialID = 22,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(70.96,15.29,5.48), colorG = 150, colorB = 0, colorA = 150, bodygroup = { name = "foglights", active = { 1 } }, },
			{ width = 35, height = 35, pos = Vector(70.96,-15.29,5.48), colorG = 150, colorB = 0, colorA = 150, bodygroup = { name = "foglights", active = { 1 } }, },

			{ width = 35, height = 35, pos = Vector(70.6,27.19,12.68), colorA = 150, bodygroup = { name = "Front_bumper", active = { 6 } }, },
			{ width = 35, height = 35, pos = Vector(70.6,-27.19,12.68), colorA = 150, bodygroup = { name = "Front_bumper", active = { 6 } }, },

			{ width = 35, height = 35, pos = Vector(72.06,9.02,6.11), colorA = 150, bodygroup = { name = "Front_bumper", active = { 7 } }, },
			{ width = 35, height = 35, pos = Vector(72.06,-9.02,6.11), colorA = 150, bodygroup = { name = "Front_bumper", active = { 7 } }, },

			{ width = 35, height = 35, pos = Vector(66.89,27,18.29), colorA = 150, bodygroup = { name = "front", active = { 1 } }, },
			{ width = 35, height = 35, pos = Vector(66.89,-27,18.29), colorA = 150, bodygroup = { name = "front", active = { 1 } }, },

			{ width = 35, height = 35, pos = Vector(70.88,27.36,11.46), colorA = 150, bodygroup = { name = "Front_bumper", active = { 11 } }, },
			{ width = 35, height = 35, pos = Vector(70.88,-27.36,11.46), colorA = 150, bodygroup = { name = "Front_bumper", active = { 11 } }, },

			{ width = 35, height = 35, pos = Vector(71.79,9.21,5.31), colorA = 150, bodygroup = { name = "Front_bumper", active = { 12 } }, },
			{ width = 35, height = 35, pos = Vector(71.79,-9.21,5.31), colorA = 150, bodygroup = { name = "Front_bumper", active = { 12 } }, },
		},
	},

	{
		Trigger = "reverse",
		SubMaterialID = 27,
		SubMaterialBrightness = 25,
		Sprites = {
			{ pos = Vector(-88.48,-18.83,20.91), colorA = 50, bodygroup = { name = "taillights", active = { 0 } }, },
			{ pos = Vector(-88.48,18.83,20.91), colorA = 50, bodygroup = { name = "taillights", active = { 0 } }, },

			{ pos = Vector(-87.99,-17.92,22.4), colorA = 50, bodygroup = { name = "taillights", active = { 1 } }, },
			{ pos = Vector(-87.99,17.92,22.4), colorA = 50, bodygroup = { name = "taillights", active = { 1 } }, },

			{ pos = Vector(-88.4,-18.08,21.79), colorA = 50, bodygroup = { name = "taillights", active = { 2 } }, },
			{ pos = Vector(-88.4,18.08,21.79), colorA = 50, bodygroup = { name = "taillights", active = { 2 } }, },

			{ pos = Vector(-88.21,-12.15,21.65), colorA = 50, bodygroup = { name = "back", active = { 1 } }, },
			{ pos = Vector(-88.21,12.15,21.65), colorA = 50, bodygroup = { name = "back", active = { 1 } }, },

		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 19,
		SubMaterialBrightness = 25,
		Sprites = {
			{ width = 55, height = 35, pos = Vector(66.32,-27.83,18.03), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "front", active = { 0 } }, },
			{ width = 35, height = 35, pos = Vector(62.37,-29.14,18.46), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "front", active = { 1 } }, },

			{ width = 35, height = 35, pos = Vector(-85.86,-27.51,21.96), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 0 } }, },
			{ width = 35, height = 35, pos = Vector(-85.86,-27.51,21.96), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 1 } }, },
			{ width = 35, height = 35, pos = Vector(-85.86,-27.51,21.96), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 2 } }, },
			{ width = 35, height = 35, pos = Vector(-85.93,-26.56,24.12), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "back", active = { 1 } }, },

			{ width = 45, height = 25, pos = Vector(73.01,-18.09,13.32), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 0 } }, },
			{ width = 45, height = 25, pos = Vector(73.01,-18.09,13.32), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 1 } }, },
			{ width = 45, height = 25, pos = Vector(72.82,-19.44,13.43), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 2 } }, },
			{ width = 45, height = 25, pos = Vector(73.55,-20.73,7.78), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 3 } }, },
			{ width = 45, height = 25, pos = Vector(73.55,-20.73,7.78), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 4 } }, },
			{ width = 45, height = 25, pos = Vector(73.55,-20.73,7.78), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 5 } }, },
			{ width = 45, height = 25, pos = Vector(72.74,-21.15,12.62), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 6 } }, },
			{ width = 45, height = 25, pos = Vector(74.29,-19.51,12.41), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 8 } }, },
			{ width = 45, height = 25, pos = Vector(74.29,-19.51,12.41), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 9 } }, },
			{ width = 45, height = 25, pos = Vector(73.55,-20.73,7.78), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 10 } }, },
			{ width = 45, height = 25, pos = Vector(72.74,-21.15,12.62), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 11 } }, },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 18,
		SubMaterialBrightness = 25,
		Sprites = {
			{ width = 55, height = 35, pos = Vector(66.32,27.83,18.03), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "front", active = { 0 } }, },
			{ width = 35, height = 35, pos = Vector(62.37,29.14,18.46), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "front", active = { 1 } }, },

			{ width = 35, height = 35, pos = Vector(-85.86,27.51,21.96), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 0 } }, },
			{ width = 35, height = 35, pos = Vector(-85.86,27.51,21.96), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 1 } }, },
			{ width = 35, height = 35, pos = Vector(-85.86,27.51,21.96), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "taillights", active = { 2 } }, },
			{ width = 35, height = 35, pos = Vector(-85.93,26.56,24.12), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "back", active = { 1 } }, },

			{ width = 45, height = 25, pos = Vector(73.01,18.09,13.32), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 0 } }, },
			{ width = 45, height = 25, pos = Vector(73.01,18.09,13.32), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 1 } }, },
			{ width = 45, height = 25, pos = Vector(72.82,19.44,13.43), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 2 } }, },
			{ width = 45, height = 25, pos = Vector(73.55,20.73,7.78), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 3 } }, },
			{ width = 45, height = 25, pos = Vector(73.55,20.73,7.78), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 4 } }, },
			{ width = 45, height = 25, pos = Vector(73.55,20.73,7.78), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 5 } }, },
			{ width = 45, height = 25, pos = Vector(72.74,21.15,12.62), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 6 } }, },
			{ width = 45, height = 25, pos = Vector(74.29,19.51,12.41), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 8 } }, },
			{ width = 45, height = 25, pos = Vector(74.29,19.51,12.41), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 9 } }, },
			{ width = 45, height = 25, pos = Vector(73.55,20.73,7.78), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 10 } }, },
			{ width = 45, height = 25, pos = Vector(72.74,21.15,12.62), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Front_bumper", active = { 11 } }, },
		},
	},
}




