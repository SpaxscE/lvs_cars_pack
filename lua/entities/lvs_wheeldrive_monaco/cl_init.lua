include("shared.lua")

function ENT:UpdatePoseParameters( steer, speed_kmh, engine_rpm, throttle, brake, handbrake, clutch, gear, temperature, fuel, oil, ammeter )
	self:SetPoseParameter( "vehicle_steer", steer )
	self:SetPoseParameter( "tacho_gauge", engine_rpm / 6000 )
	self:SetPoseParameter( "temp_gauge", temperature )
	self:SetPoseParameter( "fuel_gauge", fuel )
	self:SetPoseParameter( "oil_gauge", oil )
	self:SetPoseParameter( "alt_gauge", ammeter )
	self:SetPoseParameter( "vehicle_gauge", speed_kmh / 240 )
	self:SetPoseParameter( "throttle_pedal", throttle )
	self:SetPoseParameter( "brake_pedal", brake )
	self:SetPoseParameter( "handbrake_pedal", handbrake )
	self:SetPoseParameter( "clutch_pedal", clutch )

	local GearIDtoPose = {
		[-1] = 0,
		[1] = 1,
	}

	self:SetPoseParameter( "gear",  self:QuickLerp( "gear", (GearIDtoPose[ gear ] or 1) ) )
	if self:GetSirenMode() < 0 then return end

	local digit_1  =  speed_kmh % 10
	local digit_2 =  (speed_kmh - digit_1) % 100
	local digit_3  = (speed_kmh - digit_1 - digit_2) % 1000

	self:SetPoseParameter( "digital_1",  math.Round( digit_1, 0 ) )
	self:SetPoseParameter( "digital_2",  math.Round( digit_2 / 10, 0 ) )
	self:SetPoseParameter( "digital_3",  math.Round( digit_3 / 100, 0 ) )

end