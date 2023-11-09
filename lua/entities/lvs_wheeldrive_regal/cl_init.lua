include("shared.lua")
function ENT:UpdatePoseParameters( steer, speed_kmh, engine_rpm, throttle, brake, handbrake, clutch, gear, temperature, fuel, oil, ammeter )
	self:SetPoseParameter( "vehicle_steer", steer )
	self:SetPoseParameter( "fuel_gauge", fuel )
	self:SetPoseParameter( "vehicle_guage", speed_kmh / 128 )
	self:SetPoseParameter( "throttle_pedal", throttle )
	self:SetPoseParameter( "brake_pedal", brake )
	self:SetPoseParameter( "clutch_pedal", clutch )
	self:SetPoseParameter( "handbrake_pedal", handbrake )
	self:SetPoseParameter( "temp_gauge", temperature )


	local GearIDtoPose = {
		[-1] = 0,
		[1] = 4,
		[2] = 6,
		[3] = 9,
		[4] = 11,
	}

	self:SetPoseParameter( "gears",  self:QuickLerp( "gears", (GearIDtoPose[ gear ] or 1) ) )

end