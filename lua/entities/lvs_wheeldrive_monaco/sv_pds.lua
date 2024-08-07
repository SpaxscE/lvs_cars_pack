
function ENT:CreatePDS()
	-- front bumper
	local pos, ang, mins, maxs = self:GetBoneInfo( "fbj" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [11] = 3 } },
			{
				bodygroup = { [11] = 4 },
				gib = {
					mdl = "models/diggercars/dodge_monaco/gib_fb.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )

	-- grille
	local pos, ang, mins, maxs = self:GetBoneInfo( "grille" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [15] = 1 } },
			{
				bodygroup = { [15] = 2 },
				gib = {
					mdl = "models/diggercars/dodge_monaco/gib_grille.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )

	-- rear bumper
	local pos, ang, mins, maxs = self:GetBoneInfo( "rbj" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [12] = 1 } },
			{ bodygroup = { [12] = 2 } },
			{
				bodygroup = { [12] = 3 },
				gib = {
					mdl = "models/diggercars/dodge_monaco/gib_rb.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )

	-- windscreen
	local pos, ang, mins, maxs = self:GetBoneInfo( "wind" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		allow_damage = true,
		stages = {
			{
				bodygroup = { [16] = 1 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_cup_break1.wav",
			},
			{
				bodygroup = { [16] = 2 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_largesheet_break1.wav",
			},
		}
	} )

	-- windscreen rear
	local pos, ang, mins, maxs = self:GetBoneInfo( "wind_r" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		allow_damage = true,
		stages = {
			{
				bodygroup = { [17] = 1 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_cup_break1.wav",
			},
			{
				bodygroup = { [17] = 2 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_largesheet_break1.wav",
			},
		}
	} )


	-- fender left
	local pos, ang, mins, maxs = self:GetBoneInfo( "fender_l" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [4] = 1 } },
			{
				bodygroup = { [4] = 2 },
				gib = {
					mdl = "models/diggercars/dodge_monaco/gib_fenderl.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )

	-- fender right
	local pos, ang, mins, maxs = self:GetBoneInfo( "fender_r" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [3] = 1 } },
			{
				bodygroup = { [3] = 2 },
				gib = {
					mdl = "models/diggercars/dodge_monaco/gib_fenderr.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )

	-- hood
	local pos, ang, mins, maxs = self:GetBoneInfo( "Hood" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [13] = 1 } },
			{
				bodygroup = { [13] = 2 },
				gib = {
					mdl = "models/diggercars/dodge_monaco/gib_hood.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )

	-- trunk
	local pos, ang, mins, maxs = self:GetBoneInfo( "Trunk" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [14] = 1 } },
			{
				bodygroup = { [14] = 2 },
				gib = {
					mdl = "models/diggercars/dodge_monaco/gib_trunk.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )

	-- door frontleft
	local pos, ang, mins, maxs = self:GetBoneInfo( "LD" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [7] = 1 } },
			{
				bodygroup = { [7] = 2 },
				gib = {
					mdl = "models/diggercars/dodge_monaco/gib_fld.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )
	-- door frontright
	local pos, ang, mins, maxs = self:GetBoneInfo( "RD" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [8] = 1 } },
			{
				bodygroup = { [8] = 2 },
				gib = {
					mdl = "models/diggercars/dodge_monaco/gib_frd.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )
	-- door rearleft
	local pos, ang, mins, maxs = self:GetBoneInfo( "RLD" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [9] = 1 } },
			{
				bodygroup = { [9] = 2 },
				gib = {
					mdl = "models/diggercars/dodge_monaco/gib_rld.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )
	-- door rearright
	local pos, ang, mins, maxs = self:GetBoneInfo( "RRD" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [10] = 1 } },
			{
				bodygroup = { [10] = 2 },
				gib = {
					mdl = "models/diggercars/dodge_monaco/gib_rrd.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )

	-- body rear
	self:AddPDS( {
		pos = Vector(-80,0,20),
		ang = Angle(0,0,0),
		mins = Vector(-15,-15,-10),
		maxs = Vector(15,15,10),
		allow_damage = false,
		stages = {
			{ bodygroup = { [5] = 1 } },
		}
	} )


end