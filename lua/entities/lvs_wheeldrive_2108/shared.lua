
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Lada 2108"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/DiggerCars/VAZ 2108 Sport/lada.mdl"

ENT.MaxVelocity = 2200

ENT.EngineTorque = 80

ENT.TransGears = 4
ENT.TransGearsReverse = 1

ENT.RandomColor = {
	Color(208,155,98),
	Color(132,209,132),
	Color(78,180,131),
	Color(0,90,66),
	Color(51,80,132),
	Color(68,110,130),
	Color(166,85,50),
	Color(166,25,25),
	Color(83,14,14),
	Color(200,200,200),
	Color(120,120,120),
	Color(204,191,177),
	Color(200,189,119),
	Color(130,116,100),
	Color(50,29,25),
	Color(20,20,20),
	Color(28,29,37),
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
		pos = Vector(-77.1,14.91,15.04),
		ang = Angle(0,180,0),
	}
}

ENT.Lights = {
	{
		Trigger = "main",
		ProjectedTextures = {
			{ pos = Vector(72.03,19,26.82), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(72.03,-19,26.82), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "high",
		ProjectedTextures = {
			{ pos = Vector(72.03,19,26.82), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(72.03,-19,26.82), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
	Trigger = "main+high",
		SubMaterialID = 21,
		Sprites = {
			{ pos = Vector(72.03,19,26.82), colorB = 200, colorA = 150 },
			{ pos = Vector(72.03,-19,26.82), colorB = 200, colorA = 150 },
		},
	},
	{
	Trigger = "main",
		SubMaterialID = 1,
	},
	{
		Trigger = "main",
		SubMaterialID = 22,
		Sprites = {
			{ pos = Vector(-75.08,22.73,28.98), colorG = 0, colorB = 0, colorA = 150 },
			{ pos = Vector(-75.08,-22.73,28.98), colorG = 0, colorB = 0, colorA = 150 },
		}
	},
	{
		Trigger = "brake",
		SubMaterialID = 3,
		Sprites = {
			{ pos = Vector(-75.79,-14.37,28.88), colorG = 0, colorB = 0, colorA = 150 },
			{ pos = Vector(-75.79,14.37,28.88), colorG = 0, colorB = 0, colorA = 150 },
		}
	},
	{
		Trigger = "reverse",
		SubMaterialID = 5,
		Sprites = {
			{ pos = Vector(-75.57,18.73,27.1), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-75.57,-18.73,27.1), height = 25, width = 25, colorA = 150 },
		}
	},
	{
		Trigger = "turnright",
		SubMaterialID = 6,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(74.59,-25.91,26.62), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 15, height = 15, pos = Vector(35.39,-32.54,26.58), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 40, height = 40, pos = Vector(-74.57,-26.39,28.91), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 4,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(74.59,25.91,26.62), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 15, height = 15, pos = Vector(35.39,32.54,26.58), colorG = 100, colorB = 0, colorA = 50 },
			{ width = 40, height = 40, pos = Vector(-74.57,26.39,28.91), colorG = 100, colorB = 0, colorA = 150 },
		},
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
			self.HornSND = self:AddSoundEmitter( Vector(45,0,20), "lvs/horn4.wav", "lvs/horn4.wav" )
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

