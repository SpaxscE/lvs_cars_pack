
function ENT:CreatePDS()
	-- hood
	local pos, ang, mins, maxs = self:GetBoneInfo( "hood" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [2] = 1 } },
			{ bodygroup = { [2] = 1 } },
			{
				bodygroup = { [2] = 2 },
				gib = {
					mdl = "models/diggercars/vw_beetle/h.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

--trunk
		local pos, ang, mins, maxs = self:GetBoneInfo( "trunk" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [1] = 1 } },
			{ bodygroup = { [1] = 1 } },
			{
				bodygroup = { [1] = 2 },
				gib = {
					mdl = "models/diggercars/vw_beetle/t.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	-- fb
	local pos, ang, mins, maxs = self:GetBoneInfo( "fb" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [3] = 2 } },
			{
				bodygroup = { [3] = 3 },
				gib = {
					mdl = "models/diggercars/vw_beetle/f.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	-- rb
	local pos, ang, mins, maxs = self:GetBoneInfo( "rb" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [4] = 2 } },
			{
				bodygroup = { [4] = 3 },
				gib = {
					mdl = "models/diggercars/vw_beetle/r.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	-- fender_fr
	local pos, ang, mins, maxs = self:GetBoneInfo( "ffr" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [9] = 1 } },
			{ bodygroup = { [9] = 1 } },
			{
				bodygroup = { [9] = 2 },
				gib = {
					mdl = "models/diggercars/vw_beetle/fr.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	-- fender_fl
	local pos, ang, mins, maxs = self:GetBoneInfo( "ffl" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [8] = 1 } },
			{ bodygroup = { [8] = 1 } },
			{
				bodygroup = { [8] = 2 },
				gib = {
					mdl = "models/diggercars/vw_beetle/fl.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	-- fender_rr
	local pos, ang, mins, maxs = self:GetBoneInfo( "rfr" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [11] = 1 } },
			{ bodygroup = { [11] = 1 } },
			{
				bodygroup = { [11] = 2 },
				gib = {
					mdl = "models/diggercars/vw_beetle/rr.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	-- fender_rl
	local pos, ang, mins, maxs = self:GetBoneInfo( "rfl" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [10] = 1 } },
			{ bodygroup = { [10] = 1 } },
			{
				bodygroup = { [10] = 2 },
				gib = {
					mdl = "models/diggercars/vw_beetle/rl.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	-- rd
	local pos, ang, mins, maxs = self:GetBoneInfo( "rd" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [6] = 1 } },
			{ bodygroup = { [6] = 1 } },
			{
				bodygroup = { [6] = 2 },
				gib = {
					mdl = "models/diggercars/vw_beetle/dr.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	-- ld
	local pos, ang, mins, maxs = self:GetBoneInfo( "ld" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [5] = 1 } },
			{ bodygroup = { [5] = 1 } },
			{
				bodygroup = { [5] = 2 },
				gib = {
					mdl = "models/diggercars/vw_beetle/dl.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	-- windshield
	local pos, ang, mins, maxs = self:GetBoneInfo( "windshield" )
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
				sound = "physics/glass/glass_impact_bullet4.wav",
			},
			{
				bodygroup = { [7] = 2 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_largesheet_break1.wav",
			},
		}
	} )

	-- glass rear
	local pos, ang, mins, maxs = self:GetBoneInfo( "g" )
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
				sound = "physics/glass/glass_impact_bullet4.wav",
			},
			{
				bodygroup = { [12] = 2 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_largesheet_break1.wav",
			},
		}
	} )

	-- glass rear left
	local pos, ang, mins, maxs = self:GetBoneInfo( "gl" )
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
				sound = "physics/glass/glass_impact_bullet4.wav",
			},
			{
				bodygroup = { [13] = 2 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_largesheet_break1.wav",
			},
		}
	} )

	-- glass rear right
	local pos, ang, mins, maxs = self:GetBoneInfo( "gr" )
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
				sound = "physics/glass/glass_impact_bullet4.wav",
			},
			{
				bodygroup = { [14] = 2 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_largesheet_break1.wav",
			},
		}
	} )

end