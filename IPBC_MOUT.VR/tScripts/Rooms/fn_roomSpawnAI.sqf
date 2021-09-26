
#include "script_component.hpp";

params ["_target", "_floorSetHash", "_floorNum", "_frontDoor"];

private _spawnPositions = (_floorSetHash get _floorNum)#1;
private _spawnChanceAI = _target getVariable ["spawnChanceAI", 0.3];
private _spawnChanceCiv = _target getVariable ["spawnChanceCiv", 0.2];
private _spawnAISkill = _target getVariable ["spawnAISkill", 0.1];

private _civArray = [
	"C_man_p_beggar_F",
	"C_man_1",
	"C_Man_casual_1_F",
	"C_Man_casual_2_F",
	"C_Man_casual_3_F",
	"C_Man_casual_4_v2_F",
	"C_Man_casual_5_v2_F",
	"C_Man_casual_6_v2_F",
	"C_Man_casual_7_F",
	"C_Man_casual_8_F",
	"C_Man_casual_9_F",
	"C_man_sport_1_F",
	"C_man_sport_2_F",
	"C_man_sport_3_F",
	"C_Man_casual_4_F",
	"C_Man_casual_5_F",
	"C_Man_casual_6_F",
	"C_man_polo_1_F",
	"C_man_polo_2_F",
	"C_man_polo_3_F",
	"C_man_polo_4_F",
	"C_man_polo_5_F",
	"C_man_polo_6_F",
	"C_man_shorts_1_F",
	"C_man_1_1_F",
	"C_man_1_2_F",
	"C_man_1_3_F",
	"C_Man_Fisherman_01_F",
	"C_man_p_fugitive_F",
	"C_man_p_shorts_1_F",
	"C_man_hunter_1_F",
	"C_man_shorts_2_F",
	"C_man_shorts_3_F",
	"C_man_shorts_4_F",
	"C_man_p_beggar_F_afro",
	"C_Man_casual_1_F_afro",
	"C_Man_casual_2_F_afro",
	"C_Man_casual_3_F_afro",
	"C_Man_casual_4_v2_F_afro",
	"C_Man_casual_5_v2_F_afro",
	"C_Man_casual_6_v2_F_afro",
	"C_Man_casual_7_F_afro",
	"C_Man_casual_8_F_afro",
	"C_Man_casual_9_F_afro",
	"C_man_sport_1_F_afro",
	"C_man_sport_2_F_afro",
	"C_man_sport_3_F_afro",
	"C_Man_casual_4_F_afro",
	"C_Man_casual_5_F_afro",
	"C_Man_casual_6_F_afro",
	"C_man_polo_1_F_afro",
	"C_man_polo_2_F_afro",
	"C_man_polo_3_F_afro",
	"C_man_polo_4_F_afro",
	"C_man_polo_5_F_afro",
	"C_man_polo_6_F_afro",
	"C_man_shorts_1_F_afro",
	"C_man_p_fugitive_F_afro",
	"C_man_p_shorts_1_F_afro",
	"C_man_shorts_2_F_afro",
	"C_man_shorts_3_F_afro",
	"C_man_shorts_4_F_afro",
	"C_man_p_beggar_F_asia",
	"C_Man_casual_1_F_asia",
	"C_Man_casual_2_F_asia",
	"C_Man_casual_3_F_asia",
	"C_Man_casual_4_v2_F_asia",
	"C_Man_casual_5_v2_F_asia",
	"C_Man_casual_6_v2_F_asia",
	"C_Man_casual_7_F_asia",
	"C_Man_casual_8_F_asia",
	"C_Man_casual_9_F_asia",
	"C_man_sport_1_F_asia",
	"C_man_sport_2_F_asia",
	"C_man_sport_3_F_asia",
	"C_Man_casual_4_F_asia",
	"C_Man_casual_5_F_asia",
	"C_Man_casual_6_F_asia",
	"C_man_polo_1_F_asia",
	"C_man_polo_2_F_asia",
	"C_man_polo_3_F_asia",
	"C_man_polo_4_F_asia",
	"C_man_polo_5_F_asia",
	"C_man_polo_6_F_asia",
	"C_man_shorts_1_F_asia",
	"C_man_p_fugitive_F_asia",
	"C_man_p_shorts_1_F_asia",
	"C_man_shorts_2_F_asia",
	"C_man_shorts_3_F_asia",
	"C_man_shorts_4_F_asia",
	"C_man_p_beggar_F_euro",
	"C_Man_casual_1_F_euro",
	"C_Man_casual_2_F_euro",
	"C_Man_casual_3_F_euro",
	"C_Man_casual_4_v2_F_euro",
	"C_Man_casual_5_v2_F_euro",
	"C_Man_casual_6_v2_F_euro",
	"C_Man_casual_7_F_euro",
	"C_Man_casual_8_F_euro",
	"C_Man_casual_9_F_euro",
	"C_man_sport_1_F_euro",
	"C_man_sport_2_F_euro",
	"C_man_sport_3_F_euro",
	"C_Man_casual_4_F_euro",
	"C_Man_casual_5_F_euro",
	"C_Man_casual_6_F_euro",
	"C_man_polo_1_F_euro",
	"C_man_polo_2_F_euro",
	"C_man_polo_3_F_euro",
	"C_man_polo_4_F_euro",
	"C_man_polo_5_F_euro",
	"C_man_polo_6_F_euro",
	"C_man_shorts_1_F_euro",
	"C_man_p_fugitive_F_euro",
	"C_man_p_shorts_1_F_euro",
	"C_scientist_01_formal_F",
	"C_scientist_02_formal_F",
	"C_scientist_01_informal_F",
	"C_scientist_02_informal_F",
	"C_man_shorts_2_F_euro",
	"C_man_shorts_3_F_euro",
	"C_man_shorts_4_F_euro",
	"C_Man_1_enoch_F",
	"C_Man_2_enoch_F",
	"C_Man_3_enoch_F",
	"C_Man_4_enoch_F",
	"C_Man_5_enoch_F",
	"C_Man_6_enoch_F",
	"C_Farmer_01_enoch_F",
	"C_Man_casual_1_F_tanoan",
	"C_Man_casual_2_F_tanoan",
	"C_Man_casual_3_F_tanoan",
	"C_Man_casual_4_v2_F_tanoan",
	"C_Man_casual_5_v2_F_tanoan",
	"C_Man_casual_6_v2_F_tanoan",
	"C_Man_casual_7_F_tanoan",
	"C_Man_casual_8_F_tanoan",
	"C_Man_casual_9_F_tanoan",
	"C_man_sport_1_F_tanoan",
	"C_man_sport_2_F_tanoan",
	"C_man_sport_3_F_tanoan",
	"C_Man_casual_4_F_tanoan",
	"C_Man_casual_5_F_tanoan",
	"C_Man_casual_6_F_tanoan"
];
private _spawnedCivs = [];
private _spawnCivMax = _target getVariable ["spawnCivMax", 2];
private _spawnWalkers = [];
private _spawnWalkersMax = _target getVariable ["spawnWalkerMax", 2];
private _spawnHunters = [];
private _spawnHuntersMax = _target getVariable ["spawnHunterMax", 2];

