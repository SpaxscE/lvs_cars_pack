AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "cl_init.lua" )
include("shared.lua")
include("sv_pds.lua")

function ENT:OnSpawn( PObj )

	local DriverSeat = self:AddDriverSeat( Vector(-16.3,-13,0), Angle(0,0,0) )
	local PassengerSeat = self:AddPassengerSeat( Vector(16,3,8), Angle(0,0,20) )
	self:AddPassengerSeat( Vector(16,-28,8), Angle(0,0,20) )
	self:AddPassengerSeat( Vector(0,-28,8), Angle(0,0,20) )
	self:AddPassengerSeat( Vector(-16,-28,8), Angle(0,0,20) )
	

	local DoorHandler = self:AddDoorHandler( "left_door", Vector(-32,7,21), Angle(0,90,0), Vector(-28,-6,-16), Vector(20,6,12), Vector(-28,-20,-16), Vector(20,30,12) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( DriverSeat )
	DoorHandler:DisableOnBodyGroup( 7, 3 )

	local DoorHandler = self:AddDoorHandler( "right_door", Vector(32,7,21), Angle(0,90,0), Vector(-28,-6,-16), Vector(20,6,12), Vector(-28,-30,-16), Vector(20,20,12) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_door_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_door_close.wav" )
	DoorHandler:LinkToSeat( PassengerSeat )
	DoorHandler:DisableOnBodyGroup( 8, 3 )

	local DoorHandler = self:AddDoorHandler( "hood", Vector(0,70,20), Angle(0,0,0), Vector(-29,-30,-3), Vector(29,26,13), Vector(-29,-30,-3), Vector(29,6,55) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_hood_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_hood_close.wav" )
	DoorHandler:DisableOnBodyGroup( 5, 3 )
	local Engine = self:AddEngine( Vector(0,60,25), Angle(0,90,0) )
	Engine:SetDoorHandler( DoorHandler )

	local DoorHandler = self:AddDoorHandler( "trunk", Vector(0,-78,20), Angle(0,0,2), Vector(-29,-27,-3), Vector(29,10,13), Vector(-29,-17,-3), Vector(29,10,40) )
	DoorHandler:SetSoundOpen( "lvs/vehicles/generic/car_hood_open.wav" )
	DoorHandler:SetSoundClose( "lvs/vehicles/generic/car_hood_close.wav" )
	DoorHandler:DisableOnBodyGroup( 6, 3 )

	local FrontRadius = 13
	local RearRadius = 13

	self:SetBodygroup( 14, 1 )

	local data = {
		mdl_fr = "models/diggercars/ford_fairlane/wheel.mdl",
		mdl_ang_fr = Angle(0,180,0),
		mdl_fl = "models/diggercars/ford_fairlane/wheel.mdl",
		mdl_ang_fl = Angle(0,0,0),
		mdl_rl = "models/diggercars/ford_fairlane/wheel.mdl",
		mdl_ang_rl = Angle(0,180,0),
		mdl_rr = "models/diggercars/ford_fairlane/wheel.mdl",
		mdl_ang_rr = Angle(0,0,0),
	}

	local FL, FR, RL, RR, ForwardAngle = self:AddWheelsUsingRig( FrontRadius, RearRadius, data ) -- passing data will make the wheels visible

	local FrontAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = ForwardAngle,
			SteerType = LVS.WHEEL_STEER_FRONT,
			SteerAngle = 30,
			TorqueFactor = 0,
			BrakeFactor = 1,
		},
		Wheels = {FL,FR},
		Suspension = {
			Height = 11,
			MaxTravel = 15,
			ControlArmLength = 25,
			SpringConstant = 20000,
			SpringDamping = 2000,
			SpringRelativeDamping = 2000,
		},
	} )

	local RearAxle = self:DefineAxle( {
		Axle = {
			ForwardAngle = ForwardAngle,
			SteerType = LVS.WHEEL_STEER_NONE,
			TorqueFactor = 1,
			BrakeFactor = 1,
			UseHandbrake = true,
		},
		Wheels = {RL,RR},
		Suspension = {
			Height = 15.5,
			MaxTravel = 15,
			ControlArmLength = 25,
			SpringConstant = 20000,
			SpringDamping = 2000,
			SpringRelativeDamping = 2000,
		},
	} )

	self:CreatePDS()
end
