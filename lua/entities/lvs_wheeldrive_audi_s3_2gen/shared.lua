
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Audi S3 (II)"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/audi_s3/s3.mdl"

ENT.MaxVelocity = 2500

ENT.EngineTorque = 92
ENT.EngineIdleRPM = 660
ENT.EngineMaxRPM = 6750

ENT.TransGears = 6
ENT.TransGearsReverse = 1

ENT.RandomColor = {
	Color(237,236,233),
}

ENT.HornSound = "lvs/horn1.wav"
ENT.HornPos = Vector(40,0,35)

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
		pos = Vector(-80.64,18.34,3.59),
		ang = Angle(20,180,0),
	},
	{
		pos = Vector(-80.87,14.88,3.58),
		ang = Angle(20,180,0),
	}
}


ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 11,
		SubMaterialBrightness = 1,
		ProjectedTextures = {
			{ pos = Vector(74.57,21.64,20.92), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
			{ pos = Vector(74.57,-21.64,20.92), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 16,
		SubMaterialBrightness = 2,
		Sprites = {
			{ width = 45, height = 45, pos = Vector(-76.84,-24.64,28.21), colorG = 0, colorB = 0, colorA = 150 },
			{ width = 45, height = 45, pos = Vector(-76.84,24.64,28.21), colorG = 0, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 4,
	},
	{
		Trigger = "main",
		SubMaterialID = 3,
	},
	{
		Trigger = "brake",
		SubMaterialID = 5,
		SubMaterialBrightness = 2,
		Sprites = {
			{ width = 65, height = 15, pos = Vector(-61.52,0,46.29), colorG = 0, colorB = 0, colorA = 150 },
			{ width = 35, height = 25, pos = Vector(-76.73,24.79,31.23), colorG = 0, colorB = 0, colorA = 150 },
			{ width = 35, height = 25, pos = Vector(-76.73,-24.79,31.23), colorG = 0, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "high",
		SubMaterialID = 13,
		Sprites = {
			{ pos = Vector(69.11,27.62,19.78), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
			{ pos = Vector(69.11,-27.62,19.78), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(69.11,27.62,19.78), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
			{ pos = Vector(69.11,-27.62,19.78), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 25,
		Sprites = {
			{ width = 25, height = 25, pos = Vector(74.08,27.25,6.95), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
			{ width = 25, height = 25, pos = Vector(74.08,-27.25,6.95), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
		},
	},

	{
		Trigger = "reverse",
		SubMaterialID = 15,
		SubMaterialBrightness = 2,
		Sprites = {

			{ pos = Vector(-79.56,-23.17,25.59), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-79.56,23.17,25.59), height = 25, width = 25, colorA = 150 },

		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 14,
		SubMaterialBrightness = 1,
		Sprites = {
			{ width = 45, height = 25,  pos = Vector(73.14,-22.19,18.84), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(-76.99,-28.06,25.63), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 12,
		SubMaterialBrightness = 1,
		Sprites = {
			{ width = 45, height = 25, pos = Vector(73.14,22.19,18.84), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 25, height = 25, pos = Vector(-76.99,28.06,25.63), colorG = 100, colorB = 0, colorA = 50 },

		},
	},
}



function ENT:OnSetupDataTables()
	self:AddDT( "Int", "SunRoof" )
end
