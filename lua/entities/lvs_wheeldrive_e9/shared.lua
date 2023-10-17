
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "BMW E9"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/bmw_e9/bmw_e9.mdl"

ENT.MaxVelocity = 2600

ENT.EngineTorque = 92
ENT.EngineIdleRPM = 660
ENT.EngineMaxRPM = 6500

ENT.TransGears = 4
ENT.TransGearsReverse = 1

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

ENT.HornSound = "lvs/horn1.wav"
ENT.HornPos = Vector(40,0,35)

ENT.ExhaustPositions = {
	{
		pos = Vector(-91.56,23.47,4.98),
		ang = Angle(45,180,0),
	}
}

ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 17,
		Sprites = {
			[1] = {
				pos = Vector(82.75,-25.26,15.61),
				colorB = 200,
				colorA = 150,
			},
			[2] = {
				pos = Vector(82.75,25.26,15.61),
				colorB = 200,
				colorA = 150,
			},
		},
		ProjectedTextures = {
			[1] = {
				pos = Vector(82.75,-25.26,15.61),
				ang = Angle(0,0,0),
				colorB = 200,
				colorA = 150,
				shadows = true,
			},
			[2] = {
				pos = Vector(82.75,25.26,15.61),
				ang = Angle(0,0,0),
				colorB = 200,
				colorA = 150,
				shadows = true,
			},
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 24,
	},
	{
		Trigger = "high",
		SubMaterialID = 18,
		Sprites = {
			[1] = {
				pos = Vector(85.65,-18.09,15.71),
				colorB = 200,
				colorA = 150,
			},
			[2] = {
				pos = Vector(85.65,18.09,15.71),
				colorB = 200,
				colorA = 150,
			},
		},
		ProjectedTextures = {
			[1] = {
				pos = Vector(85.65,-18.09,15.71),
				ang = Angle(0,0,0),
				colorB = 200,
				colorA = 150,
				shadows = true,
			},
			[2] = {
				pos = Vector(85.65,18.09,15.71),
				ang = Angle(0,0,0),
				colorB = 200,
				colorA = 150,
				shadows = true,
			},
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 15,
		Sprites = {
			{ pos = Vector(-89.46,20,15.72), colorG = 0, colorB = 0, colorA = 150 },
			{ pos = Vector(-89.46,-20,15.72), colorG = 0, colorB = 0, colorA = 150 },
		}
	},
	{
		Trigger = "reverse",
		SubMaterialID = 13,
		Sprites = {
			[1] = {
				pos = Vector(-89.59,-14.54,15.57),
				height = 25,
				width = 25,
				colorA = 150,
			},
			[2] = {
				pos = Vector(-89.59,14.54,15.57),
				height = 25,
				width = 25,
				colorA = 150,
			},
		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 14,
		Sprites = {
			[1] = {
				width = 35,
				height = 35,
				pos = Vector(79.81,-31.54,16.82),
				colorG = 100,
				colorB = 0,
				colorA = 150,
			},
			[2] = {
				width = 40,
				height = 40,
				pos = Vector(-88.01,-25.58,15.79),
				colorG = 100,
				colorB = 0,
				colorA = 150,
			},
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 12,
		Sprites = {
			[1] = {
				width = 35,
				height = 35,
				pos = Vector(79.81,31.54,16.82),
				colorG = 100,
				colorB = 0,
				colorA = 50,
			},
			[2] = {
				width = 40,
				height = 40,
				pos = Vector(-88.01,25.58,15.79),
				colorG = 100,
				colorB = 0,
				colorA = 150,
			},
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 10,
		Sprites = {
			{ pos = Vector(89.55,-17.48,5.9), colorB = 200, colorA = 150, bodygroup = { name = "Foglight", active = { 0 } }, },
			{ pos = Vector(89.55,17.48,5.9), colorB = 200, colorA = 150, bodygroup = { name = "Foglight", active = { 0 } }, },
			{ pos = Vector(-90.05,10.46,15.85), colorG = 0, colorB = 0, colorA = 150 },
		},
	},
}

ENT.RandomColor = {
	Color(228,120,32),
	Color(147,106,50),
	Color(161,51,33),
	Color(214,58,9),
	Color(198,11,18),
	Color(143,33,41),
	Color(136,142,164),
	Color(71,69,91),
	Color(141,141,143),
	Color(57,163,158),
	Color(203,222,9),
	Color(110,141,71),
	Color(242,244,223),
	Color(0,0,0),
}

function ENT:CalcMainActivityPassenger( ply )
	local pod = ply:GetVehicle()

	if not IsValid( pod ) or pod:GetNWInt( "pPodIndex", 0 ) <= 2 then return end

	if ply.m_bWasNoclipping then 
		ply.m_bWasNoclipping = nil 
		ply:AnimResetGestureSlot( GESTURE_SLOT_CUSTOM ) 
		
		if CLIENT then 
			ply:SetIK( true )
		end 
	end 

	ply.CalcIdeal = ACT_STAND
	ply.CalcSeqOverride = ply:LookupSequence( "sit_zen" )

	return ply.CalcIdeal, ply.CalcSeqOverride
end
