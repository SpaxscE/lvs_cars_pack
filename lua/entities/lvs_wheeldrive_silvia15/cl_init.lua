include("shared.lua")

function ENT:UpdatePoseParameters( steer, speed_kmh, engine_rpm, throttle, brake, handbrake, clutch, gear, temperature, fuel, oil, ammeter )
	self:SetPoseParameter( "vehicle_steer", steer )
	self:SetPoseParameter( "tacho_gauge", engine_rpm / 10000 )
	self:SetPoseParameter( "temp_gauge", temperature )
	self:SetPoseParameter( "fuel_gauge", fuel )
	self:SetPoseParameter( "oil_gauge", oil )
	self:SetPoseParameter( "vehicle_gauge", speed_kmh / 180 )
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

	self._rpm = self._rpm and self._rpm + engine_rpm * FrameTime() or 0

	self:SetPoseParameter( "engine_spin", -self._rpm )
end

function ENT:CalcViewOverride( ply, pos, angles, fov, pod )
	pos = pos + pod:GetUp() * -2.5 + pod:GetRight() * 2

	-- pod:GetForward() * 10
	-- pod:GetRight() * 10

	return pos, angles, fov
end