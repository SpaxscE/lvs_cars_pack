AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")
include("sv_pds.lua")

function ENT:OnSpawn( PObj )
	local DriverSeat = self:AddDriverSeat( Vector(-7,17,10), Angle(0,-90,8) )
	local PassengerSeat = self:AddPassengerSeat( Vector(10,-17,20), Angle(0,-90,28) )
	local PassengerSeat2 = self:AddPassengerSeat( Vector(-28,-20,20), Angle(0,-90,28) )
	local PassengerSeat1 = self:AddPassengerSeat( Vector(-28,20,20), Angle(0,-90,28) )

	local PassengerSeat1 = self:AddPassengerSeat( Vector(-28,8,20), Angle(0,-90,28) )
	local PassengerSeat2 = self:AddPassengerSeat( Vector(-28,-8,20), Angle(0,-90,28) )

	--self:AddSuperCharger()

	local DoorHandler = self:AddDoorHandler( "left_door", Vector(5,33,30), Angle(0,0,0), Vector(-15,-6,-16), Vector(38,6,8), Vector(-15,-20,-16), Vector(38,42,8) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( DriverSeat )
	DoorHandler:DisableOnBodyGroup( 7, 2 )

	local DoorHandler = self:AddDoorHandler( "right_door", Vector(5,-33,30), Angle(0,0,0), Vector(-15,-6,-16), Vector(38,6,8), Vector(-15,-42,-16), Vector(38,20,8) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat )
	DoorHandler:DisableOnBodyGroup( 8, 2 )

	local DoorHandler = self:AddDoorHandler( "rear_left_door", Vector(-25,32,17), Angle(2,0,0), Vector(-20,-6,-12), Vector(15,6,22), Vector(-20,-25,-12), Vector(15,40,22) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat1 )
	DoorHandler:DisableOnBodyGroup( 9, 2 )

	local DoorHandler = self:AddDoorHandler( "rear_right_door", Vector(-25,-32,17), Angle(2,0,0), Vector(-20,-6,-12), Vector(15,6,22), Vector(-20,-40,-12), Vector(15,25,22) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat2 )
	DoorHandler:DisableOnBodyGroup( 10, 2 )

	local DoorHandler = self:AddDoorHandler( "trunk", Vector(-83,0,40), Angle(-8,0,0), Vector(-20,-28,-3), Vector(10,28,3), Vector(-10,-28,-3), Vector(10,28,30) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_trunk_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/classiccar_door_close.wav" )
	DoorHandler:DisableOnBodyGroup( 14, 2 )

	local DoorHandler = self:AddDoorHandler( "hood", Vector(65,0,36), Angle(5,0,0), Vector(-30,-30,-3), Vector(29,30,3), Vector(-30,-30,-3), Vector(0,30,50) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_hood_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_hood_close.wav" )
	DoorHandler:DisableOnBodyGroup( 13, 2 )
	local Engine = self:AddEngine( Vector(61,0,28.24) )
	Engine:SetDoorHandler( DoorHandler )

	self:AddFuelTank( Vector(-86,0,10), Angle(0,0,0), 1600, LVS.FUELTYPE_PETROL )

	local WheelModel = "models/diggercars/plymouth_duster/wh.mdl"

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
				pos = Vector(71,35,15),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
			} ),

			self:AddWheel( {
				pos = Vector(71,-35,15),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
			} ),
		},
		Suspension = {
			Height = 8,
			MaxTravel = 7,
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
				pos = Vector(-59,35,15),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
			} ),

			self:AddWheel( {
				pos = Vector(-59,-35,15),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
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


	self:CreatePDS()
end


