
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Mercedes W123"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/mb_w123/w123.mdl"

ENT.MaxVelocity = 2000

ENT.EngineTorque = 78
ENT.EngineIdleRPM = 750
ENT.EngineMaxRPM = 6500

ENT.TransGears = 5
ENT.TransGearsReverse = 1

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


ENT.EngineSounds = {
	{
		sound = "lvs/vehicles/mercedes_w123/eng_idle_loop.wav",
		Volume = 1,
		Pitch = 85,
		PitchMul = 25,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_IDLE_ONLY,
	},
	{
		sound = "lvs/vehicles/mercedes_w123/eng_loop.wav",
		Volume = 1,
		Pitch = 80,
		PitchMul = 110,
		SoundLevel = 75,
		SoundType = LVS.SOUNDTYPE_REV_UP,
		UseDoppler = true,
	},
	{
		sound = "lvs/vehicles/mercedes_w123/eng_revdown_loop.wav",
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
		pos = Vector(-81.82,19.46,3.58),
		ang = Angle(30,180,0),
	}
}

ENT.Lights = {
	{
		Trigger = "main",
		SubMaterialID = 24,
		Sprites = {
			{ pos = Vector(95.99,24.72,21.01), colorB = 200, colorA = 150 },
			{ pos = Vector(95.99,-24.72,21.01), colorB = 200, colorA = 150 },
			{ pos = Vector(-86.2,21.51,21.1), colorG = 0, colorB = 0, colorA = 150 },
			{ pos = Vector(-86.2,-21.51,21.1), colorG = 0, colorB = 0, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(95.99,24.72,21.01), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(95.99,-24.72,21.01), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "high",
		Sprites = {
			{ pos = Vector(95.99,24.72,21.01), colorB = 200, colorA = 150 },
			{ pos = Vector(95.99,-24.72,21.01), colorB = 200, colorA = 150 },
		},
		ProjectedTextures = {
			{ pos = Vector(95.99,24.72,21.01), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
			{ pos = Vector(95.99,-24.72,21.01), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true },
		},
	},
	{
		Trigger = "brake",
		SubMaterialID = 31,
		Sprites = {
			{ pos = Vector(-86.03,26.09,21.32), colorG = 0, colorB = 0, colorA = 150 },
			{ pos = Vector(-86.03,-26.09,21.32), colorG = 0, colorB = 0, colorA = 150 },
		}
	},
	{
		Trigger = "reverse",
		SubMaterialID = 27,
		Sprites = {
			{ pos = Vector(-86,17.49,21.19), height = 25, width = 25, colorA = 150 },
			{ pos = Vector(-86,-17.49,21.19), height = 25, width = 25, colorA = 150 },
		}
	},
	{
		Trigger = "fog",
		SubMaterialID = 25,
		Sprites = {
			{ pos = Vector(96.88,17.33,20.92), colorB = 200, colorA = 150 },
			{ pos = Vector(96.88,-17.33,20.92), colorB = 200, colorA = 150 },
		},
	},
	{
		Trigger = "turnright",
		SubMaterialID = 29,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(-83.76,-30.27,21.27), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 28,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(-83.76,30.27,21.27), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "turnright",
		SubMaterialID = 21,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(95.17,-31.15,20.42), colorG = 100, colorB = 0, colorA = 150 },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 22,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(95.17,31.15,20.42), colorG = 100, colorB = 0, colorA = 150 },
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
			self.HornSND = self:AddSoundEmitter( Vector(45,0,20), "lvs/horn1.wav", "lvs/horn1.wav" )
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
