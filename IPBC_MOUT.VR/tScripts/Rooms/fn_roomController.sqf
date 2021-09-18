
#include "..\script_component.hpp";

params ["_controller", "_frontDoor", "_floorSetHash", "_roomTrigger"];

_controller addAction [format ["<img image='Data\7Cav_Logo.paa' /> 7th Cavalry Room Controller"], {}, [], 1.5, true, true, "", "true", 5];

_controller addAction [
	"  Randomize Room",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments params ["_frontDoor", "_floorSetHash", "_roomTrigger"]; //_floorSetHash is not being passed properly

		[roomSimpleHash, _roomTrigger] call tScripts_fnc_roomClear;

		[_target, _frontDoor, roomSimpleHash] call tScripts_fnc_roomSpawnFloor;
	},
	[_frontDoor, _floorSetHash, _roomTrigger],
	1.5,
	true,
	true,
	"",
	"true",
	5
];

_controller addAction ["---", {}, nil, 1.5, true, true, "", "true", 5];

_controller addAction [
	"  Toggle Opfor Spawning",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		if (
			_target getVariable ["spawning", true]
		) then {
			[_target, ["spawning", false]] remoteExec ["setvariable", 0, true];
			hint "Spawning toggled off";
		} else {
			[_target, ["spawning", true]] remoteExec ["setvariable", 0, true];
			hint "Spawning toggled on";
		}
	},
	nil,
	1.5,
	true,
	false,
	"",
	"true",
	5
];

_controller addAction [
	"  Increase Opfor Spawn Chance",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnChance = (_target getVariable ["spawnChance", 0.20]);

		if (
			_spawnChance >= 1
		) then {
			hint "Spawn Chance already set to 100%";
		} else {
			_spawnChance = _spawnChance + .05;

			[_target, ["spawnChance", _spawnChance]] remoteExec ["setvariable", 0, true];

			hint format["Spawn chance set to %1 %",_spawnChance * 100];
		}
	},
	nil,
	1.5,
	true,
	false,
	"",
	"true",
	5
];

_controller addAction [
	"  Decrease Opfor Spawn Chance", //Strange behavior first time it hits 0%
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnChance = (_target getVariable ["spawnChance", 0.2]);

		if (
			_spawnChance <= 0
		) then {
			hint "Spawn Chance already set to 0%";
		} else {
			_spawnChance = _spawnChance - .05;

			[_target, ["spawnChance", _spawnChance]] remoteExec ["setvariable", 0, true];

			hint format["Spawn chance set to %1 %",_spawnChance * 100];
		}
	},
	nil,
	1.5,
	true,
	false,
	"",
	"true",
	5
];

_controller addAction ["---", {}, nil, 1.5, true, true, "", "true", 5];

_controller addAction ["  Toggle Furniture Spawning", {}, nil, 1.5, true, true, "", "true", 5];

_controller addAction ["  Increase Furniture Spawn Chance", {}, nil, 1.5, true, true, "", "true", 5];

_controller addAction ["  Decrease Furniture Spawn Chance", {}, nil, 1.5, true, true, "", "true", 5];
