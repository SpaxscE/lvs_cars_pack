include("shared.lua")

function ENT:UpdatePoseParameters( steer, speed_kmh, engine_rpm, throttle, brake, handbrake, clutch, gear, temperature, fuel, oil, ammeter )
	self:SetPoseParameter( "vehicle_steer", steer )
	self:SetPoseParameter( "tacho_gauge", engine_rpm / 10000 )
	self:SetPoseParameter( "temp_gauge", temperature )
	self:SetPoseParameter( "fuel_gauge", fuel )
	self:SetPoseParameter( "alt_gauge", ammeter )
	self:SetPoseParameter( "oil_gauge", oil )
	self:SetPoseParameter( "vehicle_gauge", speed_kmh / 400 )
	self:SetPoseParameter( "throttle_pedal", throttle )
	self:SetPoseParameter( "brake_pedal", brake )
	self:SetPoseParameter( "handbrake_pedal", handbrake )
	self:SetPoseParameter( "clutch_pedal", clutch )

	local GearIDtoPose = {
		[-1] = 0,
		[1] = 5,
		[2] = 7,
		[3] = 10,
		[4] = 12,
		[5] = 15,
		[6] = 17,
	}

	self:SetPoseParameter( "gear",  self:QuickLerp( "gear", (GearIDtoPose[ gear ] or 1) ) )

	local Turbo = self:GetTurbo()

	if not IsValid( Turbo ) then return end

	self:SetPoseParameter( "turbo_gauge", Turbo:GetBoost() )

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

end