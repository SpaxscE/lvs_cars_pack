
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Porsche 911(993) Turbo"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/porsche_993/carrera.mdl"

ENT.MaxVelocity = 3000

ENT.EngineCurve = 0.8
ENT.EngineTorque = 60

ENT.EngineIdleRPM = 700
ENT.EngineMaxRPM = 8000

ENT.TransGears = 6
ENT.TransGearsReverse = 1

ENT.PhysicsMass = 700
ENT.PhysicsInertia = Vector(1050,1050,525)

ENT.WheelPhysicsMass = 150
ENT.WheelPhysicsInertia = Vector(15,12,15)

ENT.RandomColor = {

	{
		Skin = 0,
		Color = Color(240,240,240),
		BodyGroups = {
			[6] = 3,
		},
	},
	{
		Skin = 0,
		Color = Color(140,0,0),
		BodyGroups = {
			[6] = 3,
		},
	},
	{
		Skin = 0,
		Color = Color(255,191,0),
		BodyGroups = {
			[6] = 3,
		},
	},
	{
		Skin = 0,
		Color = Color(54,110,91),
		BodyGroups = {
			[6] = 3,
		},
	},
	{
		Skin = 0,
		Color = Color(100,100,100),
		BodyGroups = {
			[6] = 3,
		},
	},
	{
		Skin = 0,
		Color = Color(181,159,85),
		BodyGroups = {
			[6] = 3,
		},
	},
	{
		Skin = 0,
		Color = Color(28,68,190),
		BodyGroups = {
			[6] = 3,
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
		pos = Vector(-83.53,21.46,3.75),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-83.53,-21.46,3.75),
		ang = Angle(0,180,0),
	}
}

ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 23,
		Sprites = {
			{ pos = Vector(68.69,23.38,21.31), colorB = 200, colorA = 150 },
			{ pos = Vector(68.69,-23.38,21.31), colorB = 200, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(68.69,23.38,21.31), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(68.69,-23.38,21.31), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 14,
		Sprites = {
			{ width = 45, height = 45, pos = Vector(-80.62,-20.41,17.87), colorG = 0, colorB = 0, colorA = 50 },
			{ width = 45, height = 45, pos = Vector(-80.62,20.41,17.87), colorG = 0, colorB = 0, colorA = 50 },
		}
	},
	{
		Trigger = "main",
		SubMaterialID = 19,
	},
	{
		Trigger = "high",
		SubMaterialID = 24,
		Sprites = {
			{ pos = Vector(68.59,23.41,18.51), colorB = 200, colorA = 150 },
			{ pos = Vector(68.59,-23.41,18.51), colorB = 200, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(68.59,23.41,18.51), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(68.59,-23.41,18.51), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},

	{
		Trigger = "brake",
		SubMaterialID = 6,
		SubMaterialBrightness = 2,
		Sprites = {
			{ width = 45, height = 45, pos = Vector(-82.5,-10.94,18.28), colorG = 0, colorB = 0, colorA = 50 },
			{ width = 45, height = 45, pos = Vector(-82.5,10.94,18.28), colorG = 0, colorB = 0, colorA = 50 },
		}
	},

	{
		Trigger = "reverse",
		SubMaterialID = 18,
		Sprites = {
			{ pos = Vector(-82.1,-15.44,18.41), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-82.1,15.44,18.41), height = 25, width = 25, colorA = 150 },
		}
	},
		{
		Trigger = "turnright",
		SubMaterialID = 17,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(-77.53,-25.71,18.07), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
		{
		Trigger = "turnright",
		SubMaterialID = 29,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(73.67,-26.36,10.64), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
		{
		Trigger = "turnleft",
		SubMaterialID = 15,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(-77.53,25.71,18.07), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
		{
		Trigger = "turnleft",
		SubMaterialID = 28,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(73.67,26.36,10.64), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 30,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(78.65,20.93,10.8), colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 0 } }, },
			{ pos = Vector(78.65,-20.93,10.8), colorB = 200,colorA = 150, bodygroup = { name = "Front_Bumper", active = { 0 } }, },
			{ pos = Vector(76.74,21.78,10.73), colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 2 } }, },
			{ pos = Vector(76.74,-21.78,10.73), colorB = 200,colorA = 150, bodygroup = { name = "Front_Bumper", active = { 2 } }, },
		},
	},
}
