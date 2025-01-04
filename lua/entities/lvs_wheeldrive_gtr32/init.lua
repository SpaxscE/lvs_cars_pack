AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")

function ENT:OnSpawn( PObj )
	local DriverSeat = self:AddDriverSeat( Vector(-10,-15,-7), Angle(0,-90,8) )
	local PassengerSeat1 = self:AddPassengerSeat( Vector(2,15,5), Angle(0,-90,28) )
	local PassengerSeat = self:AddPassengerSeat( Vector(-27,14,5), Angle(0,-90,28) )
	local PassengerSeat = self:AddPassengerSeat( Vector(-27,-14,5), Angle(0,-90,28) )

	local DoorHandler = self:AddDoorHandler( "left_door", Vector(-15,29,20), Angle(0,0,0), Vector(-8,-6,-16), Vector(46,6,8), Vector(0,-20,-16), Vector(46,52,8) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/skyline/door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/skyline/door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat1 )

	local DoorHandler = self:AddDoorHandler( "right_door", Vector(-15,-29,20), Angle(0,0,0), Vector(-8,-6,-16), Vector(46,6,8), Vector(0,-52,-16), Vector(46,20,8) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/skyline/door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/skyline/door_close.wav" )
	DoorHandler:LinkToSeat( DriverSeat )

	local DoorHandler = self:AddDoorHandler( "hood", Vector(63,0,25), Angle(10,0,0), Vector(-27,-28,-3), Vector(24,28,3), Vector(-27,-28,-3), Vector(10,28,40) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_hood_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_hood_close.wav" )

	local Engine = self:AddEngine( Vector(55,0,30) )
	Engine:SetDoorHandler( DoorHandler )
	self:AddTurboCharger()
	self:AddFuelTank( Vector(-70,0,15), Angle(5,0,0), 2400, LVS.FUELTYPE_PETROL )

	local DoorHandler = self:AddDoorHandler( "trunk", Vector(-70,0,30), Angle(0,0,0), Vector(-20,-28,-10), Vector(10,28,3), Vector(-20,-28,-3), Vector(10,28,20) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_trunk_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/classiccar_door_close.wav" )

	local WheelModel = "models/diggercars/nissan_skyline_gtr32/wheel_vspec.mdl"

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
				pos = Vector(52,30,5),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
			} ),

			self:AddWheel( {
				pos = Vector(52,-30,5),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
			} ),
		},
		Suspension = {
			Height = 5,
			MaxTravel = 7,
			ControlArmLength = 25,
			SpringConstant = 45000,
			SpringDamping = 4500,
			SpringRelativeDamping = 4500,
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
				pos = Vector(-52,30,10),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
			} ),

			self:AddWheel( {
				pos = Vector(-52,-30,10),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
			} ),
		},
		Suspension = {
			Height = 8,
			MaxTravel = 7,
			ControlArmLength = 25,
			SpringConstant = 35000,
			SpringDamping = 3500,
			SpringRelativeDamping = 3400,
		},
	} )
end
