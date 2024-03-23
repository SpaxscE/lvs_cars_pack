
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Warthog"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL =  "models/diggercars/warthog/warthog_mg_reach.mdl"

ENT.HornSound = "lvs/vehicles/warthog/horn_loop.wav"
ENT.HornPos = Vector(0,40,35)


ENT.MaxVelocity = 1200

ENT.MouseSteerAngle = 7
ENT.MouseSteerExponent = 3

ENT.FastSteerDeactivationDriftAngle = 15

ENT.PhysicsMass = 1500

ENT.PhysicsWeightScale = 1.5
ENT.PhysicsDampingSpeed = 1000
ENT.PhysicsInertia = Vector(6000,6000,500)

ENT.WheelPhysicsMass = 100
ENT.WheelPhysicsInertia = Vector(60,48,60)

ENT.EngineTorque = 80

ENT.TransGears = 3
ENT.TransGearsReverse = 1
--ENT.TransShiftSound = "lvs/vehicles/warthog/warthog_shift2.wav"

ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/warthog/eng_idle.wav",
		Volume = 1,
		Pitch = 85,
		PitchMul = 25,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/warthog/eng_high.wav",
		Volume = 1,
		Pitch = 60,
		PitchMul = 110,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/warthog/eng_high.wav",
		Volume = 1,
		Pitch = 40,
		PitchMul = 110,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_DOWN,
		UseDoppler = true,
	},
}

ENT.Lights = {
	{
		Trigger = "main",
		ProjectedTextures = {
			{ pos = Vector(108.01,7.51,55.81), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
			{ pos = Vector(108.01,-7.51,55.81), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
			{ pos = Vector(27.52,-17.03,90.96), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
			{ pos = Vector(27.52,17.03,90.96), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "high",
		ProjectedTextures = {
			{ pos = Vector(108.01,7.51,55.81), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
			{ pos = Vector(108.01,-7.51,55.81), ang = Angle(0,0,0), colorR = 200, colorG = 200, colorB = 250, colorA = 150, shadows = true },
		},
	},
	{
	Trigger = "main+high",
		SubMaterialID = 6,
		Sprites = {
			{ pos = Vector(108.01,7.51,55.81), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
			{ pos = Vector(108.01,-7.51,55.81), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
			{ pos = Vector(27.52,17.03,90.96), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
			{ pos = Vector(27.52,-17.03,90.96), colorR = 200, colorG = 200, colorB = 250, colorA = 150 },
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 10,
		Sprites = {
			{ pos = Vector(-116.1,-26.85,63.3), colorG = 0, colorB = 0, colorA = 150 },
			{ pos = Vector(-116.1,26.85,63.3), colorG = 0, colorB = 0, colorA = 150 },
		}
	},

}