
function ENT:CreatePDS()
	-- front bumper
	local pos, ang, mins, maxs = self:GetBoneInfo( "fb_jiggle" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [5] = 1 } },
			{ bodygroup = { [5] = 2 } },
			{
				bodygroup = { [5] = 3 },
				gib = {
					mdl = "models/diggerCars/ferrari_360/fbumper.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )

	-- rear bumper
	local pos, ang, mins, maxs = self:GetBoneInfo( "rb_jiggle" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [6] = 1 } },
			{ bodygroup = { [6] = 2 } },
			{
				bodygroup = { [6] = 3 },
				gib = {
					mdl = "models/diggerCars/ferrari_360/rbumper.mdl",
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
		}
	} )

	-- trunk
	local pos, ang, mins, maxs = self:GetBoneInfo( "trunk" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [2] = 1 } },
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
			{ bodygroup = { [3] = 1 } },
		}
	} )

	-- windshield
	local pos, ang, mins, maxs = self:GetBoneInfo( "g_f" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		allow_damage = true,
		stages = {
			{
				bodygroup = { [11] = 1 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_impact_bullet4.wav",
			},
			{
				bodygroup = { [11] = 2 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_largesheet_break1.wav",
			},
		}
	} )
	-- light_front_left
	local pos, ang, mins, maxs = self:GetBoneInfo( "l_fl" )
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
				sound = "physics/glass/glass_impact_bullet2.wav",
			},
			{
				bodygroup = { [7] = 2 },
				effect = "GlassImpact",
			},
		}
	} )
	-- light_front_right
	local pos, ang, mins, maxs = self:GetBoneInfo( "l_fr" )
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
				sound = "physics/glass/glass_impact_bullet1.wav",
			},
			{
				bodygroup = { [8] = 2 },
				effect = "GlassImpact",
			},
		}
	} )

	-- light_rear_left
	local pos, ang, mins, maxs = self:GetBoneInfo( "l_rl" )
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
				sound = "physics/glass/glass_impact_bullet3.wav",
			},
			{
				bodygroup = { [9] = 2 },
				effect = "GlassImpact",
			},
		}
	} )
	-- light_rear_right
	local pos, ang, mins, maxs = self:GetBoneInfo( "l_rr" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		allow_damage = true,
		stages = {
			{
				bodygroup = { [10] = 1 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_impact_bullet1.wav",
			},
			{
				bodygroup = { [10] = 2 },
				effect = "GlassImpact",
			},
		}
	} )

	-- glass_front_right
	local pos, ang, mins, maxs = self:GetBoneInfo( "g_fr" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		allow_damage = true,
		stages = {
			{
				bodygroup = { [13] = 1 },
				effect = "GlassImpact",
			},
			{
				bodygroup = { [13] = 2 },
				effect = "GlassImpact",
			},
		}
	} )

	-- glass_front_left
	local pos, ang, mins, maxs = self:GetBoneInfo( "g_fl" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		allow_damage = true,
		stages = {
			{
				bodygroup = { [12] = 1 },
				effect = "GlassImpact",
			},
			{
				bodygroup = { [12] = 2 },
				effect = "GlassImpact",
			},
		}
	} )
	-- glass_rear_right
	local pos, ang, mins, maxs = self:GetBoneInfo( "g_rr" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		allow_damage = true,
		stages = {
			{
				bodygroup = { [15] = 1 },
				effect = "GlassImpact",
			},
			{
				bodygroup = { [15] = 2 },
				effect = "GlassImpact",
			},
		}
	} )
	-- glass_rear_left
	local pos, ang, mins, maxs = self:GetBoneInfo( "g_rl" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		allow_damage = true,
		stages = {
			{
				bodygroup = { [14] = 1 },
				effect = "GlassImpact",
			},
			{
				bodygroup = { [14] = 2 },
				effect = "GlassImpact",
			},
		}
	} )


end