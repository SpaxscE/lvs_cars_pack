
function ENT:CreatePDS()
	-- hood
	local pos, ang, mins, maxs = self:GetBoneInfo( "Hood" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [6] = 1 } },
			{
				bodygroup = { [6] = 2 },
				gib = {
					mdl = "models/diggercars/ford_fairlane/bonnet_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
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
			{ bodygroup = { [5] = 1 } },
			{
				bodygroup = { [5] = 2 },
				gib = {
					mdl = "models/diggercars/ford_fairlane/boot_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )


	-- front bumper
	local pos, ang, mins, maxs = self:GetBoneInfo( "fb_jiggle" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [3] = 1 } },
			{ bodygroup = { [3] = 2 } },
			{
				bodygroup = { [3] = 3 },
				gib = {
					mdl = "models/diggercars/ford_fairlane/bump_front_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
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
			{ bodygroup = { [4] = 1 } },
			{ bodygroup = { [4] = 2 } },
			{
				bodygroup = { [4] = 3 },
				gib = {
					mdl = "models/diggercars/ford_fairlane/bump_rear_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )


	-- windshield
	self:AddPDS( {
		pos = Vector(34,0,38),
		ang = Angle(40,0,0),
		mins = Vector(-15,-30,-5),
		maxs = Vector(15,30,5),
		allow_damage = true,
		stages = {
			{
				bodygroup = { [11] = 1 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_cup_break1.wav",
			},
			{
				bodygroup = { [11] = 2 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_largesheet_break1.wav",
			},
		}
	} )

	-- rear glass
	self:AddPDS( {
		pos = Vector(-40,0,38),
		ang = Angle(140,0,0),
		mins = Vector(-15,-30,-5),
		maxs = Vector(15,30,5),
		allow_damage = true,
		stages = {
			{
				bodygroup = { [12] = 1 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_cup_break1.wav",
			},
			{
				bodygroup = { [12] = 2 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_largesheet_break1.wav",
			},
		}
	} )

	-- door frontleft
	local pos, ang, mins, maxs = self:GetBoneInfo( "FLDoor" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [7] = 1 } },
		}
	} )
	-- door frontright
	local pos, ang, mins, maxs = self:GetBoneInfo( "FRDoor" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [8] = 1 } },
		}
	} )
	-- door rearleft
	local pos, ang, mins, maxs = self:GetBoneInfo( "RLDoor" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [9] = 1 } },
		}
	} )
	-- door rearright
	local pos, ang, mins, maxs = self:GetBoneInfo( "RRDoor" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [10] = 1 } },
		}
	} )


	-- body front
	self:AddPDS( {
		pos = Vector(70,0,20),
		ang = Angle(0,0,0),
		mins = Vector(-15,-15,-10),
		maxs = Vector(15,15,10),
		allow_damage = false,
		stages = {
			{ bodygroup = { [1] = 1 } },
		}
	} )
	-- body rear
	self:AddPDS( {
		pos = Vector(-70,0,20),
		ang = Angle(0,0,0),
		mins = Vector(-15,-15,-10),
		maxs = Vector(15,15,10),
		allow_damage = false,
		stages = {
			{ bodygroup = { [2] = 1 } },
		}
	} )

end
