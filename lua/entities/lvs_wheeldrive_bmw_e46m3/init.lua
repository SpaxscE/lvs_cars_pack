AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")

function ENT:OnSpawn( PObj )
	local DriverSeat = self:AddDriverSeat( Vector(-14,13,-3), Angle(0,-90,8) )
	local PassengerSeat1 = self:AddPassengerSeat( Vector(4,-14,9), Angle(0,-90,28) )

	local PassengerSeat = self:AddPassengerSeat( Vector(-30,-14,9), Angle(0,-90,28) )
	local PassengerSeat = self:AddPassengerSeat( Vector(-30,14,9), Angle(0,-90,28) )
	local PassengerSeat = self:AddPassengerSeat( Vector(-30,0,9), Angle(0,-90,28) )

	self:AddFuelTank( Vector(-70,0,15), Angle(5,0,0), 2600, LVS.FUELTYPE_PETROL )


	local DoorHandler = self:AddDoorHandler( "left_door", Vector(-12,29,22), Angle(0,0,0), Vector(-8,-6,-16), Vector(46,6,8), Vector(0,-20,-16), Vector(46,52,8) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/skyline/door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/skyline/door_close.wav" )
	DoorHandler:LinkToSeat( DriverSeat )

	local DoorHandler = self:AddDoorHandler( "right_door", Vector(-12,-29,22), Angle(0,0,0), Vector(-8,-6,-16), Vector(46,6,8), Vector(0,-52,-16), Vector(46,20,8) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/skyline/door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/skyline/door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat1 )

	local DoorHandler = self:AddDoorHandler( "hood", Vector(58,0,28), Angle(10,0,0), Vector(-27,-28,-3), Vector(24,28,3), Vector(-27,-28,-3), Vector(10,28,40) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_hood_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_hood_close.wav" )
	local Engine = self:AddEngine( Vector(55,0,22) )
	Engine:SetDoorHandler( DoorHandler )

	local FuelCap = self:AddDoorHandler( "fuel_cap", Vector(-64.34,-31.9,24.48), Angle(0,0,0), Vector(-3,0,-3), Vector(3,3,3), Vector(-3,-3,-3), Vector(3,3,3) )
	FuelCap:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	FuelCap:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )

	local DoorHandler = self:AddDoorHandler( "trunk", Vector(-65,0,35), Angle(0,0,0), Vector(-20,-28,-10), Vector(10,28,3), Vector(-20,-28,-3), Vector(10,28,20) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_trunk_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/classiccar_door_close.wav" )


	local WheelModel = "models/diggercars/bmw_e46/wheel.mdl"

	local FLWheel = self:AddWheel( { pos = Vector(58.7,31,12), mdl = WheelModel, mdl_ang = Angle(0,0,0), radius = 13 } )
	local FRWheel = self:AddWheel( { pos = Vector(58.7,-31,12), mdl = WheelModel, mdl_ang = Angle(0,180,0), radius = 13} )
	local RLWheel = self:AddWheel( { pos = Vector(-50.5,31,12), mdl = WheelModel, mdl_ang = Angle(0,0,0), radius = 13 } )
	local RRWheel = self:AddWheel( { pos = Vector(-50.5,-31,12), mdl = WheelModel, mdl_ang = Angle(0,180,0), radius = 13} )

	local FrontAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = Angle(0,0,0),
			SteerType = LVS.WHEEL_STEER_FRONT,
			SteerAngle = 30,
			TorqueFactor = 0,
			BrakeFactor = 1,
		},
		Wheels = { FLWheel, FRWheel },
		Suspension = {
			Height = 10,
			MaxTravel = 7,
			ControlArmLength = 25,
			SpringConstant = 30000,
			SpringDamping = 3000,
			SpringRelativeDamping = 3000,
		},
	} )

	local RearAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = Angle(0,0,0),
			SteerType = LVS.WHEEL_STEER_NONE,
			SteerAngle = 0,
			TorqueFactor = 1,
			BrakeFactor = 1,
			UseHandbrake = true,
		},
		Wheels = { RLWheel, RRWheel },
		Suspension = {
			Height = 10,
			MaxTravel = 7,
			ControlArmLength = 25,
			SpringConstant = 30000,
			SpringDamping = 3000,
			SpringRelativeDamping = 3000,
		},
	} )


end
