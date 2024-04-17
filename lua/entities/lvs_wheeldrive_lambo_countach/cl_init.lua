include("shared.lua")

function ENT:UpdatePoseParameters( steer, speed_kmh, engine_rpm, throttle, brake, handbrake, clutch, gear, temperature, fuel, oil, ammeter )
	self:SetPoseParameter( "vehicle_steer", steer )
	self:SetPoseParameter( "tacho_gauge", engine_rpm / 9000 )
	self:SetPoseParameter( "temp_gauge", temperature )
	self:SetPoseParameter( "fuel_gauge", fuel )
	self:SetPoseParameter( "oil_gauge", oil )
	self:SetPoseParameter( "alt_gauge", ammeter )
	self:SetPoseParameter( "vehicle_gauge", speed_kmh / 320 )
	self:SetPoseParameter( "throttle_pedal", throttle )
	self:SetPoseParameter( "brake_pedal", brake )

	local GearIDtoPose = {
		[-1] = 0,
		[1] = 2,
		[2] = 5,
		[3] = 7,
		[4] = 10,
		[5] = 12,
	}

	self:SetPoseParameter( "gear",  self:QuickLerp( "gear", (GearIDtoPose[ gear ] or 1) ) )
end

function ENT:CalcViewOverride( ply, pos, angles, fov, pod )
	pos = pos + pod:GetUp() * -1.5 + pod:GetRight() * 2

	-- pod:GetForward() * 10
	-- pod:GetRight() * 10

	return pos, angles, fov
end