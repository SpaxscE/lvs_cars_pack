include("shared.lua")

function ENT:UpdatePoseParameters( steer, speed_kmh, engine_rpm, throttle, brake, handbrake, clutch, gear, temperature, fuel, oil, ammeter )
	self:SetPoseParameter( "vehicle_steer", steer )
	self:SetPoseParameter( "fuel_gauge", fuel )
	self:SetPoseParameter( "vehicle_guage", speed_kmh / 200 )
	self:SetPoseParameter( "tacho_gauge", engine_rpm / 8000 )
	self:SetPoseParameter( "throttle_pedal", throttle )
	self:SetPoseParameter( "brake_pedal", brake )
	self:SetPoseParameter( "clutch_pedal", clutch )
	self:SetPoseParameter( "handbrake_pedal", handbrake )
	self:SetPoseParameter( "temp_gauge", temperature )

	local GearIDtoPose = {
		[-1] = 0,
		[1] = 1,
	}

	self:SetPoseParameter( "gears",  self:QuickLerp( "gear", (GearIDtoPose[ gear ] or 1) ) )

end

function ENT:OnEngineActiveChanged( Active )
	if Active then
		self:EmitSound( "lvs/vehicles/warthog/in.wav", 75, 100,  LVS.EngineVolume )
	else
		self:EmitSound( "lvs/vehicles/warthog/out.wav", 75, 100,  LVS.EngineVolume )
	end
end