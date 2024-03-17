
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Ford Fairlane 500"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL =  "models/diggercars/ford_fairlane/ford_fairlane.mdl"

ENT.HornSound = "lvs/horn4.wav"
ENT.HornPos = Vector(0,40,35)


ENT.MaxVelocity = 2200

ENT.PhysicsMass = 1300

ENT.EngineTorque = 150

ENT.TransGears = 3
ENT.TransGearsReverse = 1

ENT.RandomColor = {
	{
		Skin = 4,
		Color = Color(164,203,255),
	},
	{
		Skin = 2,
		Color = Color(163,149,113),
	},
	{
		Skin = 0,
		Color = Color(21,27,46),
	},
	{
		Skin = 1,
		Color = Color(240,240,240),
	},
	{
		Skin = 3,
		Color = Color(101,93,70),
	},
	{
		Skin = 3,
		Color = Color(37,50,24),
	},
	{
		Skin = 0,
		Color = Color(120,0,0),
	},
	{
		Skin = 5,
		Color = Color(21,125,177),
	},
	{
		Skin = 6,
		Color = Color(117,60,22),
	},
	{
		Skin = 1,
		Color = Color(50,0,0),
	},
	{
		Skin = 0,
		Color = Color(255,193,0),
	},
	{
		Skin = 1,
		Color = Color(255,227,150),
	},
	{
		Skin = 4,
		Color = Color(111,112,135),
	},
	{
		Skin = 3,
		Color = Color(95,106,111),
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
		pos = Vector(-19.31,-102.73,4.25),
		ang = Angle(30,-90,0),
	},
	{
		pos = Vector(19.31,-102.73,4.25),
		ang = Angle(30,-90,0),
	}
}


ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 15,
		Sprites = {
			{ pos = Vector(-32.31,92.09,18.53), colorB = 200, colorA = 150, bodygroup = { name = "wing_lf", active = { 0 } }, },
			{ pos = Vector(32.31,92.09,18.53), colorB = 200, colorA = 150, bodygroup = { name = "wing_rf", active = { 0 } }, },

		},
		ProjectedTextures = {
			{ pos = Vector(-32.31,92.09,18.53), ang = Angle(0,90,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "wing_lf", active = { 0 } }, },
			{ pos = Vector(32.31,92.09,18.53), ang = Angle(0,90,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "wing_rf", active = { 0 } }, },
		},
	},
	{
		Trigger = "high",
		SubMaterialID = 14,
		Sprites = {
			{ pos = Vector(32.27,94.16,25.42), colorB = 200, colorA = 150, bodygroup = { name = "wing_rf", active = { 0 } }, },
			{ pos = Vector(-32.27,94.16,25.42), colorB = 200, colorA = 150, bodygroup = { name = "wing_lf", active = { 0 } }, },
		},
		ProjectedTextures = {
			{ pos = Vector(32.27,94.16,25.42), ang = Angle(0,90,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "wing_rf", active = { 0 } }, },
			{ pos = Vector(-32.27,94.16,25.42), ang = Angle(0,90,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "wing_lf", active = { 0 } }, },
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 18,
		Sprites = {
			{ pos = Vector(33.09,-105.72,22.61), width = 50, height = 50, colorG = 0, colorB = 0, colorA = 80, mat = Material( "sprites/lvs/glow_smooth" ) },
			{ pos = Vector(-33.09,-105.72,22.61), width = 50, height = 50, colorG = 0, colorB = 0, colorA = 80, mat = Material( "sprites/lvs/glow_smooth" ) },
		},
	},
	{
		Trigger = "main+brake+turnleft",
		SubMaterialID = 20,
		Sprites = {
			{ pos = Vector(-33.09,-105.72,22.61), width = 80, height = 50, colorG = 0, colorB = 0, colorA = 150, mat = "sprites/lvs/glow_smooth" },
		},
	},
	{
		Trigger = "main+brake+turnright",
		SubMaterialID = 17,
		Sprites = {
			{ pos = Vector(33.09,-105.72,22.61), width = 80, height = 50, colorG = 0, colorB = 0, colorA = 150, mat = "sprites/lvs/glow_smooth" },
		},
	},
	{
		Trigger = "turnright",
		SubMaterialID = 8,
		Sprites = {
			{ width = 40, height = 40, pos = Vector(32.04,95.34,9.73), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "front_bumper", active = { 0 } }, },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 7,
		Sprites = {
			{ width = 40, height = 40, pos = Vector(-32.04,95.34,9.73), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "front_bumper", active = { 0 } }, },
		},
	},
	{
		Trigger = "reverse",
		SubMaterialID = 19,
		Sprites = {
			{ pos = Vector(-33.17,-105.78,22.4), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(33.17,-105.78,22.4), height = 25, width = 25, colorA = 150 },
		}
	},
}

