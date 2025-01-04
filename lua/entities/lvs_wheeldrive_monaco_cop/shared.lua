
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Dodge Monaco Police"
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

ENT.HornSound = "lvs/horn5.wav"
ENT.HornPos = Vector(40,0,35)

ENT.RandomColor = {
	{
		Skin = 1,
		Color = Color(255,255,255),
	},
}

ENT.SirenPos = Vector(40,0,35)
ENT.SirenSound = {
	[1] = {
		siren = "lvs/siren1.wav",
		horn = "lvs/siren3.wav",
	},
	[2] = {
		siren = "lvs/siren2.wav",
		horn = "lvs/siren3.wav",
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
		Siren = true,
		Trigger = "1",
		SubMaterialID = 12,
		SubMaterialBrightness = 10,
		Sprites = {
--lightbar1
			{ pos = "bar1l1a1", colorR = 0, colorG = 0, colorA = 255, width = 150, height = 150, bodygroup = { name = "lightbar", active = { 0 } }, },
			{ pos = "bar1l2a1", colorG = 0, colorB = 0, colorA = 255, width = 100, height = 100, bodygroup = { name = "lightbar", active = { 0 } }, },
			{ pos = "bar1l2a1", colorG = 0, colorB = 0, colorA = 255, width = 100, height = 100, bodygroup = { name = "lightbar", active = { 0 } }, },
			{ pos = "bar1l1a1", colorR = 0, colorG = 0, colorA = 255, width = 150, height = 150, bodygroup = { name = "lightbar", active = { 0 } }, },

			{ pos = "bar1l1a2", colorR = 0, colorG = 0, colorA = 255, width = 150, height = 150, bodygroup = { name = "lightbar", active = { 0 } }, },
			{ pos = "bar1l2a2", colorG = 0, colorB = 0, colorA = 255, width = 100, height = 100, bodygroup = { name = "lightbar", active = { 0 } }, },
			{ pos = "bar1l2a2", colorG = 0, colorB = 0, colorA = 255, width = 100, height = 100, bodygroup = { name = "lightbar", active = { 0 } }, },
			{ pos = "bar1l1a2", colorR = 0, colorG = 0, colorA = 255, width = 150, height = 150, bodygroup = { name = "lightbar", active = { 0 } }, },

--lightbar1 white core



			{ pos = "bar1l1a1", colorR = 255, colorG = 255, colorA = 255, width = 40, height = 40, bodygroup = { name = "lightbar", active = { 0 } }, },
			{ pos = "bar1l2a1", colorR = 255, colorG = 255, colorA = 255, width = 30, height = 30, bodygroup = { name = "lightbar", active = { 0 } }, },
			{ pos = "bar1l2a1", colorR = 255, colorG = 255, colorA = 255, width = 30, height = 30, bodygroup = { name = "lightbar", active = { 0 } }, },
			{ pos = "bar1l1a1", colorR = 255, colorG = 255, colorA = 255, width = 40, height = 40, bodygroup = { name = "lightbar", active = { 0 } }, },

			{ pos = "bar1l1a2", colorR = 255, colorG = 255, colorA = 255, width = 40, height = 40, bodygroup = { name = "lightbar", active = { 0 } }, },
			{ pos = "bar1l2a2", colorR = 255, colorG = 255, colorA = 255, width = 30, height = 30, bodygroup = { name = "lightbar", active = { 0 } }, },
			{ pos = "bar1l2a2", colorR = 255, colorG = 255, colorA = 255, width = 30, height = 30, bodygroup = { name = "lightbar", active = { 0 } }, },
			{ pos = "bar1l1a2", colorR = 255, colorG = 255, colorA = 255, width = 40, height = 40, bodygroup = { name = "lightbar", active = { 0 } }, },

--lightbar2
			{ pos = "bar2l1a1", colorR = 0, colorG = 0, colorA = 255, width = 150, height = 150, bodygroup = { name = "lightbar", active = { 1 } }, },
			{ pos = "bar2l2a1", colorG = 0, colorB = 0, colorA = 255, width = 100, height = 100, bodygroup = { name = "lightbar", active = { 1 } }, },
			{ pos = "bar2l2a1", colorG = 0, colorB = 0, colorA = 255, width = 100, height = 100, bodygroup = { name = "lightbar", active = { 1 } }, },
			{ pos = "bar2l1a1", colorR = 0, colorG = 0, colorA = 255, width = 150, height = 150, bodygroup = { name = "lightbar", active = { 1 } }, },

			{ pos = "bar2l1a2", colorR = 0, colorG = 0, colorA = 255, width = 150, height = 150, bodygroup = { name = "lightbar", active = { 1 } }, },
			{ pos = "bar2l2a2", colorG = 0, colorB = 0, colorA = 255, width = 100, height = 100, bodygroup = { name = "lightbar", active = { 1 } }, },
			{ pos = "bar2l2a2", colorG = 0, colorB = 0, colorA = 255, width = 100, height = 100, bodygroup = { name = "lightbar", active = { 1 } }, },
			{ pos = "bar1l1a2", colorR = 0, colorG = 0, colorA = 255, width = 150, height = 150, bodygroup = { name = "lightbar", active = { 1 } }, },



--lightbar2 white core

			{ pos = "bar2l1a1", colorR = 255, colorG = 255, colorA = 255, width = 40, height = 40, bodygroup = { name = "lightbar", active = { 1 } }, },
			{ pos = "bar2l2a1", colorR = 255, colorG = 255, colorA = 255, width = 30, height = 30, bodygroup = { name = "lightbar", active = { 1 } }, },
			{ pos = "bar2l2a1", colorR = 255, colorG = 255, colorA = 255, width = 30, height = 30, bodygroup = { name = "lightbar", active = { 1 } }, },
			{ pos = "bar2l1a1", colorR = 255, colorG = 255, colorA = 255, width = 40, height = 40, bodygroup = { name = "lightbar", active = { 1 } }, },

			{ pos = "bar2l1a2", colorR = 255, colorG = 255, colorA = 255, width = 40, height = 40, bodygroup = { name = "lightbar", active = { 1 } }, },
			{ pos = "bar2l2a2", colorR = 255, colorG = 255, colorA = 255, width = 30, height = 30, bodygroup = { name = "lightbar", active = { 1 } }, },
			{ pos = "bar2l2a2", colorR = 255, colorG = 255, colorA = 255, width = 30, height = 30, bodygroup = { name = "lightbar", active = { 1 } }, },
			{ pos = "bar2l1a2", colorR = 255, colorG = 255, colorA = 255, width = 40, height = 40, bodygroup = { name = "lightbar", active = { 1 } }, },

--lightbar3
			{ pos = "bar3a1", colorG = 0, colorB = 0, colorA = 255, width = 100, height = 100, bodygroup = { name = "lightbar", active = { 2 } }, },
			{ pos = "bar3a2", colorG = 0, colorB = 0, colorA = 255, width = 100, height = 100, bodygroup = { name = "lightbar", active = { 2 } }, },
--lightbar3 white core

			{ pos = "bar3a1", colorR = 255, colorG = 255, colorA = 255, width = 40, height = 40, bodygroup = { name = "lightbar", active = { 2 } }, },
			{ pos = "bar3a2", colorR = 255, colorG = 255, colorA = 255, width = 40, height = 40, bodygroup = { name = "lightbar", active = { 2 } }, },

		},
	},

	{
		Siren = true,
		Trigger = "1100",
		SubMaterialID = 16,
		SubMaterialBrightness = 30,
		Sprites = {
			{ pos = Vector(-12,13.36,66.4), colorR = 255, colorG = 190, colorB = 0, colorA = 255, width = 150, height = 150, bodygroup = { name = "lightbar", active = { 0 } }, },
			{ pos = Vector(-12,13.36,66.4), colorR = 255, colorG = 255, colorA = 255, width = 40, height = 40, bodygroup = { name = "lightbar", active = { 0 } }, },
		},
	},
	{
		Siren = true,
		Trigger = "0011",
		SubMaterialID = 15,
		SubMaterialBrightness = 30,
		Sprites = {
			{ pos = Vector(-2,12.23,66.16), colorR = 255, colorG = 0, colorB = 0, colorA = 255, width = 150, height = 150, bodygroup = { name = "lightbar", active = { 0 } }, },
			{ pos = Vector(-2,12.23,66.16), colorR = 255, colorG = 255, colorA = 255, width = 40, height = 40, bodygroup = { name = "lightbar", active = { 0 } }, },

		},
	},

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



