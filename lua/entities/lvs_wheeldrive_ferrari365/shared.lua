
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Ferrari 365 GTB4"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/ferrari_365/ferrari_365norig.mdl"

ENT.EnableDSPEffects = true

ENT.MaxVelocity = 2600

ENT.EngineTorque = 130
ENT.EngineIdleRPM = 750
ENT.EngineMaxRPM = 7150

ENT.TransGears = 5
ENT.TransGearsReverse = 1

ENT.RandomColor = {
	{
		Skin = 2,
		Color = Color(155,0,0),
	},
	{
		Skin = 3,
		Color = Color(27,27,27),
	},
	{
		Skin = 5,
		Color = Color(17,17,27),
	},
	{
		Skin = 0,
		Color = Color(117,117,117),
	},
	{
		Skin = 1,
		Color = Color(217,217,217),
	},
	{
		Skin = 4,
		Color = Color(255,191,0),
	},
	{
		Skin = 4,
		Color = Color(164,135,103),
	},
	{
		Skin = 2,
		Color = Color(8,74,161),
	},
	{
		Skin = 2,
		Color = Color(47,68,114),
	},
	{
		Skin = 0,
		Color = Color(201,195,176),
	},
	{
		Skin = 4,
		Color = Color(43,0,0),
	},
}


ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/ferrari_365/eng_idle_loop.wav",
		Volume = 1,
		Pitch = 70,
		PitchMul = 30,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/ferrari_365/eng_loop.wav",
		Volume = 1,
		Pitch = 80,
		PitchMul = 110,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/ferrari_365/eng_revdown_loop.wav",
		Volume = 1,
		Pitch = 80,
		PitchMul = 110,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_DOWN,
		UseDoppler = true,
	},
}

ENT.HornSound = "lvs/horn4.wav"
ENT.HornPos = Vector(40,0,35)

ENT.ExhaustPositions = {
	{
		pos = Vector(-90.01,17.61,13.31),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-90.01,21,13.31),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-90.01,-17.61,13.31),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-90.01,-21,13.31),
		ang = Angle(0,180,0),
	},
}

ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 16,
		Sprites = {
			{ pos = Vector(84.95,21.9,25.42), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 0 } }, },
			{ pos = Vector(84.95,-21.9,25.42), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 0 } }, },

			{ pos = Vector(78.33,22.03,24.81), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 1 } }, },
			{ pos = Vector(78.33,-22.03,24.81), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 1 } }, },

			{ pos = Vector(77.94,22.15,24.26), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 2 } }, },
			{ pos = Vector(77.94,-22.15,24.26), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 2 } }, },

			{
				pos = Vector(-88.03,21.44,27.81),
				colorG = 0,
				colorB = 0,
				colorA = 150,
			},
			{
				pos = Vector(-88.03,-21.44,27.81),
				colorG = 0,
				colorB = 0,
				colorA = 150,
			},
		},
		ProjectedTextures = {
			{
				pos = Vector(84.95,-21.9,25.42),
				ang = Angle(0,0,0),
				colorB = 200,
				colorA = 150,
				shadows = true,
			},
			{
				pos = Vector(84.95,21.9,25.42),
				ang = Angle(0,0,0),
				colorB = 200,
				colorA = 150,
				shadows = true,
			},
		},
	},
	{
		Trigger = "high",
		SubMaterialID = 21,
		Sprites = {
			{ pos = Vector(86.31,15.79,25.54), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 0 } }, },
			{ pos = Vector(86.31,-15.79,25.54), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 0 } }, },

			{ pos = Vector(79.25,15.91,24.74), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 1 } }, },
			{ pos = Vector(79.25,-15.91,24.74), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 1 } }, },

			{ pos = Vector(80.1,15.7,24.3), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 2 } }, },
			{ pos = Vector(80.1,-15.7,24.3), colorB = 200, colorA = 150, bodygroup = { name = "Headlights", active = { 2 } }, },
		},
		ProjectedTextures = {
			{
				pos = Vector(86.34,-15.93,25.76),
				ang = Angle(0,0,0),
				colorB = 200,
				colorA = 150,
				shadows = true,
			},
			{
				pos = Vector(86.34,15.93,25.76),
				ang = Angle(0,0,0),
				colorB = 200,
				colorA = 150,
				shadows = true,
			},
		},
	},
	{
		Trigger = "brake",
		SubMaterialID = 20,
		Sprites = {
			{
				pos = Vector(-88.25,24.19,24.23),
				colorG = 0,
				colorB = 0,
				colorA = 150,
			},
			{
				pos = Vector(-88.25,-24.19,24.23),
				colorG = 0,
				colorB = 0,
				colorA = 150,
			},
		}
	},
	{
		Trigger = "reverse",
		SubMaterialID = 15,
		Sprites = {
			{
				pos = Vector(-89.84,0,19.94),
				height = 25,
				width = 25,
				colorA = 150,
			},
		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 13,
		Sprites = {
			{
				width = 35,
				height = 35,
				pos = Vector(74.22,-31.15,24.05),
				colorG = 100,
				colorB = 0,
				colorA = 150,
			},
			{
				width = 40,
				height = 40,
				pos = Vector(-87.04,-26.58,28.13),
				colorG = 100,
				colorB = 0,
				colorA = 150,
			},
			{
				width = 15,
				height = 15,
				pos = Vector(-80.73,-31.11,27.34),
				colorG = 100,
				colorB = 0,
				colorA = 150,
			},
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 14,
		Sprites = {
			{
				width = 35,
				height = 35,
				pos = Vector(74.22,31.15,24.05),
				colorG = 100,
				colorB = 0,
				colorA = 50,
			},
			{
				width = 40,
				height = 40,
				pos = Vector(-87.04,26.58,28.13),
				colorG = 100,
				colorB = 0,
				colorA = 150,
			},
			{
				width = 15,
				height = 15,
				pos = Vector(-80.73,31.11,27.34),
				colorG = 100,
				colorB = 0,
				colorA = 150,
			},
		},
	},
}
