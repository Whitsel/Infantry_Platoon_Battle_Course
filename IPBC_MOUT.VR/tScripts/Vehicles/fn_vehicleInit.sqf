
#include "..\script_component.hpp";

params [""];

_marshall = [];
{if (_x iskindOf "APC_Wheeled_01_base_F") then {_marshall pushBack _x}} forEach vehicles;

{
	_x setPlateNumber "1/7 Cav";
	diag_log format["tScripts Logging: Plate Number set for %1", _x];
} forEach _marshall;


{
	[
		_x,
		[],
		[
			"showBags",1,
			"showCamonetHull",0,
			"showCamonetTurret",0,
			"showSLATHull",1,
			"showSLATTurret",1
		]
	] call BIS_fnc_initVehicle;

	diag_log format["tScripts Logging: Appearance set for vehicle %1", _x];

	for "_i" from 1 to 2 do {_x addMagazineTurret ["60Rnd_40mm_GPR_Tracer_Red_shells",[0]]};
	for "_i" from 1 to 2 do {_x addMagazineTurret ["40Rnd_40mm_APFSDS_Tracer_Red_shells",[0]]};
	for "_i" from 1 to 4 do {_x addMagazineTurret ["200Rnd_762x51_Belt_Red",[0]]};

	diag_log format["tScripts Logging: Vehicle magazines set for vehicle %1", _x];

} forEach _marshall;

{
	_x call FUNC(liftVehicle)
} forEach _marshall;

if !(isServer) exitWith {};

{
	[_x, [
		["30Rnd_65x39_caseless_black_mag", 54],
		["100Rnd_65x39_caseless_black_mag", 10],
		["1Rnd_HE_Grenade_shell", 20],
		["1Rnd_SmokeRed_Grenade_shell", 8],
		["UGL_FlareCIR_F", 8],
		["HandGrenade", 18],
		["SmokeShell", 30],
		["SmokeShellBlue", 6],
		["Chemlight_blue", 6],
		["B_IR_Grenade", 6],
		["launch_NLAW_F", 1],
		["NLAW_F", 4],
		["SLAMDirectionalMine_Wire_Mag", 6],
		["FirstAidKit", 45]
	]] call FUNC(setCargo);

	diag_log format["tScripts Logging: Inventory set for vehicle %1", _x];

} forEach _marshall;
