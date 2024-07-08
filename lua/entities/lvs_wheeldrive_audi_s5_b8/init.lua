AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")

function ENT:OnSpawn( PObj )
	local DriverSeat = self:AddDriverSeat( Vector(-10,14.5,-2), Angle(0,-90,10) )
	local PassengerSeat1 = self:AddPassengerSeat( Vector(0,-14.5,7), Angle(0,-90,20) )

	local PassengerSeat = self:AddPassengerSeat( Vector(-30,-14.5,7), Angle(0,-90,20) )
	local PassengerSeat = self:AddPassengerSeat( Vector(-30,0,7), Angle(0,-90,20) )
	local PassengerSeat = self:AddPassengerSeat( Vector(-30,14.5,7), Angle(0,-90,20) )

	self:AddEngine( Vector(58,0,25) )

	local DoorHandler = self:AddDoorHandler( "left_door", Vector(10,32,17), Angle(2,0,0), Vector(-30,-6,-12), Vector(20,6,12), Vector(-30,-25,-12), Vector(20,40,12) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( DriverSeat )

	local DoorHandler = self:AddDoorHandler( "right_door", Vector(10,-32,17), Angle(2,0,0), Vector(-30,-6,-12), Vector(20,6,12), Vector(-30,-40,-12), Vector(20,25,12) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat1 )


	local FuelTank = self:AddFuelTank( Vector(-50,0,10), Angle(0,0,0), 2600, LVS.FUELTYPE_PETROL )

	local WheelModel = "models/diggercars/audi_s3/wheel.mdl"

	local FrontAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = Angle(0,0,0),
			SteerType = LVS.WHEEL_STEER_FRONT,
			SteerAngle = 30,
			TorqueFactor = 0.4,
			BrakeFactor = 1,
		},
		Wheels = {
			self:AddWheel( {
				pos = Vector(58,32,13),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
			} ),

			self:AddWheel( {
				pos = Vector(58,-32,13),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
			} ),
		},
		Suspension = {
			Height = 15,
			MaxTravel = 10,
			ControlArmLength = 25,
			SpringConstant = 35000,
			SpringDamping = 3000,
			SpringRelativeDamping = 3000,
		},
	} )

	local RearAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = Angle(0,0,0),
			SteerType = LVS.WHEEL_STEER_NONE,
			TorqueFactor = 0.6,
			BrakeFactor = 1,
			UseHandbrake = true,
		},
		Wheels = {
			self:AddWheel( {
				pos = Vector(-51.5,32,12),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
			} ),

			self:AddWheel( {
				pos = Vector(-51.5,-32,12),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
			} ),
		},
		Suspension = {
			Height = 10,
			MaxTravel = 10,
			ControlArmLength = 25,
			SpringConstant = 20000,
			SpringDamping = 2000,
			SpringRelativeDamping = 2000,
		},
	} )

end
