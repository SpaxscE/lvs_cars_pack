AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")
include("sv_pds.lua")

function ENT:OnSpawn( PObj )
	local DriverSeat = self:AddDriverSeat( Vector(-7,11.9,3), Angle(0,-90,8) )
	local PassengerSeat = self:AddPassengerSeat( Vector(6,-11.9,15), Angle(0,-90,28) )

	self:AddEngine( Vector(-65,0,23), Angle(15,180,0) )

	local DoorHandler = self:AddDoorHandler( "left_door", Vector(0,27,25), Angle(0,0,0), Vector(-23,-6,-12), Vector(20,6,12), Vector(-23,-20,-12), Vector(20,40,12) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( DriverSeat )
	DoorHandler:DisableOnBodyGroup( 5, 2 )

	local DoorHandler = self:AddDoorHandler( "right_door", Vector(0,-27,25), Angle(0,0,0), Vector(-23,-6,-12), Vector(20,6,12), Vector(-23,-40,-12), Vector(20,20,12) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat )
	DoorHandler:DisableOnBodyGroup( 6, 2 )

	local DoorHandler = self:AddDoorHandler( "trunk", Vector(-65,0,30), Angle(-30,0,0), Vector(-15,-20,-3), Vector(15,20,3), Vector(-15,-20,-3), Vector(15,20,25) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_trunk_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/classiccar_door_close.wav" )
	DoorHandler:DisableOnBodyGroup( 1, 2 )

	local FuelCap = self:AddDoorHandler( "hood", Vector(50,0,35), Angle(7,0,0), Vector(-25,-25,-6), Vector(15,25,6), Vector(-25,-25,-3), Vector(5,25,30) )
	FuelCap:SetSoundOpen( "lvs/vehicles/generic/car_trunk_open.wav" )
	FuelCap:SetSoundClose( "lvs/vehicles/generic/classiccar_door_close.wav" )
	FuelCap:DisableOnBodyGroup( 2, 2 )

	local FuelTank = self:AddFuelTank( Vector(40,0,20), Angle(0,0,0), 2000, LVS.FUELTYPE_PETROL )
	FuelTank:SetDoorHandler( FuelCap )

	local WheelModel = "models/diggercars/vw_beetle/beetle_wh1.mdl"

	local FLWheel = self:AddWheel( { pos = Vector(46,27,18), mdl = WheelModel, mdl_ang = Angle(0,180,0), width = 2 } )
	local FRWheel = self:AddWheel( { pos = Vector(46,-27,18), mdl = WheelModel, mdl_ang = Angle(0,0,0), width = 2} )
	local RLWheel = self:AddWheel( { pos = Vector(-46,27,16), mdl = WheelModel, mdl_ang = Angle(0,180,0), width = 2 } )
	local RRWheel = self:AddWheel( { pos = Vector(-46,-27,16), mdl = WheelModel, mdl_ang = Angle(0,0,0), width = 2} )

	-- FL/FR glass 0.5
	-- RL/RR rubber ( prev. dirt ) 0.8

	self:CreateRigControler( "fl", FLWheel, 6.5, 16.5 )
	self:CreateRigControler( "fr", FRWheel, 6.5, 16.5 )
	self:CreateRigControler( "rl", RLWheel, 6.5, 16.5 )
	self:CreateRigControler( "rr", RRWheel, 6.5, 16.5 )

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
			MaxTravel = 10,
			ControlArmLength = 25,
			SpringConstant = 10000,
			SpringDamping = 1000,
			SpringRelativeDamping = 1000,
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
		Wheels = { RLWheel, RRWheel },
		Suspension = {
			Height = 10,
			MaxTravel = 10,
			ControlArmLength = 25,
			SpringConstant = 20000,
			SpringDamping = 2000,
			SpringRelativeDamping = 2000,
		},
	} )

	self:CreatePDS()
end
