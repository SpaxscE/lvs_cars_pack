
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "BMW M3CSL (E46)"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/bmw_e46/e46.mdl"

ENT.MaxVelocity = 2900

ENT.EngineTorque = 155
ENT.EngineIdleRPM = 1000
ENT.EngineMaxRPM = 9000

ENT.TransGears = 6
ENT.TransGearsReverse = 1

ENT.PhysicsMass = 1000

ENT.WheelPhysicsMass = 130

ENT.HornSound = "lvs/horn4.wav"
ENT.HornPos = Vector(40,0,35)

ENT.RandomColor = {

	{
		Skin = 1,
		Color = Color(100,100,100),
		BodyGroups = {
			[1] = 1,
			[4] = 1,
			[6] = 1,
			[11] = 1,
			[13] = 7,
		},
	},
	{
		Skin = 1,
		Color = Color(20,20,20),
		BodyGroups = {
			[1] = 1,
			[4] = 1,
			[6] = 1,
			[11] = 1,
			[13] = 7,
		},
	},

}


ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/e46/idle.wav",
		Volume = 1,
		Pitch = 60,
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
		pos = Vector(-87.05,13.52,6.42),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-87.17,10.1,6.33),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-87.05,-13.52,6.42),
		ang = Angle(0,180,0),
	},
	{
		pos = Vector(-87.17,-10.1,6.33),
		ang = Angle(0,180,0),
	},
}

ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 14,
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
		SubMaterialID = 12,
	},
	{
		Trigger = "main",
		SubMaterialID = 13,
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 19,
		SubMaterialBrightness = 20,
		Sprites = {
			{ width = 45, height = 45, pos = Vector(-83.3,24.48,25.93), colorG = 0, colorB = 0, colorA = 150 },
			{ width = 45, height = 45, pos = Vector(-83.3,-24.48,25.93), colorG = 0, colorB = 0, colorA = 150 },
		},
	},

	{
		Trigger = "brake",
		SubMaterialID = 20,
		SubMaterialBrightness = 25,
		Sprites = {
			{ width = 65, height = 15, pos = Vector(-44.7,0,45.56), colorG = 0, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "high",
		SubMaterialID = 17,
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
		SubMaterialID = 23,
		Sprites = {
			{ pos = Vector(82.13,-25.13,7.83), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 0 } }, },
			{ pos = Vector(82.13,25.13,7.83), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 0 } }, },
			{ pos = Vector(82.13,-25.13,7.83), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 3 } }, },
			{ pos = Vector(82.13,25.13,7.83), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 3 } }, },
			{ pos = Vector(83.42,-23.91,7.74), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 4 } }, },
			{ pos = Vector(83.42,23.91,7.74), height = 25, width = 25, colorB = 200, colorA = 150, bodygroup = { name = "Front_Bumper", active = { 4 } }, },
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
		SubMaterialID = 18,
		SubMaterialBrightness = 10,
		Sprites = {
			{ width = 45, height = 25,  pos = Vector(-83.61,-24.55,29.19), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 45, pos = Vector(39.08,-34.39,16), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Fenders", active = { 0 } }, },
			{ width = 45, height = 45, pos = Vector(39.08,-34.39,16), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Fenders", active = { 1 } }, },
			{ width = 45, height = 45, pos = Vector(39.08,-34.39,16), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Fenders", active = { 3 } }, },
			{ width = 25, height = 25, pos = Vector(76.67,-28.78,18.94), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 15,
		SubMaterialBrightness = 10,
		Sprites = {
			{ width = 45, height = 25, pos = Vector(-83.61,24.55,29.19), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 45, height = 45, pos = Vector(39.08,34.39,16), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Fenders", active = { 0 } }, },
			{ width = 45, height = 45, pos = Vector(39.08,34.39,16), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Fenders", active = { 1 } }, },
			{ width = 45, height = 45, pos = Vector(39.08,34.39,16), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "Front_Fenders", active = { 3 } }, },
			{ width = 25, height = 25, pos = Vector(76.67,28.78,18.94), colorG = 100, colorB = 0, colorA = 50 },

		},
	},
}

