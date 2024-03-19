
ENT.PDSDamageMultiplier = 0.075 -- default value 0.05

function ENT:CreatePDS()


	-- door left
	local pos, ang, mins, maxs = self:GetBoneInfo( "LD" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [3] = 1 } },
		}
	} )
	-- door right
	local pos, ang, mins, maxs = self:GetBoneInfo( "RD" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [4] = 1 } },
		}
	} )


	-- body front
	self:AddPDS( {
		pos = Vector(45,0,20),
		ang = Angle(0,0,0),
		mins = Vector(-10,-10,-10),
		maxs = Vector(10,10,10),
		stages = {
			{ bodygroup = { [2] = 1 } },
		}
	} )
	-- body rear
	self:AddPDS( {
		pos = Vector(-50,0,20),
		ang = Angle(0,0,0),
		mins = Vector(-10,-10,-10),
		maxs = Vector(10,10,10),
		stages = {
			{ bodygroup = { [5] = 1 } },
		}
	} )

end
