
function ENT:CreatePDS()

	-- hood
	local pos, ang, mins, maxs = self:GetBoneInfo( "Hood" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [4] = 1 } },
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
		}
	} )

	-- left door
	local pos, ang, mins, maxs = self:GetBoneInfo( "LD" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [2] = 1 } },
		}
	} )

	-- right door
	local pos, ang, mins, maxs = self:GetBoneInfo( "RD" )
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
	self:AddPDS( {
		pos = Vector(5,0,35),
		ang = Angle(30,0,0),
		mins = Vector(-24,-25,-5),
		maxs = Vector(15,25,5),
		allow_damage = true,
		stages = {
			{
				bodygroup = { [8] = 1 },
				effect = "GlassImpact",
				sound = "physics/glass/glass_impact_bullet4.wav",
			},
		}
	} )
end