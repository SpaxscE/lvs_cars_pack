include("shared.lua")

ENT.ScrollTextureData = {
	["$bumpmap"] = "models/diggercars/shared/skin_nm",
	["$phong"] = "1",
	["$phongboost"] = "0.08",
	["$phongexponent"] = "3",
	["$phongfresnelranges"] = "[1 1 1]",
	["$colorfix"] = "{255 255 255}",
	["$translate"] = "[0.0 0.0 0.0]",
	["Proxies"] = {
		["Equals"] = {
			["srcVar1"] = "$colorfix",
			["resultVar"] = "$color",
		},
		["TextureTransform"] = {
			["translateVar"] = "$translate",
			["centerVar"]    = "$center",
			["resultVar"]    = "$basetexturetransform",
		}
	}
}

function ENT:UpdatePoseParameters( steer, speed_kmh, engine_rpm, throttle, brake, handbrake, clutch, gear, temperature, fuel, oil, ammeter )
	self:SetPoseParameter( "vehicle_steer", steer )
	self:SetPoseParameter( "temp_gauge", temperature )
	self:SetPoseParameter( "tacho_gauge", engine_rpm / 8000 )
	self:SetPoseParameter( "vehicle_gauge", speed_kmh / 220 )
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

	self._rpm = self._rpm and self._rpm + engine_rpm * FrameTime() or 0

	self:SetSubMaterial( 31, self:ScrollTexture( "belt", "models/diggercars/dodge_charger/belt", Vector(0,self._rpm * 0.0075,0) ) )
	self:SetPoseParameter( "engine_spin", -self._rpm )


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