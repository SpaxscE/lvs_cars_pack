AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")

function ENT:OnSpawn( PObj )
	local DriverSeat = self:AddDriverSeat( Vector(-7,13.8,-3), Angle(0,-90,8) )
	local PassengerSeat = self:AddPassengerSeat( Vector(8,-14,5), Angle(0,-90,28) )

	self:AddEngine( Vector(-40,0,28.24) )

	local DoorHandler = self:AddDoorHandler( "left_door", Vector(-5,33,23), Angle(0,0,0), Vector(-15,-6,-16), Vector(38,6,8), Vector(-15,-20,-16), Vector(38,6,48) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/skyline/door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/skyline/door_close.wav" )
	DoorHandler:LinkToSeat( DriverSeat )

	local DoorHandler = self:AddDoorHandler( "right_door", Vector(-5,-33,23), Angle(0,0,0), Vector(-15,-6,-16), Vector(38,6,8), Vector(-15,-6,-16), Vector(38,20,48) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/skyline/door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/skyline/door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat )

	local LightsHandler = self:GetLightsHandler()
	if IsValid( LightsHandler ) then
		local DoorHandler = self:AddDoorHandler( "lights", Vector(62,0,25), Angle(0,0,0), Vector(-5,-25,-5), Vector(5,25,5) )
		DoorHandler:SetRate( 4 )
		DoorHandler:SetRateExponent( 1 )

		LightsHandler:SetDoorHandler( DoorHandler )
	end

	self:AddFuelTank( Vector(50,0,14), Angle(0,0,0), 600, LVS.FUELTYPE_PETROL )

	local WheelModel = "models/diggercars/lambo_countach/fw.mdl"

	local WheelModelR = "models/diggercars/lambo_countach/rw.mdl"

	local FLWheel = self:AddWheel( { pos = Vector(46.3,32,15), mdl = WheelModel, mdl_ang = Angle(0,0,0), radius = 13 } )
	local FRWheel = self:AddWheel( { pos = Vector(46.3,-32,15), mdl = WheelModel, mdl_ang = Angle(0,180,0), radius = 13} )
	local RLWheel = self:AddWheel( { pos = Vector(-53.7,32,15), mdl = WheelModelR, mdl_ang = Angle(0,0,0), radius = 13, width = 6 } )
	local RRWheel = self:AddWheel( { pos = Vector(-53.7,-32,15), mdl = WheelModelR, mdl_ang = Angle(0,180,0), radius = 13, width = 6 } )

	self:CreateRigControler( "rl", RLWheel, 8.2, 16.2 )
	self:CreateRigControler( "rr", RRWheel, 8.2, 16.2 )

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
			SpringConstant = 30000,
			SpringDamping = 2000,
			SpringRelativeDamping = 2000,
		},
	} )

end