roomSpawnOpfor = {
	private _unitOpforGroup = createGroup east;
	private _unitOpfor = _unitOpforGroup createUnit ["O_soldierU_F", getposATL _x, [], 0.5, "NONE"];

	_unitDoorDirection = _unitOpfor getDir _frontDoor;
	_unitDirection = _unitDoorDirection + (floor random 180) - 90;
	[_unitOpforGroup, _unitDirection] remoteExec ["setFormDir", 2, false];
	_unitOpfor forceWalk true;

	_unitOpfor setSKill _spawnAISkill;

	private _wayPointChance = (_target getVariable ["spawnAIMovement", 0.1]);
	if ((_wayPointChance > random 1) && (count _spawnWalkers < _spawnWalkersMax)) then {
		call roomSpawnOpForWaypoint;
	};

	private _hunterChance = (_target getVariable ["spawnAIHunter", 0.1]);
	if ((_hunterChance > random 1) && (count _spawnHunters < _spawnHuntersMax)) then {
		call roomSpawnOpForHunt;
	};

	private _randkit = ceil random 4;
	switch (_randKit) do {
		case 1: {_unitOpfor call tScripts_fnc_oRifleman};
		case 2: {_unitOpfor call tScripts_fnc_oGrenadier};
		case 3: {_unitOpfor call tScripts_fnc_oAutomaticRifleman};
		case 4: {_unitOpfor call tScripts_fnc_oTeamLeader};
	};
};

