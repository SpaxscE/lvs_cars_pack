
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Volkswagen Type 11"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/vw_beetle/beetle_early.mdl"

ENT.MaxVelocity = 1400

ENT.EngineCurve = 0.3
ENT.EngineTorque = 50

ENT.TransGears = 4
ENT.TransGearsReverse = 1

ENT.PhysicsMass = 700
ENT.PhysicsInertia = Vector(1050,1050,525)

ENT.WheelPhysicsMass = 150
ENT.WheelPhysicsInertia = Vector(15,12,15)

ENT.HornSound = "lvs/horn1.wav"
ENT.HornPos = Vector(40,0,35)

ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/boxer4/eng_idle_loop.wav",
		Volume = 1,
		Pitch = 50,
		PitchMul = 100,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/boxer4/eng_loop.wav",
		Volume = 1,
		Pitch = 60,
		PitchMul = 100,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/boxer4/eng_revdown_loop.wav",
		Volume = 1,
		Pitch = 60,
		PitchMul = 100,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_DOWN,
		UseDoppler = true,
	},
}
ENT.RandomColor = {
	{
		Skin = 0,
		Color = Color(20,20,20),
		Wheels = {
			Skin = 0,
			Color = Color(20,20,20),
		}
	},
	{
		Skin = 0,
		Color = Color(150,150,150),
		Wheels = {
			Skin = 0,
			Color = Color(150,150,150),
		}
	},
}

ENT.ExhaustPositions = {
	{
		pos = Vector(-82.01,6.84,9.52),
		ang = Angle(19.03,160.83,0.28),
	},
	{
		pos = Vector(-82.01,-6.84,9.52),
		ang = Angle(19.03,160.83,0.28),
	},
}

ENT.Lights = {
	{
		Trigger = "main",
		ProjectedTextures = {
			{ pos = Vector(62.42,21.02,24.35), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "fender_front_left", active = { 0 } }, },
			{ pos = Vector(62.42,-21.02,24.35), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "fender_front_right", active = { 0 } }, },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 28,
		SubMaterialBrightness = 0.3,
	},
	{
		Trigger = "main",
		SubMaterialID = 1,
	},
	{
		Trigger = "high",
		ProjectedTextures = {
			{ pos = Vector(62.42,21.02,24.35), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "fender_front_left", active = { 0 } }, },
			{ pos = Vector(62.42,-21.02,24.35), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "fender_front_right", active = { 0 } },},
		},
	},
	{
		Trigger = "main+high",
		SubMaterialID = 26,
		SubMaterialBrightness = 1,
		Sprites = {
			{ pos = Vector(62.42,21.02,24.35), colorB = 200, colorA = 150, bodygroup = { name = "fender_front_left", active = { 0 } }, },
			{ pos = Vector(62.42,-21.02,24.35), colorB = 200, colorA = 150, bodygroup = { name = "fender_front_right", active = { 0 } },},
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 30,
		Sprites = {
			{ pos = Vector(-67.94,23.02,21.73), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30, bodygroup = { name = "fender_rear_left", active = { 0 } }, },
			{ pos = Vector(-67.94,-23.02,21.73), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30, bodygroup = { name = "fender_rear_right", active = { 0 } }, },
		},
	},
}