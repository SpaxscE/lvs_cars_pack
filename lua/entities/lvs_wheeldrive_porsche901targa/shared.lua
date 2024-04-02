
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Porsche 911(F) Targa"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/porsche_901/targa.mdl"

ENT.MaxVelocity = 2400

ENT.EngineCurve = 0.8
ENT.EngineTorque = 70

ENT.TransGears = 5
ENT.TransGearsReverse = 1

ENT.PhysicsMass = 700
ENT.PhysicsInertia = Vector(1050,1050,525)

ENT.WheelPhysicsMass = 150
ENT.WheelPhysicsInertia = Vector(15,12,15)

ENT.RandomColor = {
	{
		Color = Color(240,240,240),
		BodyGroups = {
			[7] = 1,
		},
	},
	{
		Color = Color(13,55,180),
		BodyGroups = {
			[12] = 2,
		},
	},
	{
		Color = Color(120,0,0),
		BodyGroups = {
			[7] = 1,
			[12] = 1,
			[13] = 1,
		},
	},
	{
		Color = Color(41,74,175),
		BodyGroups = {
			[13] = 1,
		},
	},
	{
		Color = Color(28,41,14),
		BodyGroups = {
			[7] = 1,
			[8] = 1,
			[12] = 2,
			[13] = 2,
			[14] = 1,
		},
	},
	{
		Color = Color(210,74,36),
		BodyGroups = {
			[12] = 2,
		},
	},
	{
		Color = Color(255,90,0),
		BodyGroups = {
			[7] = 1,
			[8] = 1,
			[12] = 2,
			[13] = 2,
			[15] = 1,
		},
	},
	{
		Color = Color(24,15,34),
		BodyGroups = {
			[4] = 1,
			[6] = 1,
			[7] = 1,
			[8] = 1,
			[12] = 2,
			[13] = 2,
			[16] = 1,
			[17] = 1,
			[20] = 1,
		},
	},
	{
		Color = Color(255,191,0),
		BodyGroups = {
			[7] = 1,
			[12] = 1,
			[13] = 1,
		},
	},
	{
		Color = Color(100,100,100),
		BodyGroups = {
			[4] = 1,
			[7] = 1,
			[8] = 1,
			[12] = 2,
			[13] = 2,
			[16] = 1,
			[17] = 1,
			[20] = 1,
		},
	},

}

ENT.HornSound = "lvs/horn1.wav"
ENT.HornPos = Vector(40,0,35)

ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/boxer6/eng_idle_loop.wav",
		Volume = 1,
		Pitch = 55,
		PitchMul = 30,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/boxer6/eng_loop.wav",
		Volume = 1,
		Pitch = 50,
		PitchMul = 80,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/boxer6/eng_revdown_loop.wav",
		Volume = 1,
		Pitch = 50,
		PitchMul = 80,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_DOWN,
		UseDoppler = true,
	},
}

ENT.ExhaustPositions = {
	{
		pos = Vector(-78.97,23.61,8.38),
		ang = Angle(19.03,160.83,0.28),
	}
}

ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 24,
		ProjectedTextures = {
			{ pos = Vector(70.35,24.27,25.07), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(70.35,-24.27,25.07), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 7,
	},
	{
		Trigger = "high",
		ProjectedTextures = {
			{ pos = Vector(70.35,24.27,25.07), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(70.35,-24.27,25.07), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main+high",
		Sprites = {
			{ pos = Vector(70.35,24.27,25.07), colorB = 200, colorA = 150 },
			{ pos = Vector(70.35,-24.27,25.07), colorB = 200, colorA = 150 },
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 26,
		SubMaterialBrightness = 25,
		Sprites = {
			{ width = 25, height = 25, pos = Vector(-77.46,18.82,18.89), colorG = 0, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(-77.46,-18.82,18.89), colorG = 0, colorB = 0, colorA = 50 },
		}
	},
	{
		Trigger = "reverse",
		SubMaterialID = 27,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(-76.9,21.36,19.05), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-76.9,-21.36,19.05), height = 25, width = 25, colorA = 150 },
		}
	},
		{
		Trigger = "turnright",
		SubMaterialID = 29,
		SubMaterialBrightness = 10,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(69.9,-27.39,18.03), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 40, height = 40, pos = Vector(-73.6,-24.2,18.83), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 28,
		SubMaterialBrightness = 10,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(69.9,27.39,18.03), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 40, height = 40, pos = Vector(-73.6,24.2,18.83), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 23,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(74.13,24.02,18.19), colorB = 200, colorA = 150 },
			{ pos = Vector(74.13,-24.02,18.19), colorB = 200,colorA = 150 },
			{ pos = Vector(76.82,19.71,10.39), colorB = 200, colorA = 150, bodygroup = { name = "Foglights1", active = { 1 } }, },
			{ pos = Vector(76.82,-19.71,10.39), colorB = 200,colorA = 150, bodygroup = { name = "Foglights1", active = { 1 } }, },
			{ pos = Vector(77.98,18.16,20.56), colorB = 200, colorA = 150, bodygroup = { name = "Foglights2", active = { 1 } }, },
			{ pos = Vector(77.98,-18.16,20.56), colorB = 200,colorA = 150, bodygroup = { name = "Foglights2", active = { 1 } }, },
		},
	},
}
