AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")

function ENT:OnSpawn( PObj )
	local DriverSeat = self:AddDriverSeat( Vector(-7,12,2), Angle(0,-90,10) )
	local PassengerSeat = self:AddPassengerSeat( Vector(3,-12,12), Angle(0,-90,20) )

	self:AddEngine( Vector(53,0,27) )

	local DoorHandler = self:AddDoorHandler( "left_door", Vector(0,28,26), Angle(0,0,0), Vector(-20,-6,-16), Vector(25,6,8), Vector(-20,-20,-16), Vector(25,42,8) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( DriverSeat )

	local DoorHandler = self:AddDoorHandler( "right_door", Vector(0,-28,26), Angle(0,0,0), Vector(-20,-6,-16), Vector(25,6,8), Vector(-20,-42,-16), Vector(25,20,8) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat )

	local DoorHandler = self:AddDoorHandler( "trunk", Vector(-55,0,45), Angle(-40,0,0), Vector(-25,-25,-3), Vector(10,25,3), Vector(-15,-25,-3), Vector(10,25,30) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_trunk_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/classiccar_door_close.wav" )

	local DoorHandler = self:AddDoorHandler( "hood", Vector(65,0,27), Angle(10,0,0), Vector(-30,-26,-3), Vector(5,26,3), Vector(-30,-26,-3), Vector(0,26,35) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_hood_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_hood_close.wav" )

	local FuelCap = self:AddDoorHandler( "fuel_cap", Vector(-54.49,-28.79,34.62), Angle(0,0,0), Vector(-3,0,-3), Vector(3,3,3), Vector(-3,-3,-3), Vector(3,3,3) )
	FuelCap:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	FuelCap:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )

	local FuelTank = self:AddFuelTank( Vector(-50,0,20), Angle(0,0,0), 600, LVS.FUELTYPE_PETROL )
	FuelTank:SetDoorHandler( FuelCap )

	local WheelModel = "models/diggercars/peugeot_106/106_s16_wheel.mdl"

	local FrontAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = Angle(0,0,0),
			SteerType = LVS.WHEEL_STEER_FRONT,
			SteerAngle = 30,
			TorqueFactor = 1,
			BrakeFactor = 1,
		},
		Wheels = {
			self:AddWheel( {
				pos = Vector(44.5,28,15),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
			} ),

			self:AddWheel( {
				pos = Vector(44.5,-28,15),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
			} ),
		},
		Suspension = {
			Height = 10,
			MaxTravel = 7,
			ControlArmLength = 25,
			SpringConstant = 25000,
			SpringDamping = 2400,
			SpringRelativeDamping = 2400,
		},
	} )

	local RearAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = Angle(0,0,0),
			SteerType = LVS.WHEEL_STEER_NONE,
			TorqueFactor = 0,
			BrakeFactor = 1,
			UseHandbrake = true,
		},
		Wheels = {
			self:AddWheel( {
				pos = Vector(-50,28,15),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
			} ),

			self:AddWheel( {
				pos = Vector(-50,-28,15),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
			} ),
		},
		Suspension = {
			Height = 10,
			MaxTravel = 7,
			ControlArmLength = 25,
			SpringConstant = 25000,
			SpringDamping = 2400,
			SpringRelativeDamping = 2400,
		},
	} )
end
