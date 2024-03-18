include("shared.lua")

function ENT:UpdatePoseParameters( steer, speed_kmh, engine_rpm, throttle, brake, handbrake, clutch, gear, temperature, fuel, oil, ammeter )
	self:SetPoseParameter( "vehicle_steer", steer )
	self:SetPoseParameter( "temp_gauge", temperature )
	self:SetPoseParameter( "oil_gauge", oil )
	self:SetPoseParameter( "tacho_gauge", engine_rpm / 8000 )
	self:SetPoseParameter( "vehicle_gauge", speed_kmh / 240 )
	self:SetPoseParameter( "throttle_pedal", throttle )
	self:SetPoseParameter( "brake_pedal", brake )
	self:SetPoseParameter( "handbrake_pedal", handbrake )
	self:SetPoseParameter( "fuel_gauge", fuel )

	local GearIDtoPose = {
		[-1] = 0,
		[1] = 4,
		[2] = 6,
		[3] = 9,
		[4] = 11,
		[5] = 14,
	}

	self:SetPoseParameter( "gear",  self:QuickLerp( "gear", (GearIDtoPose[ gear ] or 1) ) )


	local hours = os.date( "%H" )
	local min = os.date( "%M" ) 

	local hourb  = hours % 10
	local houra =  ((hours - hourb) % 100) / 10

	local minb  = min % 10
	local mina =  ((min - minb) % 100) / 10

	self:SetPoseParameter( "digital_1", houra )
	self:SetPoseParameter( "digital_2", hourb )

	self:SetPoseParameter( "digital_3", mina )
	self:SetPoseParameter( "digital_4", minb )

	if self:GetSirenMode() <= 0 then return end

	self:SetPoseParameter( "siren_spin", CurTime() * 1200 + self:EntIndex() * 1337 )
end