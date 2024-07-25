AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")

function ENT:OnSpawn( PObj )
	local DriverSeat = self:AddDriverSeat( Vector(-5,-13.2,-10), Angle(0,-90,10) )
	local PassengerSeat = self:AddPassengerSeat( Vector(0,13.2,0), Angle(0,-90,10) )

	local DoorHandler = self:AddDoorHandler( "right_door", Vector(10,-24,17), Angle(0,0,0), Vector(-18,-5,-20), Vector(20,5,5), Vector(-8,-35,-20), Vector(20,5,5) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( DriverSeat )

	local DoorHandler = self:AddDoorHandler( "left_door", Vector(10,24,17), Angle(0,0,0), Vector(-18,-5,-20), Vector(20,5,5), Vector(-8,-5,-20), Vector(20,35,5) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat )

	local DoorHandler = self:AddDoorHandler( "trunk", Vector(-50,0,16), Angle(-3,0,0), Vector(-8,-25,-5), Vector(5,25,5), Vector(0,-25,15), Vector(15,25,25) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_hood_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_hood_close.wav" )

	local DoorHandler = self:AddDoorHandler( "hood", Vector(44.37,0,21.19), Angle(3,0,0), Vector(-7,-17,-2), Vector(9,17,2), Vector(5,-17,-2), Vector(9,17,17) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_hood_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_hood_close.wav" )
	local Engine = self:AddEngine( Vector(47.12,0,15) )
	Engine:SetDoorHandler( DoorHandler )

	local FuelCap = self:AddDoorHandler( "fuel_cap", Vector(-35.68,22.64,22), Angle(0,0,0), Vector(-3,-3,-3), Vector(3,3,3), Vector(-3,-3,-3), Vector(3,3,3) )
	FuelCap:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	FuelCap:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )

	local FuelTank = self:AddFuelTank( Vector(-30,0,0), Angle(0,0,0), 1500, LVS.FUELTYPE_PETROL )
	FuelTank:SetDoorHandler( FuelCap )

	self:SetBodygroup( 1, 1 )

	local WheelModel = "models/diggercars/reliant_regal/regal_wheel.mdl"

	local FWheel = self:AddWheel( { pos = Vector(54.63,0,-6), mdl = WheelModel, mdl_ang = Angle(0,180,0), width = 2 } )

	self:CreateRigControler( "f", FWheel, -10, 0 )

	local FrontAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = Angle(0,0,0),
			SteerType = LVS.WHEEL_STEER_FRONT,
			SteerAngle = 30,
			TorqueFactor = 0,
			BrakeFactor = 1,
		},
		Wheels = { FWheel },
		Suspension = {
			Height = 8,
			MaxTravel = 1,
			ControlArmLength = 12,
			SpringConstant = 15000,
			SpringDamping = 2000,
			SpringRelativeDamping = 2000,
		},
	} )

	local RLWheel = self:AddWheel( { pos = Vector(-22.73,22.41,-3), mdl = WheelModel, mdl_ang = Angle(0,180,0), width = 2 } )
	local RRWheel = self:AddWheel( { pos = Vector(-22.73,-22.41,-3), mdl = WheelModel, mdl_ang = Angle(0,0,0), width = 2 } )

	self:CreateRigControler( "rl", RLWheel, -11, 0 )
	self:CreateRigControler( "rr", RRWheel, -11, 0 )

	local RearAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = Angle(0,-90,0), -- lets rotate this 90 degree so the actual suspension geometry matches the visual one
			SteerType = LVS.WHEEL_STEER_NONE,
			TorqueFactor = 1,
			BrakeFactor = 1,
			UseHandbrake = true,
		},
		Wheels = { RLWheel, RRWheel },
		Suspension = {
			Height = 11,
			MaxTravel = 8,
			ControlArmLength = 25,
			SpringConstant = 25000,
			SpringDamping = 3000,
			SpringRelativeDamping = 3000,
		},
	} )

	RearAxle.ForwardAngle = Angle(0,0,0) -- rotate the axle back to 0,0,0
end
