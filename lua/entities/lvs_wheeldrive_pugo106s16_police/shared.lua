
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Peugeot 106 S16 Police"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/peugeot_106/106s16_police.mdl"

ENT.MaxVelocity = 2000

ENT.EngineTorque = 85
ENT.EngineIdleRPM = 1000
ENT.EngineMaxRPM = 8000

ENT.PhysicsMass = 1100
ENT.TransGears = 5
ENT.TransGearsReverse = 1

ENT.RandomColor = {Color(240,240,240),Color(20,20,20),Color(100,100,100),Color(230,169,0),Color(100,31,31),Color(33,49,98),Color(200,185,50),Color(145,175,152),Color(13,20,40)}

ENT.SuperChargerVisible = false

ENT.ExhaustPositions = {
	{
		pos = Vector(-68.12,19.68,8.25),
		ang = Angle(55.43,161.45,1.68),
	},
}

ENT.HornSound = "lvs/horn2.wav"
ENT.HornPos = Vector(40,0,35)

ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/miata/eng_idle_loop.wav",
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
		Siren = true,
		Trigger = "10000000",
		DynamicLights = {
			{ pos = "bulb2a", colorR = 255, colorG = 0, colorB = 0, brightness = 0.5, decay= 5, size = 80, lifetime = 0.05 },
		},
	},
	{
		Siren = true,
		Trigger = "00001000",
		DynamicLights = {
			{ pos = "bulb3a", colorR = 255, colorG = 0, colorB = 0, brightness = 0.5, decay= 5, size = 80, lifetime = 0.05 },
		},
	},
	{
		Siren = true,
		Trigger = "00100000",
		DynamicLights = {
			{ pos = "bulb1a", colorR = 0, colorG = 0, colorB = 255, brightness = 0.5, decay= 5, size = 120, lifetime = 0.05 },
		},
	},
	{
		Siren = true,
		Trigger = "00000010",
		DynamicLights = {
			{ pos = "bulb4a", colorR = 0, colorG = 0, colorB = 255, brightness = 0.5, decay= 5, size = 120, lifetime = 0.05 },
		},
	},
	{
		Siren = true,
		Trigger = "00110000",
		Sprites = {
			{ pos = "bulb1a", colorR = 0, colorG = 0, colorA = 255, width = 50, height = 50 },
		},
	},
	{
		Siren = true,
		Trigger = "11000000",
		Sprites = {
			{ pos = "bulb2a", colorG = 0, colorB = 0, colorA = 255, width = 50, height = 50 },
		},
	},
	{
		Siren = true,
		Trigger = "00001100",
		Sprites = {
			{ pos = "bulb3a", colorG = 0, colorB = 0, colorA = 255, width = 50, height = 50 },
		},
	},
	{
		Siren = true,
		Trigger = "00000011",
		Sprites = {
			{ pos = "bulb4a", colorR = 0, colorG = 0, colorA = 255, width = 50, height = 50 },
		},
	},
	{
		Trigger = "main",
		ProjectedTextures = {
			{ pos = Vector(65.89,20.77,23.67), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(65.89,-20.77,23.67), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main+high",
		SubMaterialID = 6,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(65.89,20.77,23.67), colorB = 200, colorA = 150, width = 30, height = 30 },
			{ pos = Vector(65.89,-20.77,23.67), colorB = 200, colorA = 150, width = 30, height = 30 },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 16,
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 30,
		Sprites = {
			{ pos = Vector(-67.19,25.3,26.36), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30 },
			{ pos = Vector(-67.19,-25.3,26.36), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30 },
		},
	},
	{
		Trigger = "high",
		ProjectedTextures = {
			{ pos = Vector(65.89,-20.77,23.67), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(65.89,20.77,23.67), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},

	{
		Trigger = "reverse",
		SubMaterialID = 31,
		SubMaterialBrightness = 25,
		Sprites = {
			{ pos = Vector(-68.14,22.63,28.63), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-68.14,-22.63,28.63), height = 25, width = 25, colorA = 150 },
		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 8,
		SubMaterialBrightness = 25,
		Sprites = {
			{ width = 45, height = 45, pos = Vector(-65.25,-27.63,29.02), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 65, height = 65, pos = Vector(61.88,-26.59,23.97), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(32.01,-31.41,25.57), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 7,
		SubMaterialBrightness = 25,
		Sprites = {
			{ width = 45, height = 45, pos = Vector(-65.25,27.63,29.02), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 65, height = 65, pos = Vector(61.88,26.59,23.97), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(32.01,31.41,25.57), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 23,
		Sprites = {
			{ pos = Vector(66.29,22.07,12.48), colorB = 200, colorA = 150 },
			{ pos = Vector(66.29,-22.07,12.48), colorB = 200, colorA = 150 },
		},
	},
}


