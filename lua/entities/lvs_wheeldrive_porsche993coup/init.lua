AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")

function ENT:OnSpawn( PObj )
	local DriverSeat = self:AddDriverSeat( Vector(-16.6,10.8,-5), Angle(0,-90,8) )
	local PassengerSeat = self:AddPassengerSeat( Vector(-3,-11,7), Angle(0,-90,28) )

	self:AddEngine( Vector(-65,0,23), Angle(15,180,0) )
	self:AddFuelTank( Vector(-50,0,15), Angle(0,0,0), 3600, LVS.FUELTYPE_PETROL )

	local DoorHandler = self:AddDoorHandler( "left_door", Vector(0,27,20), Angle(0,0,0), Vector(-23,-6,-12), Vector(20,6,12), Vector(-23,-20,-12), Vector(20,40,12) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( DriverSeat )

	local DoorHandler = self:AddDoorHandler( "right_door", Vector(0,-27,20), Angle(0,0,0), Vector(-23,-6,-12), Vector(20,6,12), Vector(-23,-40,-12), Vector(20,20,12) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat )

	local DoorHandler = self:AddDoorHandler( "trunk", Vector(-65,0,30), Angle(-30,0,0), Vector(-15,-20,-3), Vector(15,20,3), Vector(-15,-20,-3), Vector(15,20,25) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_trunk_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/classiccar_door_close.wav" )

	local DoorHandler = self:AddDoorHandler( "hood", Vector(50,0,25), Angle(7,0,0), Vector(-25,-30,-6), Vector(25,30,6), Vector(-25,-30,-3), Vector(25,30,40) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_hood_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_hood_close.wav" )

	local WheelModel = "models/diggercars/porsche_993/fw.mdl"
	local WheelModelR = "models/diggercars/porsche_993/rw.mdl"

	local FrontAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = Angle(0,0,0),
			SteerType = LVS.WHEEL_STEER_FRONT,
			SteerAngle = 30,
			TorqueFactor = 0,
			BrakeFactor = 1,
		},
		Wheels = {
			self:AddWheel( {
				pos = Vector(45.4,26.5,10),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
			} ),

			self:AddWheel( {
				pos = Vector(45.4,-26.5,10),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
			} ),
		},
		Suspension = {
			Height = 5,
			MaxTravel = 10,
			ControlArmLength = 25,
			SpringConstant = 20000,
			SpringDamping = 2000,
			SpringRelativeDamping = 2000,
		},
	} )

	local RearAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = Angle(0,0,0),
			SteerType = LVS.WHEEL_STEER_NONE,
			TorqueFactor = 1,
			BrakeFactor = 1,
			UseHandbrake = true,
		},
		Wheels = {
			self:AddWheel( {
				pos = Vector(-45.5,28.5,10),
				mdl = WheelModelR,
				mdl_ang = Angle(0,180,0),
			} ),

			self:AddWheel( {
				pos = Vector(-45.5,-28.5,10),
				mdl = WheelModelR,
				mdl_ang = Angle(0,0,0),
			} ),
		},
		Suspension = {
			Height = 10,
			MaxTravel = 7,
			ControlArmLength = 25,
			SpringConstant = 20000,
			SpringDamping = 2000,
			SpringRelativeDamping = 2000,
		},
	} )
end
