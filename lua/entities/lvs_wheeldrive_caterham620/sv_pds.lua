
ENT.PDSDamageMultiplier = 0.075 -- default value 0.05

function ENT:CreatePDS()
	-- front bumper
	local pos, ang, mins, maxs = self:GetBoneInfo( "fb" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [2] = 1 } },
			{
				bodygroup = { [2] = 2 },
				gib = {
					mdl = "models/diggercars/caterham_620r/fb_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )

	-- rear bumper
	local pos, ang, mins, maxs = self:GetBoneInfo( "rb" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [3] = 1 } },

		}
	} )

	-- wing left
	local pos, ang, mins, maxs = self:GetBoneInfo( "steer_fl" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{
				bodygroup = { [11] = 1 },
				gib = {
					mdl = "models/diggercars/caterham_620r/front_left_fender.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},

		}
	} )
	-- wing right
	local pos, ang, mins, maxs = self:GetBoneInfo( "steer_fr" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{
				bodygroup = { [10] = 1 },
				gib = {
					mdl = "models/diggercars/caterham_620r/front_right_fender.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},

		}
	} )

	-- hood
	local pos, ang, mins, maxs = self:GetBoneInfo( "hood" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [1] = 1 } },
			{
				bodygroup = { [1] = 2 },
				gib = {
					mdl = "models/diggercars/caterham_620r/hood_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )

	-- left_door
	local pos, ang, mins, maxs = self:GetBoneInfo( "ld" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [4] = 1 } },
		}
	} )

	-- right_door
	local pos, ang, mins, maxs = self:GetBoneInfo( "rd" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [5] = 1 } },
		}
	} )

	-- light_front_left
	local pos, ang, mins, maxs = self:GetBoneInfo( "hl" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		allow_damage = true,
		stages = {
			{
				bodygroup = { [6] = 1 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_cup_break1.wav",
			},
			{
				bodygroup = { [6] = 2 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_largesheet_break1.wav",
				gib = {
					mdl = "models/diggercars/caterham_620r/light_fl_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )
	-- light_front_right
	local pos, ang, mins, maxs = self:GetBoneInfo( "hr" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		allow_damage = true,
		stages = {
			{
				bodygroup = { [7] = 1 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_cup_break1.wav",
			},
			{
				bodygroup = { [7] = 2 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_largesheet_break1.wav",
				gib = {
					mdl = "models/diggercars/caterham_620r/light_fr_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )

	-- light_rear_left
	local pos, ang, mins, maxs = self:GetBoneInfo( "tl" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		allow_damage = true,
		stages = {
			{
				bodygroup = { [8] = 1 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_cup_break1.wav",
			},
			{
				bodygroup = { [8] = 2 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_largesheet_break1.wav",
				gib = {
					mdl = "models/diggercars/caterham_620r/light_rl_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )
	-- light_rear_right
	local pos, ang, mins, maxs = self:GetBoneInfo( "tr" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		allow_damage = true,
		stages = {
			{
				bodygroup = { [9] = 1 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_cup_break1.wav",
			},
			{
				bodygroup = { [9] = 2 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_largesheet_break1.wav",
				gib = {
					mdl = "models/diggercars/caterham_620r/light_rr_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )


end