
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Volkswagen Beetle"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/vw_beetle/beetle.mdl"

ENT.MaxVelocity = 1500

ENT.EngineCurve = 0.3
ENT.EngineTorque = 55

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
		sound = "lvs/vehicles/boxer4/2_idle.wav",
		Volume = 1,
		Pitch = 50,
		PitchMul = 50,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/boxer4/2_loop.wav",
		Volume = 1,
		Pitch = 50,
		PitchMul = 70,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/boxer4/2_revdown.wav",
		Volume = 1,
		Pitch = 50,
		PitchMul = 70,
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
		Color = Color(93,54,40),
		Wheels = {
			Skin = 0,
			Color = Color(93,54,40),
		}
	},
	{
		Skin = 0,
		Color = Color(172,138,133),
		Wheels = {
			Skin = 0,
			Color = Color(172,138,133),
		}
	},
	{
		Skin = 0,
		Color = Color(229,178,146),
		Wheels = {
			Skin = 0,
			Color = Color(229,178,146),
		}
	},
	{
		Skin = 0,
		Color = Color(243,67,32),
		Wheels = {
			Skin = 0,
			Color = Color(243,67,32),
		}
	},
	{
		Skin = 0,
		Color = Color(145,17,17),
		Wheels = {
			Skin = 0,
			Color = Color(145,17,17),
		}
	},
	{
		Skin = 0,
		Color = Color(169,55,33),
		Wheels = {
			Skin = 0,
			Color = Color(169,55,33),
		}
	},
	{
		Skin = 0,
		Color = Color(255,225,145),
		Wheels = {
			Skin = 0,
			Color = Color(255,225,145),
		}
	},
	{
		Skin = 0,
		Color = Color(255,195,30),
		Wheels = {
			Skin = 0,
			Color = Color(255,195,30),
		}
	},
	{
		Skin = 0,
		Color = Color(255,215,190),
		Wheels = {
			Skin = 0,
			Color = Color(255,215,190),
		}
	},
	{
		Skin = 0,
		Color = Color(100,100,100),
		Wheels = {
			Skin = 0,
			Color = Color(100,100,100),
		}
	},
	{
		Skin = 0,
		Color = Color(220,220,220),
		Wheels = {
			Skin = 0,
			Color = Color(220,220,220),
		}
	},
	{
		Skin = 0,
		Color = Color(162,167,155),
		Wheels = {
			Skin = 0,
			Color = Color(162,167,155),
		}
	},
	{
		Skin = 0,
		Color = Color(88,109,77),
		Wheels = {
			Skin = 0,
			Color = Color(88,109,77),
		}
	},
	{
		Skin = 0,
		Color = Color(23,38,82),
		Wheels = {
			Skin = 0,
			Color = Color(23,38,82),
		}
	},
	{
		Skin = 0,
		Color = Color(72,98,132),
		Wheels = {
			Skin = 0,
			Color = Color(72,98,132),
		}
	},
	{
		Skin = 0,
		Color = Color(175,202,238),
		Wheels = {
			Skin = 0,
			Color = Color(175,202,238),
		}
	},
	{
		Skin = 0,
		Color = Color(64,111,140),
		Wheels = {
			Skin = 0,
			Color = Color(64,111,140),
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
		SubMaterialID = 24,
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
		SubMaterialID = 22,
		SubMaterialBrightness = 1,
		Sprites = {
			{ pos = Vector(62.42,21.02,24.35), colorB = 200, colorA = 150, bodygroup = { name = "fender_front_left", active = { 0 } }, },
			{ pos = Vector(62.42,-21.02,24.35), colorB = 200, colorA = 150, bodygroup = { name = "fender_front_right", active = { 0 } },},
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 28,
		Sprites = {
			{ pos = Vector(-69.38,22.62,20.47), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30, bodygroup = { name = "fender_rear_left", active = { 0 } }, },
			{ pos = Vector(-69.38,-22.62,20.47), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30, bodygroup = { name = "fender_rear_right", active = { 0 } }, },
		},
	},
	{
		Trigger = "turnright",
		SubMaterialID = 27,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(52.58,-22.81,32.12), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "fender_front_right", active = { 0 } }, },
			{ width = 40, height = 40, pos = Vector(-68.01,-22.64,23.03), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "fender_rear_right", active = { 0 } }, },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 25,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(52.58,22.81,32.12), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "fender_front_left", active = { 0 } }, },
			{ width = 40, height = 40, pos = Vector(-68.01,22.64,23.03), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "fender_rear_left", active = { 0 } }, },
		},
	},
}
