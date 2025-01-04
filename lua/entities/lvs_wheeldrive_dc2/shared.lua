
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Honda Integra (DC2)"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/honda_integra_dc2/dc2.mdl"

ENT.EnableDSPEffects = true

ENT.MaxVelocity = 2400

ENT.EngineTorque = 105
ENT.EngineIdleRPM = 1000
ENT.EngineMaxRPM = 8500

ENT.TransGears = 5
ENT.TransGearsReverse = 1

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
}

ENT.ExhaustPositions = {
	{
		pos = Vector(-87.35,-16.18,12.93),
		ang = Angle(0,180,0),
	}
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
		Trigger = "main",
		SubMaterialID = 8,
		Sprites = {
			{ pos = Vector(85.09,20.02,23.71), colorB = 200, colorA = 150, width = 60, height = 60 },
			{ pos = Vector(85.09,-20.02,23.71), colorB = 200, colorA = 150, width = 60, height = 60 },
		},
		ProjectedTextures = {
			{ pos = Vector(85.09,20.02,23.71), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(85.09,-20.02,23.71), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main+brake",
		SubMaterialID = 23,
		Sprites = {
			{ pos = Vector(-86.85,-16.39,32.31), colorG = 0, colorB = 0, colorA = 150 },
			{ pos = Vector(-86.85,16.39,32.31), colorG = 0, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 29,
	},
	{
		Trigger = "main",
		SubMaterialID = 26,
	},
	{
		Trigger = "main+high",
		SubMaterialID = 30,
	},
	{
		Trigger = "high",
		Sprites = {
			{ pos = Vector(88.67,14,23.77), colorB = 200, colorA = 150 },
			{ pos = Vector(88.67,-14,23.77), colorB = 200, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(88.67,14,23.77), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(88.67,-14,23.77), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "high",
		SubMaterialID = 25,
	},
	{
		Trigger = "main+fog",
		SubMaterialID = 27,
	},
	{
		Trigger = "main+fog",
		SubMaterialID = 28,
	},
	{
		Trigger = "fog",
		Sprites = {
			{ pos = Vector(81.4,25.49,23.48), colorB = 200, colorA = 150 },
			{ pos = Vector(81.4,-25.49,23.48), colorB = 200, colorA = 150 },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 24,
		Sprites = {
			{ pos = Vector(-87.34,-21.74,32.68), colorG = 0, colorB = 0, colorA = 150 },
			{ pos = Vector(-87.34,21.74,32.68), colorG = 0, colorB = 0, colorA = 150 },
		}
	},
	{
		Trigger = "reverse",
		SubMaterialID = 21,
		Sprites = {
			{ pos = Vector(-87.32,-10.13,32.34), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-87.32,10.13,32.34), height = 25, width = 25, colorA = 150 },
		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 22,
		Sprites = {
			{ width = 45, height = 45, pos = Vector(76.62,-30.07,23.57), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 45, height = 45, pos = Vector(-85.72,-26.9,32.71), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 25, height = 25, pos = Vector(38.01,-36.04,27.15), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 20,
		Sprites = {
			{ width = 45, height = 45, pos = Vector(76.62,30.07,23.57), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 45, height = 45, pos = Vector(-85.72,26.9,32.71), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 25, height = 25, pos = Vector(38.01,36.04,27.15), colorG = 100, colorB = 0, colorA = 50 },
		},
	},
	{
		Trigger = "turnright",
		SubMaterialID = 2,
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 1,
	},
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

