
ENT.PDSDamageMultiplier = 0.075 -- default value 0.05

function ENT:CreatePDS()
	-- front bumper
	local pos, ang, mins, maxs = self:GetBoneInfo( "fbumper_jiggle" )
	self:AddPDS( {
		pos = pos,
		ang = ang,
		mins = mins,
		maxs = maxs,
		stages = {
			{ bodygroup = { [7] = 1 } },
			{ bodygroup = { [7] = 2 } },
			{
				bodygroup = { [7] = 3 },
				gib = {
					mdl = "models/diggerCars/plymouth_duster/fbumper.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
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
			{ bodygroup = { [6] = 1 } },
			{ bodygroup = { [6] = 2 } },
			{
				bodygroup = { [6] = 3 },
				gib = {
					mdl = "models/diggerCars/plymouth_duster/rbumper.mdl",
					pos = Vector(0,0,0),
					ang = Angle(0,-90,0),
				},
			},
		}
	} )

end