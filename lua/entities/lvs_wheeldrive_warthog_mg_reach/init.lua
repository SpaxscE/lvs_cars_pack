AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")

function ENT:OnSpawn( PObj )
	self:AddEngine( Vector(30,0,20), Angle(0,90,0) )

	local DriverSeat = self:AddDriverSeat( Vector(-20,21,35), Angle(0,-90,0) )
	local PassengerSeat = self:AddPassengerSeat( Vector(44,-15,30), Angle(0,-90,20) )
	self:AddPassengerSeat( Vector(44,0,30), Angle(0,-90,20) )


	local FrontRadius = 25
	local RearRadius = 25

	local FL, FR, RL, RR, ForwardAngle = self:AddWheelsUsingRig( FrontRadius, RearRadius, data ) -- passing data will make the wheels visible
	FL:SetWidth( 10 )
	FR:SetWidth( 10 )
	RL:SetWidth( 10 )
	RR:SetWidth( 10 )

	local FrontAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = ForwardAngle,
			SteerType = LVS.WHEEL_STEER_FRONT,
			SteerAngle = 25,
			TorqueFactor = 0.4,
			BrakeFactor = 1,
		},
		Wheels = {FL,FR},
		Suspension = {
			Height = -5,
			MaxTravel = 30,
			ControlArmLength = 150,
			SpringConstant = 50000,
			SpringDamping = 15000,
			SpringRelativeDamping = 15000,
		},
	} )

	local RearAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = ForwardAngle,
			SteerType = LVS.WHEEL_STEER_REAR,
			SteerAngle = 25,
			TorqueFactor = 0.6,
			BrakeFactor = 1,
			UseHandbrake = true,
		},
		Wheels = {RL,RR},
		Suspension = {
			Height = -5,
			MaxTravel = 30,
			ControlArmLength = 150,
			SpringConstant = 50000,
			SpringDamping = 15000,
			SpringRelativeDamping = 15000,
		},
	} )
end
