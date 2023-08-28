
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Honda Integra"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/honda_integra_dc2/dc2.mdl"

ENT.MaxVelocity = 2400

ENT.EngineTorque = 117
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
			{ pos = Vector(85.09,20.02,23.71), colorB = 200, colorA = 150 },
			{ pos = Vector(85.09,-20.02,23.71), colorB = 200, colorA = 150 },
			{ pos = Vector(-86.85,-16.39,32.31), colorG = 0, colorB = 0, colorA = 150 },
			{ pos = Vector(-86.85,16.39,32.31), colorG = 0, colorB = 0, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(85.09,20.02,23.71), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(85.09,-20.02,23.71), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 23,
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
		Trigger = "high",
		SubMaterialID = 30,
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
		Trigger = "fog",
		SubMaterialID = 27,
	},
	{
		Trigger = "fog",
		SubMaterialID = 28,
		Sprites = {
			{ pos = Vector(81.4,25.49,23.48), colorB = 200, colorA = 150 },
			{ pos = Vector(81.4,-25.49,23.48), colorB = 200, colorA = 150 },
		},
	},
	{
		Trigger = "brake",
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

function ENT:InitWeapons()
	local weapon = {}
	weapon.Icon = Material("lvs/weapons/horn.png")
	weapon.Ammo = -1
	weapon.Delay = 0.5
	weapon.HeatRateUp = 0
	weapon.HeatRateDown = 0
	weapon.UseableByAI = false
	weapon.Attack = function( ent ) end
	weapon.StartAttack = function( ent )
		if not IsValid( ent.HornSND ) then
			self.HornSND = self:AddSoundEmitter( Vector(45,0,20), "lvs/horn2.wav", "lvs/horn2.wav" )
			self.HornSND:SetSoundLevel( 75 )
			self.HornSND:SetDoppler( true )
		end

		ent.HornSND:Play()
	end
	weapon.FinishAttack = function( ent )
		if not IsValid( ent.HornSND ) then return end
		ent.HornSND:Stop()
	end
	self:AddWeapon( weapon )
end

