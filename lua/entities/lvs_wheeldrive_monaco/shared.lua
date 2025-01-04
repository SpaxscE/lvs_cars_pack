
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Dodge Monaco"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/dodge_monaco/monaco_police.mdl"

ENT.EnableDSPEffects = true

ENT.MaxVelocity = 2200

ENT.EngineTorque = 120
ENT.EngineIdleRPM = 750
ENT.EngineMaxRPM = 6000

ENT.TransGears = 3
ENT.TransGearsReverse = 1
ENT.TransShiftSpeed = 0
ENT.TransWobbleTime = 0
ENT.TransWobbleFrequencyMultiplier = 0
ENT.TransShiftSound = "common/null.wav"

ENT.HornSound = "lvs/horn2.wav"
ENT.HornPos = Vector(40,0,35)


ENT.RandomColor = {
	{
		Skin = 0,
		Color = Color(0,114,221),
		BodyGroups = {
			[1] = 3,
			[2] = 2,
			[6] = 1,
			[11] = 5,
			[18] = 1,
		},
	},
	{
		Skin = 0,
		Color = Color(127,0,0),
		BodyGroups = {
			[1] = 3,
			[2] = 2,
			[6] = 1,
			[11] = 5,
			[18] = 1,
		},
	},
	{
		Skin = 0,
		Color = Color(255,93,0),
		BodyGroups = {
			[1] = 3,
			[2] = 2,
			[6] = 1,
			[11] = 5,
			[18] = 1,
		},
	},
	{
		Skin = 0,
		Color = Color(232,251,90),
		BodyGroups = {
			[1] = 3,
			[2] = 2,
			[6] = 1,
			[11] = 5,
			[18] = 1,
		},
	},
	{
		Skin = 0,
		Color = Color(95,127,63),
		BodyGroups = {
			[1] = 3,
			[2] = 2,
			[6] = 1,
			[11] = 5,
			[18] = 1,
		},
	},
	{
		Skin = 0,
		Color = Color(255,223,127),
		BodyGroups = {
			[1] = 3,
			[2] = 2,
			[6] = 1,
			[11] = 5,
			[18] = 1,
		},
	},
	{
		Skin = 0,
		Color = Color(32,85,154),
		BodyGroups = {
			[1] = 3,
			[2] = 2,
			[6] = 1,
			[11] = 5,
			[18] = 1,
		},
	},
	{
		Skin = 0,
		Color = Color(140,140,140),
		BodyGroups = {
			[1] = 3,
			[2] = 2,
			[6] = 1,
			[11] = 5,
			[18] = 1,
		},
	},
	{
		Skin = 0,
		Color = Color(240,240,240),
		BodyGroups = {
			[1] = 3,
			[2] = 2,
			[6] = 1,
			[11] = 5,
			[18] = 1,
		},
	},

}


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
		pos = Vector(-109.89,23.84,17.4),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-109.89,23.84,17.4),
		ang = Angle(0,180,0),
	}
}


ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 23,
		Sprites = {
			{ pos = Vector(103.47,-34.2,28.04), colorB = 200, colorA = 150, bodygroup = { name = "fender_right", active = { 0 } }, },
			{ pos = Vector(103.47,34.2,28.04), colorB = 200, colorA = 150, bodygroup = { name = "fender_left", active = { 0 } }, },
		},
		ProjectedTextures = {
			{ pos = Vector(103.47,-34.2,28.04), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "fender_right", active = { 0 } }, },
			{ pos = Vector(103.47,34.2,28.04), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "fender_left", active = { 0 } }, },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 30,
	},
	{
		Trigger = "main",
		SubMaterialID = 6,
	},
	{
		Trigger = "high",
		SubMaterialID = 24,
		Sprites = {
			{ pos = Vector(103.01,26.54,27.96), colorB = 200, colorA = 150, bodygroup = { name = "fender_left", active = { 0 } }, },
			{ pos = Vector(103.01,-26.54,27.96), colorB = 200, colorA = 150, bodygroup = { name = "fender_right", active = { 0 } }, },
		},
		ProjectedTextures = {
			{ pos = Vector(103.01,26.54,27.96), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "fender_left", active = { 0 } }, },
			{ pos = Vector(103.01,-26.54,27.96), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "fender_right", active = { 0 } }, },
		},
	},

	{
		Trigger = "main+brake+turnleft",
		SubMaterialID = 27,
		Sprites = {
			{ pos = Vector(-112.82,29.47,30.69), width = 40, height = 40, colorG = 0, colorB = 0, colorA = 150, mat = "sprites/lvs/glow_smooth", bodygroup = { name = "rear", active = { 0 } }, },
			{ pos = Vector(-112.94,17.4,30.64), width = 40, height = 40, colorG = 0, colorB = 0, colorA = 150, mat = "sprites/lvs/glow_smooth", bodygroup = { name = "rear", active = { 0 } }, },
		},
	},
	{
		Trigger = "main+brake+turnright",
		SubMaterialID = 28,
		Sprites = {
			{ pos = Vector(-112.82,-29.47,30.69), width = 40, height = 40, colorG = 0, colorB = 0, colorA = 150, mat = "sprites/lvs/glow_smooth", bodygroup = { name = "rear", active = { 0 } }, },
			{ pos = Vector(-112.94,-17.4,30.64), width = 40, height = 40, colorG = 0, colorB = 0, colorA = 150, mat = "sprites/lvs/glow_smooth", bodygroup = { name = "rear", active = { 0 } }, },
		},
	},
	{
		Trigger = "turnright",
		SubMaterialID = 25,
		Sprites = {
			{ width = 40, height = 20, pos = Vector(107.4,-19.47,16.94), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "front_bumper", active = { 0 } }, },
			{ width = 40, height = 20, pos = Vector(95.92,-40.16,27.25), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "fender_right", active = { 0 } }, },
			{ width = 40, height = 20, pos = Vector(-99.94,-39.86,27.22), colorG = 50, colorB = 0, colorA = 150, bodygroup = { name = "rear", active = { 0 } }, },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 26,
		Sprites = {
			{ width = 40, height = 20, pos = Vector(107.4,19.47,16.94), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "front_bumper", active = { 0 } }, },
			{ width = 40, height = 20, pos = Vector(95.92,40.16,27.25), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "fender_left", active = { 0 } }, },
			{ width = 40, height = 20, pos = Vector(-99.94,39.86,27.22), colorG = 50, colorB = 0, colorA = 150, bodygroup = { name = "rear", active = { 0 } }, },

		},
	},
	{
		Trigger = "reverse",
		SubMaterialID = 21,
		SubMaterialBrightness = 20,
		Sprites = {
			{ pos = Vector(-112.68,23.37,30.76), height = 25, width = 45, colorA = 150, bodygroup = { name = "rear", active = { 0 } }, },
			{ pos = Vector(-112.68,-23.37,30.76), height = 25, width = 45, colorA = 150, bodygroup = { name = "rear", active = { 0 } }, },
		}
	},

	{
		Trigger = "fog",
		SubMaterialID = 22,
		Sprites = {
			{ pos = "spot1a", colorB = 200, colorA = 150, bodygroup = { name = "Spotlight", active = { 0 } }, },
			{ pos = "spot2a", colorB = 200, colorA = 150, bodygroup = { name = "Spotlight", active = { 0 } }, },
		},
		ProjectedTextures = {
			{ pos = "spot1a", ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Spotlight", active = { 0 } }, },
			{ pos = "spot2a", ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Spotlight", active = { 0 } }, },
		},
	},

}



