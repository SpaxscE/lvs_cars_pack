
ENT.PDSDamageMultiplier = 0.065

function ENT:CreatePDS()
	-- hood
	local pos, ang, mins, maxs = self:GetBoneInfo( "Hood_l" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [5] = 2 } },
			{ bodygroup = { [5] = 1 } },
			{
				bodygroup = { [5] = 3 },
				gib = {
					mdl = "models/diggercars/ford_fairlane/bonnet_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	-- trunk
	local pos, ang, mins, maxs = self:GetBoneInfo( "Trunk_l" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [6] = 2 } },
			{ bodygroup = { [6] = 1 } },
			{
				bodygroup = { [6] = 3 },
				gib = {
					mdl = "models/diggercars/ford_fairlane/boot_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	-- fender front left
	self:AddPDS( {
		pos = Vector(-32.3,63.5,18.34),
		ang = Angle(0,-90,90),
		mins = Vector(-30.25,-12.25,-6.25),
		maxs = Vector(30.25,12.25,6.25),
		stages = {
			{ bodygroup = { [9] = 1 } },
			{ bodygroup = { [9] = 1 } },
			{ bodygroup = { [9] = 1 } },
			{
				bodygroup = { [9] = 2 },
				gib = {
					mdl = "models/diggercars/ford_fairlane/wing_lf_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	-- fender front right
	self:AddPDS( {
		pos = Vector(32.3,63.5,18.34),
		ang = Angle(0,-90,90),
		mins = Vector(-30.25,-12.25,-6.25),
		maxs = Vector(30.25,12.25,6.25),
		stages = {
			{ bodygroup = { [10] = 1 } },
			{ bodygroup = { [10] = 1 } },
			{ bodygroup = { [10] = 1 } },
			{
				bodygroup = { [10] = 2 },
				gib = {
					mdl = "models/diggercars/ford_fairlane/wing_rf_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	-- grill
	self:AddPDS( {
		pos = Vector(0,90,20),
		ang = Angle(0,-90,90),
		mins = Vector(-10,-10,-30),
		maxs = Vector(10,10,30),
		stages = {
			{ bodygroup = { [11] = 1 } },
			{
				bodygroup = { [11] = 2 },
				gib = {
					mdl = "models/diggercars/ford_fairlane/resch_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	-- front bumper
	local pos, ang, mins, maxs = self:GetBoneInfo( "fbumper_jiggle" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [3] = 1 } },
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
	local pos, ang, mins, maxs = self:GetBoneInfo( "rbumper_jiggle" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [4] = 1 } },
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
		pos = Vector(0,24,38),
		ang = Angle(30,90,0),
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

	-- door left
	local pos, ang, mins, maxs = self:GetBoneInfo( "Left_door_l" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [7] = 2 } },
			{ bodygroup = { [7] = 1 } },
			{
				bodygroup = { [7] = 3 },
				gib = {
					mdl = "models/diggercars/ford_fairlane/door_lf_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )

	
	-- door right
	local pos, ang, mins, maxs = self:GetBoneInfo( "Right_door_r" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [8] = 2 } },
			{ bodygroup = { [8] = 1 } },
			{
				bodygroup = { [8] = 3 },
				gib = {
					mdl = "models/diggercars/ford_fairlane/door_rf_dam.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,0,0),
				},
			},
		}
	} )
end