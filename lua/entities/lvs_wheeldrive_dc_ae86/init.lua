AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")

function ENT:OnSpawn( PObj )
	local DriverSeat = self:AddDriverSeat( Vector(-20,-13.7,-5), Angle(0,-90,10) )
	local PassengerSeat = self:AddPassengerSeat( Vector(-10,13.7,5), Angle(0,-90,20) )

	local DoorHandler = self:AddDoorHandler( "left_door", Vector(-12,30,20), Angle(0,0,0), Vector(-20,-6,-16), Vector(32,6,8), Vector(-20,-20,-16), Vector(32,42,8) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat )

	local DoorHandler = self:AddDoorHandler( "right_door", Vector(-12,-30,20), Angle(0,0,0), Vector(-20,-6,-16), Vector(32,6,8), Vector(-20,-42,-16), Vector(32,20,8) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( DriverSeat )

	local DoorHandler = self:AddDoorHandler( "trunk", Vector(-60,0,35), Angle(-18,0,0), Vector(-30,-25,-3), Vector(15,25,8), Vector(-15,-30,-3), Vector(20,30,40) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_trunk_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/classiccar_door_close.wav" )

	local DoorHandler = self:AddDoorHandler( "hood", Vector(50,0,24), Angle(10,0,0), Vector(-30,-25,-3), Vector(20,25,3), Vector(-30,-25,-3), Vector(0,25,40) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_hood_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_hood_close.wav" )
	local Engine = self:AddEngine( Vector(40,0,22) )
	Engine:SetDoorHandler( DoorHandler )

	local FuelTank = self:AddFuelTank( Vector(-50,0,20), Angle(0,0,0), 3600, LVS.FUELTYPE_PETROL )

	local LightsHandler = self:GetLightsHandler()
	if IsValid( LightsHandler ) then
		local DoorHandler = self:AddDoorHandler( "lights", Vector(72,0,20), Angle(0,0,0), Vector(-5,-25,-5), Vector(5,25,5) )
		DoorHandler:SetRate( 4 )
		DoorHandler:SetRateExponent( 1 )

		LightsHandler:SetDoorHandler( DoorHandler )
	end

	local WheelModel = "models/diggercars/toyota_ae86/ae86_wheel.mdl"

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
				pos = Vector(42,28,8),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
			} ),

			self:AddWheel( {
				pos = Vector(42,-28,8),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
			} ),
		},
		Suspension = {
			Height = 8,
			MaxTravel = 7,
			ControlArmLength = 25,
			SpringConstant = 25000,
			SpringDamping = 2500,
			SpringRelativeDamping = 2500,
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
				pos = Vector(-54,28,8.5),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
			} ),

			self:AddWheel( {
				pos = Vector(-54,-28,8.5),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
			} ),
		},
		Suspension = {
			Height = 8,
			MaxTravel = 7,
			ControlArmLength = 25,
			SpringConstant = 25000,
			SpringDamping = 2500,
			SpringRelativeDamping = 2500,
		},
	} )
end
