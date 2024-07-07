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
	self:SetPoseParameter( "fuel_gauge", fuel )
	self:SetPoseParameter( "vehicle_gauge", speed_kmh / 150 )

	local GearIDtoPose = {
		[-1] = 0,
		[1] = 4,
		[2] = 6,
		[3] = 9,
		[4] = 11,
	}

	self:SetPoseParameter( "gear",  self:QuickLerp( "gear", (GearIDtoPose[ gear ] or 1) ) )

	self._rpm = self._rpm and self._rpm + engine_rpm * FrameTime() or 0

	self:SetSubMaterial( 14, self:ScrollTexture( "belt", "models/diggercars/dodge_charger/belt", Vector(0,self._rpm * 0.0065,0) ) )
	self:SetPoseParameter( "engine_spin", -self._rpm )

end