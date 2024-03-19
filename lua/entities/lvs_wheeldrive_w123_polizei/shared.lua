
ENT.Base = "lvs_base_wheeldrive"

ENT.PrintName = "Mercedes-Benz E230 (W123) Police"
ENT.Author = "Digger"
ENT.Information = "Luna's Vehicle Script"
ENT.Category = "[LVS] - Cars - Pack"

ENT.VehicleCategory = "Cars"
ENT.VehicleSubCategory = "Civilian"

ENT.Spawnable			= true
ENT.AdminSpawnable		= false

ENT.MDL = "models/diggercars/mb_w123/w123_polizei.mdl"

ENT.MaxVelocity = 2000

ENT.EngineTorque = 78
ENT.EngineIdleRPM = 750
ENT.EngineMaxRPM = 6500

ENT.TransGears = 5
ENT.TransGearsReverse = 1


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
		Siren = true,
		Trigger = "1",
		SubMaterialID = 5,
		Sprites = {
			{ pos = "bulb1", colorR = 0, colorG = 0, colorA = 255, width = 40, height = 40 },
			{ pos = "bulb2", colorG = 0, colorB = 0, colorA = 255, width = 40, height = 40 },

		},
	},

	{
		Trigger = "main",
		SubMaterialID = 21,
		Sprites = {
			{ pos = Vector(95.99,24.72,21.01), colorB = 200, colorA = 150, bodygroup = { name = "Body_front", active = { 0 } }, },
			{ pos = Vector(95.99,-24.72,21.01), colorB = 200, colorA = 150, bodygroup = { name = "Body_front", active = { 0 } }, },
			{ pos = Vector(-86.2,21.51,21.1), colorG = 0, colorB = 0, colorA = 150, bodygroup = { name = "Body_rear", active = { 0 } },},
			{ pos = Vector(-86.2,-21.51,21.1), colorG = 0, colorB = 0, colorA = 150, bodygroup = { name = "Body_rear", active = { 0 } },},
		},
		ProjectedTextures = {
			{ pos = Vector(95.99,24.72,21.01), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Body_front", active = { 0 } }, },
			{ pos = Vector(95.99,-24.72,21.01), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Body_front", active = { 0 } }, },
		},
	},
	{
		Trigger = "high",
		Sprites = {
			{ pos = Vector(95.99,24.72,21.01), colorB = 200, colorA = 150, bodygroup = { name = "Body_front", active = { 0 } }, },
			{ pos = Vector(95.99,-24.72,21.01), colorB = 200, colorA = 150, bodygroup = { name = "Body_front", active = { 0 } }, },
		},
		ProjectedTextures = {
			{ pos = Vector(95.99,24.72,21.01), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Body_front", active = { 0 } }, },
			{ pos = Vector(95.99,-24.72,21.01), ang = Angle(0,0,0), colorB = 200, colorA = 150, shadows = true, bodygroup = { name = "Body_front", active = { 0 } }, },
		},
	},
	{
		Trigger = "brake",
		SubMaterialID = 25,
		Sprites = {
			{ pos = Vector(-86.03,26.09,21.32), colorG = 0, colorB = 0, colorA = 150, bodygroup = { name = "Body_rear", active = { 0 } },},
			{ pos = Vector(-86.03,-26.09,21.32), colorG = 0, colorB = 0, colorA = 150, bodygroup = { name = "Body_rear", active = { 0 } },},
		}
	},
	{
		Trigger = "reverse",
		SubMaterialID = 26,
		Sprites = {
			{ pos = Vector(-86,17.49,21.19), height = 25, width = 25, colorA = 150, bodygroup = { name = "Body_rear", active = { 0 } },},
			{ pos = Vector(-86,-17.49,21.19), height = 25, width = 25, colorA = 150, bodygroup = { name = "Body_rear", active = { 0 } },},
		}
	},
	{
		Trigger = "fog",
		SubMaterialID = 22,
		Sprites = {
			{ pos = Vector(96.88,17.33,20.92), colorB = 200, colorA = 150, bodygroup = { name = "Body_front", active = { 0 } }, },
			{ pos = Vector(96.88,-17.33,20.92), colorB = 200, colorA = 150, bodygroup = { name = "Body_front", active = { 0 } }, },
		},
	},
	{
		Trigger = "turnright",
		SubMaterialID = 28,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(-83.76,-30.27,21.27), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Body_rear", active = { 0 } },},
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 27,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(-83.76,30.27,21.27), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Body_rear", active = { 0 } }, },
		},
	},
	{
		Trigger = "turnright",
		SubMaterialID = 18,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(95.17,-31.15,20.42), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Body_front", active = { 0 } }, },
		},
	},
	{
		Trigger = "turnleft",
		SubMaterialID = 19,
		Sprites = {
			{ width = 35, height = 35, pos = Vector(95.17,31.15,20.42), colorG = 100, colorB = 0, colorA = 150, bodygroup = { name = "Body_front", active = { 0 } }, },
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