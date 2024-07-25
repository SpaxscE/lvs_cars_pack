AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")

function ENT:OnSpawn( PObj )
	local DriverSeat = self:AddDriverSeat( Vector(-10,17,3), Angle(0,-90,10) )
	local PassengerSeat = self:AddPassengerSeat( Vector(0,-17,13), Angle(0,-90,20) )
	local PassengerSeat1 = self:AddPassengerSeat( Vector(-35,16,13), Angle(0,-90,20) )
	local PassengerSeat2 = self:AddPassengerSeat( Vector(-35,-16,13), Angle(0,-90,20) )
	local PassengerSeat = self:AddPassengerSeat( Vector(-35,0,13), Angle(0,-90,20) )

	local DoorHandler = self:AddDoorHandler( "hood", Vector(58,0,33), Angle(10,0,0), Vector(-27,-28,-3), Vector(24,28,3), Vector(-27,-28,-3), Vector(10,28,40) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_hood_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_hood_close.wav" )

	local Engine = self:AddEngine( Vector(58,0,0) )
	Engine:SetDoorHandler( DoorHandler )
	self:AddTurboCharger()

	local DoorHandler = self:AddDoorHandler( "left_door", Vector(10,32,17), Angle(2,0,0), Vector(-20,-6,-12), Vector(20,6,22), Vector(-20,-25,-12), Vector(20,40,22) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( DriverSeat )

	local DoorHandler = self:AddDoorHandler( "right_door", Vector(10,-32,17), Angle(2,0,0), Vector(-20,-6,-12), Vector(20,6,22), Vector(-20,-40,-12), Vector(20,25,22) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat )

	local DoorHandler = self:AddDoorHandler( "rear_left_door", Vector(-30,32,17), Angle(2,0,0), Vector(-20,-6,-12), Vector(15,6,22), Vector(-20,-25,-12), Vector(15,40,22) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat1 )

	local DoorHandler = self:AddDoorHandler( "rear_right_door", Vector(-30,-32,17), Angle(2,0,0), Vector(-20,-6,-12), Vector(15,6,22), Vector(-20,-40,-12), Vector(15,25,22) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat2 )


	local FuelTank = self:AddFuelTank( Vector(-60,0,10), Angle(0,0,0), 4000, LVS.FUELTYPE_PETROL )

	local WheelModel = "models/diggercars/vw_touareg/wheel.mdl"

	local FrontAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = Angle(0,0,0),
			SteerType = LVS.WHEEL_STEER_FRONT,
			SteerAngle = 30,
			TorqueFactor = 0.2,
			BrakeFactor = 1,
		},
		Wheels = {
			self:AddWheel( {
				pos = Vector(57,34,13),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
			} ),

			self:AddWheel( {
				pos = Vector(57,-34,13),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
			} ),
		},
		Suspension = {
			Height = 15,
			MaxTravel = 16,
			ControlArmLength = 40,
			SpringConstant = 35000,
			SpringDamping = 3000,
			SpringRelativeDamping = 3000,
		},
	} )

	local RearAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = Angle(0,0,0),
			SteerType = LVS.WHEEL_STEER_NONE,
			TorqueFactor = 0.8,
			BrakeFactor = 1,
			UseHandbrake = true,
		},
		Wheels = {
			self:AddWheel( {
				pos = Vector(-57,34,12),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
			} ),

			self:AddWheel( {
				pos = Vector(-57,-34,12),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
			} ),
		},
		Suspension = {
			Height = 13,
			MaxTravel = 16,
			ControlArmLength = 40,
			SpringConstant = 20000,
			SpringDamping = 2000,
			SpringRelativeDamping = 2000,
		},
	} )

end
