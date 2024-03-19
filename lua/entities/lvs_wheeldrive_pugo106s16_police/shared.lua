
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
		Trigger = "1",
		SubMaterialID = 21,
		Sprites = {
			{ pos = "bulb1a", colorR = 0, colorG = 0, colorA = 255, width = 40, height = 40 },
			{ pos = "bulb2a", colorG = 0, colorB = 0, colorA = 255, width = 50, height = 70 },
			{ pos = "bulb3a", colorG = 0, colorB = 0, colorA = 255, width = 50, height = 50 },
			{ pos = "bulb4a", colorR = 0, colorG = 0, colorA = 255, width = 40, height = 40 },
		},
	},

	{
		Trigger = "main",
		ProjectedTextures = {
			{ pos = Vector(65.89,20.77,23.67), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "front", active = { 0 } }, },
			{ pos = Vector(65.89,-20.77,23.67), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "front", active = { 0 } }, },
		},
	},
	{
		Trigger = "main+high",
		SubMaterialID = 24,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(65.89,20.77,23.67), colorB = 200, colorA = 150, width = 30, height = 30, bodygroup = { name = "front", active = { 0 } }, },
			{ pos = Vector(65.89,-20.77,23.67), colorB = 200, colorA = 150, width = 30, height = 30, bodygroup = { name = "front", active = { 0 } }, },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 7,
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 30,
		Sprites = {
			{ pos = Vector(-67.19,25.3,26.36), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30, bodygroup = { name = "rear", active = { 0 } }, },
			{ pos = Vector(-67.19,-25.3,26.36), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30, bodygroup = { name = "rear", active = { 0 } }, },
		},
	},
	{
		Trigger = "high",
		ProjectedTextures = {
			{ pos = Vector(65.89,-20.77,23.67), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "front", active = { 0 } }, },
			{ pos = Vector(65.89,20.77,23.67), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "front", active = { 0 } }, },
		},
	},

	{
		Trigger = "reverse",
		SubMaterialID = 31,
		SubMaterialBrightness = 25,
		Sprites = {
			{ pos = Vector(-68.14,22.63,28.63), height = 25, width = 25, colorA = 150, bodygroup = { name = "rear", active = { 0 } }, },
			{ pos = Vector(-68.14,-22.63,28.63), height = 25, width = 25, colorA = 150, bodygroup = { name = "rear", active = { 0 } }, },
		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 14,
		SubMaterialBrightness = 25,
		Sprites = {
			{ width = 45, height = 45, pos = Vector(-65.25,-27.63,29.02), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "rear", active = { 0 } }, },
			{ width = 65, height = 65, pos = Vector(61.88,-26.59,23.97), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "front", active = { 0 } }, },
			{ width = 25, height = 25, pos = Vector(32.01,-31.41,25.57), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "front", active = { 0 } }, },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 15,
		SubMaterialBrightness = 25,
		Sprites = {
			{ width = 45, height = 45, pos = Vector(-65.25,27.63,29.02), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "rear", active = { 0 } }, },
			{ width = 65, height = 65, pos = Vector(61.88,26.59,23.97), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "front", active = { 0 } }, },
			{ width = 25, height = 25, pos = Vector(32.01,31.41,25.57), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "front", active = { 0 } }, },
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 25,
		Sprites = {
			{ pos = Vector(66.29,22.07,12.48), colorB = 200, colorA = 150, bodygroup = { name = "front", active = { 0 } }, },
			{ pos = Vector(66.29,-22.07,12.48), colorB = 200, colorA = 150, bodygroup = { name = "front", active = { 0 } }, },
		},
	},
}