roomSpawnOpForWaypoint = {
	private _wayPointMaxTime = (_target getVariable ["spawnAIMovementSpeed", 30]);
	private _wayPointPosition_2 = _spawnPositions#(floor random (count _spawnPositions));
	private _wayPointPosition_3 = _spawnPositions#(floor random (count _spawnPositions));
	private _wayPoint_1 = _unitOpforGroup addWaypoint [_x, -1];
	_wayPoint_1 setWaypointTimeout [0, _wayPointMaxTime/2, _wayPointMaxTime];

	private _wayPoint_2 = _unitOpforGroup addWaypoint [_wayPointPosition_2, 1];
	_wayPoint_2 setWaypointTimeout [0, _wayPointMaxTime/2, _wayPointMaxTime];
	_wayPoint_2 setWaypointSpeed "LIMITED";

	private _wayPoint_3 = _unitOpforGroup addWaypoint [_wayPointPosition_3, 1];
	_wayPoint_3 setWaypointTimeout [0, _wayPointMaxTime/2, _wayPointMaxTime];
	_wayPoint_3 setWaypointSpeed "LIMITED";
	_spawnWalkers pushBack _unitOpfor;
};

roomSpawnOpForHunt = {
	_unitOpfor addEventHandler [
		"FiredNear",
		{
			params ["_unit", "_firer", "_distance", "_weapon", "_muzzle", "_mode", "_ammo", "_gunner"];
			if (side _firer == side _unit) exitWith {};
			_unit reveal [_firer, 4];

			private _wayPointHunt_1 = group _unit addWaypoint [getPosATL _unit, 1];
			_wayPointHunt_1 setWaypointTimeout [0, 5, 10];

			private _wayPointHunt_2 = group _unit addWaypoint [getPosATL _firer, 3];
			_wayPointHunt_2 setWaypointType "SAD";
			_wayPointHunt_2 setWayPointSpeed "LIMITED";
			_wayPointHunt_2 setWaypointBehaviour "COMBAT";
			_wayPointHunt_2 waypointAttachVehicle _firer;

			_unit removeAllEventHandlers "FiredNear";
		};
	];
	_spawnHunters pushBack _unitOpfor;
};

roomSpawnCiv = {
	if ((_spawnChanceCiv > random 1) && (count _spawnedCivs < _spawnCivMax)) then {
		private _rand = floor random count(_civArray);
		private _civRand = _civArray select _rand;
		private _unitCiv = (createGroup east) createUnit [_civRand, getposATL _x, [], 0.5, "NONE"];
		_unitCiv setDir random 360;
		_unitCiv disableAI "PATH";
		_spawnedCivs pushBack _unitCiv;
	} else {
		call roomSpawnOpfor
	};
};

if (_target getVariable ["spawningAI", false]) then {
	{
		if (_spawnChanceAI > random 1) then {
			if (_target getVariable ["spawningCiv", false]) then {
					call roomSpawnCiv;
			} else {
				call roomSpawnOpfor;
			};
		};
	} forEach _spawnPositions;
};

diag_log format["tScripts Logging: AI spawned %1", _floorNum];
