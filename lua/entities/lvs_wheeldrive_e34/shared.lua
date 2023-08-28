
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "BMW E34"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/bmw_m5e34/e34_2.mdl"

ENT.MaxVelocity = 2500

ENT.EngineTorque = 100
ENT.EngineIdleRPM = 660
ENT.EngineMaxRPM = 6750

ENT.TransGears = 5
ENT.TransGearsReverse = 1

ENT.RandomColor = {
Color(237,236,233),
Color(144,165,183),
Color(142,21,37),
Color(171,181,170),
Color(91,119,151),
Color(67,80,89),
Color(237,20,27),
Color(106,98,102),
Color(135,137,140),
Color(27,38,60),
Color(55,73,76),
Color(203,196,175),
Color(50,82,122),
Color(76,19,21),
Color(111,157,206),
Color(25,39,97),
Color(28,35,41),
Color(46,26,46),
Color(16,26,30),
Color(173,30,32),
Color(36,44,68),
Color(144,165,183),
Color(71,71,71),
Color(0,0,0),
Color(9,47,68),
Color(29,38,62),
Color(157,157,147),
Color(183,44,36),
Color(29,16,46),
Color(56,39,58),
Color(30,36,46),
Color(52,63,53),
}

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
		pos = Vector(-97.46,21.75,6.67),
		ang = Angle(20,180,0),
	},
	{
		pos = Vector(-97.37,25.12,6.79),
		ang = Angle(20,180,0),
	}
}

ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 12,
		Sprites = {
			{ pos = Vector(82.02,23.46,16.95), colorB = 200, colorA = 150 },
			{ pos = Vector(82.02,-23.46,16.95), colorB = 200, colorA = 150 },
			{ pos = Vector(-96.56,26.17,23.24), colorG = 0, colorB = 0, colorA = 150 },
			{ pos = Vector(-96.56,-26.17,23.24), colorG = 0, colorB = 0, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(82.02,23.46,16.95), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(82.02,-23.46,16.95), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "main",
		SubMaterialID = 25,
	},
	{
		Trigger = "main",
		SubMaterialID = 26,
	},
	{
		Trigger = "high",
		SubMaterialID = 18,
		Sprites = {
			{ pos = Vector(83.73,16.51,16.91), colorB = 200, colorA = 150 },
			{ pos = Vector(83.73,-16.51,16.91), colorB = 200, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(83.73,16.51,16.91), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(83.73,-16.51,16.91), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "brake",
		SubMaterialID = 15,
		Sprites = {
			{ pos = Vector(-96.3,30.3,23.24), colorG = 0, colorB = 0, colorA = 150 },
			{ pos = Vector(-96.3,-30.3,23.24), colorG = 0, colorB = 0, colorA = 150 },
		}
	},
	{
		Trigger = "reverse",
		SubMaterialID = 23,
		Sprites = {
			{ pos = Vector(-96.41,19.49,24.45), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-96.41,-19.49,24.45), height = 25, width = 25, colorA = 150 },
		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 11,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(81.05,-28.33,16.98), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 40, height = 40, pos = Vector(37.58,-34.58,14.43), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 35, height = 35, pos = Vector(-95.08,-28.5,26.96), colorG = 100, colorB = 0, colorA = 150},
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 13,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(81.05,28.33,16.98), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 40, height = 40, pos = Vector(37.58,34.58,14.43), colorG = 100, colorB = 0, colorA = 150 },
			{ width = 35, height = 35, pos = Vector(-95.08,28.5,26.96), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "fog",
		SubMaterialID = 17,
		Sprites = {
			{ pos = Vector(80.75,23.63,4.51), colorB = 200, colorA = 150 },
			{ pos = Vector(80.75,-23.63,4.51), colorB = 200, colorA = 150 },
		},
	},
}

function ENT:OnSetupDataTables()
	self:AddDT( "Int", "SunRoof" )
end

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
		if not IsValid( ent.HornSND ) then return end
		ent.HornSND:Play()
	end
	weapon.FinishAttack = function( ent )
		if not IsValid( ent.HornSND ) then return end
		ent.HornSND:Stop()
	end
	self:AddWeapon( weapon )

	local weapon = {}
	weapon.Icon = Material("lvs/weapons/horn.png")
	weapon.Ammo = -1
	weapon.Delay = 0.5
	weapon.HeatRateUp = 0
	weapon.HeatRateDown = 0
	weapon.UseableByAI = false
	weapon.Attack = function( ent ) end
	weapon.StartAttack = function( ent )
		ent:SetSunRoof( ent:GetSunRoof() + 1 )
		if ent:GetSunRoof() > 2 then
			ent:SetSunRoof( 0 )
		end
	end
	weapon.FinishAttack = function( ent ) end
	self:AddWeapon( weapon )
end

