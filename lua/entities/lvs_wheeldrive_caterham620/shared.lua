
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Caterham Seven 620R"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/caterham_620r/caterham.mdl"

ENT.MaxVelocity = 2700

ENT.EngineTorque = 40
ENT.EngineIdleRPM = 1000
ENT.EngineMaxRPM = 9000

ENT.TransGears = 5
ENT.TransGearsReverse = 1

ENT.HornSound = "lvs/horn4.wav"
ENT.HornPos = Vector(40,0,35)

ENT.PhysicsMass = 300
ENT.PhysicsInertia = Vector(1550,1550,525)

ENT.WheelPhysicsMass = 100
ENT.WheelPhysicsInertia = Vector(15,12,15)

ENT.SuperChargerVisible = false

ENT.ForceLinearMultiplier = 1.5 -- multiply all linear forces (such as downforce, wheel side force, ect)
ENT.ForceAngleMultiplier = 0.7 -- multiply all angular forces such turn stability / inertia. Exception: Wheel/Engine torque. Those remain unchanged.

ENT.WheelSideForce = 800 -- basically a sideways cheatforce that gives you better stability in turns. You shouldn't have to edit this.
ENT.WheelDownForce = 600 -- wheels use jeeptire as physprop. To this a downward force is applied to increase traction. You shouldn't have to edit this.

ENT.RandomColor = {
	{
		Skin = 1,
		Color = Color(255,255,255),
	},
	{
		Skin = 2,
		Color = Color(255,255,255),
	},
	{
		Skin = 3,
		Color = Color(255,255,255),
	},
	{
		Skin = 4,
		Color = Color(255,255,255),
	},
	{
		Skin = 5,
		Color = Color(255,255,255),
	},
	{
		Skin = 6,
		Color = Color(255,255,255),
	},
}


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

ENT.ExhaustPositions = {
	{
		pos = Vector(-27.1,-31.64,8.3),
		ang = Angle(0,270,0),
	},
}

ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 20,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(54.31,16.35,23.55), colorB = 200, colorA = 150, width = 60, height = 60, bodygroup = { name = "light_fl", active = { 0 } }, },
			{ pos = Vector(54.31,-16.35,23.55), colorB = 200, colorA = 150, width = 60, height = 60, bodygroup = { name = "light_fr", active = { 0 } }, },
		},
		ProjectedTextures = {
			{ pos = Vector(54.31,16.35,23.55), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "light_fl", active = { 0 } }, },
			{ pos = Vector(54.31,-16.35,23.55), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "light_fr", active = { 0 } }, },
		},
	},
	{
		Trigger = "high",
		Sprites = {
			{ pos = Vector(54.31,16.35,23.55), colorB = 200, colorA = 150, width = 60, height = 60, bodygroup = { name = "light_fl", active = { 0 } }, },
			{ pos = Vector(54.31,-16.35,23.55), colorB = 200, colorA = 150, width = 60, height = 60, bodygroup = { name = "light_fr", active = { 0 } }, },
		},
		ProjectedTextures = {
			{ pos = Vector(54.31,16.35,23.55), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "light_fl", active = { 0 } }, },
			{ pos = Vector(54.31,-16.35,23.55), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "light_fr", active = { 0 } }, },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 6,
	},
	{
		Trigger = "main",
		SubMaterialID = 22,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(-58.67,-24.31,20.75), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30, bodygroup = { name = "light_rr", active = { 0 } }, },
			{ pos = Vector(-58.67,24.31,20.75), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30, bodygroup = { name = "light_rl", active = { 0 } }, },
		},
	},
	{
		Trigger = "brake",
		SubMaterialID = 17,
		SubMaterialBrightness = 10,
		Sprites = {
			{ pos = Vector(-63.87,-13.69,13.81), colorG = 0, colorB = 0, colorA = 150, width = 30, height = 30, bodygroup = { name = "Rear_bumper", active = { 0 } }, },
		},
	},
	{
		Trigger = "reverse",
		SubMaterialID = 16,
		SubMaterialBrightness = 25,
		Sprites = {

			{ pos = Vector(-63.87,13.69,13.81), height = 25, width = 25, colorA = 150, bodygroup = { name = "Rear_bumper", active = { 0 } }, },

		}
	},

	{
		Trigger = "turnright",
		SubMaterialID = 21,
		SubMaterialBrightness = 25,
		Sprites = {
			{ pos = Vector(56.96,-16.41,18.54), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "light_fr", active = { 0 } }, },
			{ pos = Vector(-58.39,-26.94,20.88), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "light_rr", active = { 0 } }, },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 19,
		SubMaterialBrightness = 25,
		Sprites = {
			{ pos = Vector(56.96,16.41,18.54), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "light_fl", active = { 0 } }, },
			{ pos = Vector(-58.39,26.94,20.88), colorG = 100, colorB = 0, colorA = 50, bodygroup = { name = "light_rl", active = { 0 } }, },
		},
	},

}

