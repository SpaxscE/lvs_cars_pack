AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")

function ENT:OnSpawn( PObj )
	local DriverSeat = self:AddDriverSeat( Vector(-14,-15,-5), Angle(0,-90,8) )
	local PassengerSeat = self:AddPassengerSeat( Vector(-2,15,7), Angle(0,-90,28) )

	self:AddEngine( Vector(50,0,20) )
	self:AddTurboCharger()

	self:AddFuelTank( Vector(-70,0,15), Angle(5,0,0), 600, LVS.FUELTYPE_PETROL )


	local DoorHandler = self:AddDoorHandler( "left_door", Vector(-18,29,22), Angle(0,0,0), Vector(-8,-6,-16), Vector(46,6,8), Vector(0,-20,-16), Vector(46,52,8) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/skyline/door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/skyline/door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat )

	local DoorHandler = self:AddDoorHandler( "right_door", Vector(-18,-29,22), Angle(0,0,0), Vector(-8,-6,-16), Vector(46,6,8), Vector(0,-52,-16), Vector(46,20,8) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/skyline/door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/skyline/door_close.wav" )
	DoorHandler:LinkToSeat( DriverSeat )

	local DoorHandler = self:AddDoorHandler( "hood", Vector(58,0,23), Angle(10,0,0), Vector(-27,-28,-3), Vector(24,28,3), Vector(-27,-28,-3), Vector(10,28,40) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_hood_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_hood_close.wav" )

	local FuelCap = self:AddDoorHandler( "fuel_cap", Vector(-63,-36.5,23), Angle(0,0,0), Vector(-5,0,-3), Vector(5,5,3), Vector(-5,-5,-3), Vector(5,5,3) )
	FuelCap:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	FuelCap:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )

	local DoorHandler = self:AddDoorHandler( "trunk", Vector(-70,0,30), Angle(0,0,0), Vector(-20,-28,-10), Vector(10,28,3), Vector(-20,-28,-3), Vector(10,28,20) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_trunk_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/classiccar_door_close.wav" )


	local WheelModel = "models/diggercars/nissan_silvias15/s15_wheel.mdl"

	local FLWheel = self:AddWheel( { pos = Vector(50,29,10), mdl = WheelModel, mdl_ang = Angle(0,0,0), radius = 12 } )
	local FRWheel = self:AddWheel( { pos = Vector(50,-29,10), mdl = WheelModel, mdl_ang = Angle(0,180,0), radius = 12} )
	local RLWheel = self:AddWheel( { pos = Vector(-50.9,29,9), mdl = WheelModel, mdl_ang = Angle(0,0,0), radius = 12 } )
	local RRWheel = self:AddWheel( { pos = Vector(-50.9,-29,9), mdl = WheelModel, mdl_ang = Angle(0,180,0), radius = 12} )

	self:CreateRigControler( "fl", FLWheel, 2.2, 10 )
	self:CreateRigControler( "fr", FRWheel, 2.2, 10 )
	self:CreateRigControler( "rl", RLWheel, 2.2, 10 )
	self:CreateRigControler( "rr", RRWheel, 2.2, 10 )

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
			SpringConstant = 20000,
			SpringDamping = 2000,
			SpringRelativeDamping = 2000,
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
			SpringConstant = 20000,
			SpringDamping = 2000,
			SpringRelativeDamping = 2000,
		},
	} )


end
