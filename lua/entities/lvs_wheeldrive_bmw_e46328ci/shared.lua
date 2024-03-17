
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "BMW 328ci (E46)"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/bmw_e46/328i.mdl"

ENT.MaxVelocity = 2400

ENT.EngineTorque = 125
ENT.EngineIdleRPM = 1000
ENT.EngineMaxRPM = 9000

ENT.TransGears = 5
ENT.TransGearsReverse = 1

ENT.PhysicsMass = 1200

ENT.WheelPhysicsMass = 130

ENT.HornSound = "lvs/horn4.wav"
ENT.HornPos = Vector(40,0,35)

ENT.RandomColor = {
	Color(13,18,35),
	Color(19,19,30),
	Color(16,38,56),
	Color(82,108,60),
	Color(12,22,8),
	Color(245,245,245),
	Color(205,205,205),
	Color(150,150,150),
	Color(100,100,100),
	Color(50,50,50),
	Color(20,20,20),
	Color(161,137,101),
	Color(145,0,0),
	Color(100,0,0),
	Color(50,0,0),
}

ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/bmw_m5e34/eng_idle_loop.wav",
		Volume = 1,
		Pitch = 80,
		PitchMul = 70,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/bmw_m5e34/eng_loop.wav",
		Volume = 1,
		Pitch = 80,
		PitchMul = 110,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/bmw_m5e34/eng_revdown_loop.wav",
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
		pos = Vector(-88.22,18.85,6.42),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-88.11,22.2,6.41),
		ang = Angle(0,180,0),
	}
}


ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 12,
		SubMaterialBrightness = 1,
		Sprites = {
			{ pos = Vector(78.76,-23.36,19.28), colorB = 200, colorA = 150, width = 60, height = 60 },
			{ pos = Vector(78.76,23.36,19.28), colorB = 200, colorA = 150, width = 60, height = 60 },
		},
		ProjectedTextures = {
			{ pos = Vector(78.76,-23.36,19.28), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(78.76,23.36,19.28), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 11,
	},
	{
		Trigger = "main",
		SubMaterialID = 10,
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 1,
		SubMaterialBrightness = 20,
		Sprites = {
			{ width = 45, height = 45, pos = Vector(-83.3,24.48,25.93), colorG = 0, colorB = 0, colorA = 150 },
			{ width = 45, height = 45, pos = Vector(-83.3,-24.48,25.93), colorG = 0, colorB = 0, colorA = 150 },
		},
	},

	{
		Trigger = "brake",
		SubMaterialID = 17,
		SubMaterialBrightness = 25,
		Sprites = {
			{ width = 65, height = 15, pos = Vector(-44.7,0,45.56), colorG = 0, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "high",
		SubMaterialID = 15,
		Sprites = {
			{ pos = Vector(79.54,17.38,19.4), colorB = 200, colorA = 150 },
			{ pos = Vector(79.54,-17.38,19.4), colorB = 200, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(79.54,17.38,19.4), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(79.54,-17.38,19.4), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 22,
		Sprites = {
			{ pos = Vector(82.35,-22.02,8.61), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 0 } }, },
			{ pos = Vector(82.35,22.02,8.61), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 0 } }, },
			{ pos = Vector(82.13,-25.13,7.83), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 1 } }, },
			{ pos = Vector(82.13,25.13,7.83), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 1 } }, },
			{ pos = Vector(82.13,-25.13,7.83), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 4 } }, },
			{ pos = Vector(82.13,25.13,7.83), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 4 } }, },
			{ pos = Vector(83.42,-23.91,7.74), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 3 } }, },
			{ pos = Vector(83.42,23.91,7.74), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 3 } }, },
			{ width = 25, height = 25, pos = Vector(-85.77,-16.76,24.89), colorG = 0, colorB = 0, colorA = 150 },
			{ width = 25, height = 25, pos = Vector(-85.77,16.76,24.89), colorG = 0, colorB = 0, colorA = 150 },
		},
	},

	{
		Trigger = "reverse",
		SubMaterialID = 26,
		SubMaterialBrightness = 25,
		Sprites = {

			{ pos = Vector(-85.58,-17.42,26.76), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-85.58,17.42,26.76), height = 25, width = 25, colorA = 150 },

		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 16,
		SubMaterialBrightness = 10,
		Sprites = {
			{ width = 45, height = 25,  pos = Vector(-83.61,-24.55,29.19), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 45, pos = Vector(76.67,-28.78,18.94), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 45, pos = Vector(40.24,-34.36,18.31), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 13,
		SubMaterialBrightness = 10,
		Sprites = {
			{ width = 45, height = 25, pos = Vector(-83.61,24.55,29.19), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 45, pos = Vector(76.67,28.78,18.94), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 45, pos = Vector(40.24,34.36,18.31), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
}

