
#include "..\script_component.hpp";

params ["_controller", "_frontDoor", "_areaTrigger"];

_controller addAction [
	"Randomize Room",
	{
		params ["_target", "_caller", "_actionId", "_args"];
		_args params ["_frontDoor", "_areaTrigger"];
		_frontDoor animate ["door_1_rot", 0];
		_frontDoor setVariable["bis_disabled_Door_1", 0, true];

		{{ hideObject _x } foreach _x} foreach roomAll;

		{
			if (_x inArea _areaTrigger == true) then {deleteVehicle _x}
		} forEach allUnits;
		{
			if (_x inArea _areaTrigger == true) then {deleteVehicle _x}
		} forEach allDead;

		_rand = floor random count roomSimple + 1;

		{ _x hideObject false} foreach (roomSimple get _rand)#0;

		_spawnChance = _target getVariable ["spawnChance", 0];

		{
			_rand = random 1;
			if (_spawnChance > _rand) then
			{
				_randkit = floor random 4 + 1;
				private _unit = (createGroup east) createUnit ["O_soldierU_F", getposATL _x, [], 0.5, "NONE"];
				_unit setDir random 360;
				switch (_randKit) do {
					case 1: {_unit call tScripts_fnc_oRifleman};
					case 2: {_unit call tScripts_fnc_oGrenadier};
					case 3: {_unit call tScripts_fnc_oAutomaticRifleman};
					case 4: {_unit call tScripts_fnc_oTeamLeader};
				}
			}
		} foreach (roomSimple get _rand)#1;

	},
	[_frontDoor, _areaTrigger]
];

_controller addAction ["---", {}, nil, 1.5, true, true, "", "true", 5];

_controller addAction [
	"  Toggle Opfor Spawning",
	{
		params ["_target", "_caller", "_actionId", "_args"];
		[_target, ["spawning", false]] remoteExec ["setvariable", 0, true];
	}
];

_controller addAction [
	"  Set spawn chance to 33%",
	{
		params ["_target", "_caller", "_actionId", "_args"];
		[_target, ["spawnChance", 0.33]] remoteExec ["setvariable", 0, true];
	}
];

_controller addAction [
	"  Set spawn chance to 66%",
	{
		params ["_target", "_caller", "_actionId", "_args"];
		[_target, ["spawnChance", 0.66]] remoteExec ["setvariable", 0, true];
	}
];

_controller addAction [
	"  Set spawn chance to 100%",
	{
		params ["_target", "_caller", "_actionId", "_args"];
		[_target, ["spawnChance", 1.00]] remoteExec ["setvariable", 0, true];
	}
];
