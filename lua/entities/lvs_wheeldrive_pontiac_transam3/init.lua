AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")

function ENT:OnSpawn( PObj )
	local DriverSeat = self:AddDriverSeat( Vector(-15,14.5,-8), Angle(0,-90,8) )
	local PassengerSeat = self:AddPassengerSeat( Vector(0,-14,4), Angle(0,-90,28) )

	self:AddPassengerSeat( Vector(-24,-15,5), Angle(0,-90,15) )
	self:AddPassengerSeat( Vector(-24,15,5), Angle(0,-90,15) )

	self:AddEngine( Vector(64.5,0,20.24) )
	--self:AddSuperCharger()

	local DoorHandler = self:AddDoorHandler( "left_door", Vector(0,33,20), Angle(0,0,0), Vector(-15,-6,-16), Vector(38,6,8), Vector(-15,-20,-16), Vector(38,42,8) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( DriverSeat )

	local DoorHandler = self:AddDoorHandler( "right_door", Vector(0,-33,20), Angle(0,0,0), Vector(-15,-6,-16), Vector(38,6,8), Vector(-15,-42,-16), Vector(38,20,8) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat )

	local LightsHandler = self:GetLightsHandler()
	if IsValid( LightsHandler ) then
		local DoorHandler = self:AddDoorHandler( "lights", Vector(72,0,20), Angle(0,0,0), Vector(-5,-25,-5), Vector(5,25,5) )
		DoorHandler:SetRate( 4 )
		DoorHandler:SetRateExponent( 1 )

		LightsHandler:SetDoorHandler( DoorHandler )
	end

	self:AddFuelTank( Vector(-86,0,10), Angle(0,0,0), 600, LVS.FUELTYPE_PETROL )

	local WheelModel = "models/diggercars/pontiac_transam3/wheel.mdl"

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
				pos = Vector(50.6,30,6),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
			} ),

			self:AddWheel( {
				pos = Vector(50.6,-30,6),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
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
				pos = Vector(-50.6,30,6),
				mdl = WheelModel,
				mdl_ang = Angle(0,180,0),
			} ),

			self:AddWheel( {
				pos = Vector(-50.6,-30,6),
				mdl = WheelModel,
				mdl_ang = Angle(0,0,0),
			} ),
		},
		Suspension = {
			Height = 9,
			MaxTravel = 7,
			ControlArmLength = 25,
			SpringConstant = 20000,
			SpringDamping = 2000,
			SpringRelativeDamping = 2000,
		},
	} )

end



