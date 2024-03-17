include("shared.lua")
function ENT:UpdatePoseParameters( steer, speed_kmh, engine_rpm, throttle, brake, handbrake, clutch, gear, temperature, fuel, oil, ammeter )
	self:SetPoseParameter( "vehicle_steer", steer )
	self:SetPoseParameter( "fuel_gauge", fuel )
	self:SetPoseParameter( "vehicle_guage", speed_kmh / 200 )
	self:SetPoseParameter( "throttle_pedal", throttle )
	self:SetPoseParameter( "brake_pedal", brake )
	self:SetPoseParameter( "handbrake_pedal", handbrake )

	local GearIDtoPose = {
		[-1] = 0,
		[1] = 2,
		[2] = 3,
		[3] = 4,
	}

	self:SetPoseParameter( "gear",  self:QuickLerp( "gear", (GearIDtoPose[ gear ] or 1) ) )

	local hours = os.date( "%H" )
	local min = os.date( "%M" ) 
	local sec = os.date( "%S" )

	self:SetPoseParameter( "hour", hours + min / 60 )
	self:SetPoseParameter( "minute", min + sec / 60 )
	self:SetPoseParameter( "second", sec )

	self._rpm = self._rpm and self._rpm + engine_rpm * FrameTime() or 0

	self:SetPoseParameter( "engine_spin", -self._rpm )
end