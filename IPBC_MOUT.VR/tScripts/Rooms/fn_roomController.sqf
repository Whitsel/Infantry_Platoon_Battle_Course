
#include "script_component.hpp";

params ["_controller", "_frontDoor", "_floorSetHash", "_roomTrigger"];

_controller addAction [format ["<img image='Data\7Cav_Logo.paa' /> 7th Cavalry Room Controller"], {}, [], 1.5, true, false, "", "true", 5];

_controller call FUNC(addActionSpacer);

_controller addAction [
	"  " + iconEdenRefresh + " Randomize Room",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments params ["_frontDoor", "_floorSetHash", "_roomTrigger"];

		[_floorSetHash, _roomTrigger, _frontDoor] call tScripts_fnc_roomClear;

		[_target, _frontDoor, _floorSetHash] call tScripts_fnc_roomSpawnFloor;
	},
	[_frontDoor, _floorSetHash, _roomTrigger],
	1.5,
	true,
	true,
	"",
	"true",
	5
];

_controller call FUNC(addActionSpacer);

_controller addAction [
	"  " + colorHexEast + iconEdenMan + "</t> Toggle AI spawning",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		if (
			_target getVariable ["spawningAI", false] == false
		) then {
			[_target, ["spawningAI", true]] remoteExec ["setvariable", 0, true];
			hint "AI spawning toggled on";
		} else {
			[_target, ["spawningAI", false]] remoteExec ["setvariable", 0, true];
			hint "AI spawning toggled off";
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
	"    " + colorHexEast + iconEdenSortUp + "</t> Increase AI Spawn Chance",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnChanceAI = (_target getVariable ["spawnChanceAI", 0.3]);

		if (
			_spawnChanceAI >= 1
		) then {
			hint "Spawn Chance already set to 100%";
		} else {
			_spawnChanceAI = _spawnChanceAI + .05;

			[_target, ["spawnChanceAI", _spawnChanceAI]] remoteExec ["setvariable", 0, true];

			hint format["AI spawn chance set to %1 %",_spawnChanceAI * 100];
		};
	},
	nil,
	1.5,
	true,
	false,
	"",
	"_target getVariable ['spawningAI', false]",
	5
];

_controller addAction [
	"    " + colorHexEast + iconEdenSortDown + "</t> Decrease AI Spawn Chance", //Strange behavior first time it hits 0%
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnChanceAI = (_target getVariable ["spawnChanceAI", 0.3]);

		if (
			_spawnChanceAI <= 0
		) then {
			hint "Spawn Chance already set to 0%";
		} else {
			_spawnChanceAI = _spawnChanceAI - .05;

			[_target, ["spawnChanceAI", _spawnChanceAI]] remoteExec ["setvariable", 0, true];

			hint format["AI spawn chance set to %1 %",_spawnChanceAI * 100];
		};
	},
	nil,
	1.5,
	true,
	false,
	"",
	"_target getVariable ['spawningAI', false]",
	5
];

_controller addAction ["<t size = '0.5'> </t>", {}, nil, 1.5, true, false, "", "_target getVariable ['spawningAI', false]", 5];

_controller addAction [
	"    " + colorHexEast + iconEdenSortUp + "</t> Increase AI Skill",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnAISkill = (_target getVariable ["spawnAISkill", 0.1]);

		if (
			_spawnAISkill >= 1
		) then {
			hint "AI skill already set to 100%";
		} else {
			_spawnAISkill = _spawnAISkill + .05;

			[_target, ["spawnAISkill", _spawnAISkill]] remoteExec ["setvariable", 0, true];

			hint format["AI skill set to %1 %",_spawnAISkill * 100];
		};
	},
	nil,
	1.5,
	true,
	false,
	"",
	"_target getVariable ['spawningAI', false]",
	5
];

_controller addAction [
	"    " + colorHexEast + iconEdenSortDown + "</t> Decrease AI Skill", //Strange behavior first time it hits 0%
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnAISkill = (_target getVariable ["spawnAISkill", 0.1]);

		if (
			_spawnAISkill <= 0
		) then {
			hint "AI skill already set to 0%";
		} else {
			_spawnAISkill = _spawnAISkill - .05;

			[_target, ["spawnAISkill", _spawnAISkill]] remoteExec ["setvariable", 0, true];

			hint format["AI skill set to %1 %",_spawnAISkill * 100];
		};
	},
	nil,
	1.5,
	true,
	false,
	"",
	"_target getVariable ['spawningAI', false]",
	5
];

_controller addAction ["<t size = '0.5'> </t>", {}, nil, 1.5, true, false, "", "_target getVariable ['spawningAI', false]", 5];

_controller addAction [
	"  " + colorHexCiv + iconEdenMan + "</t> Toggle Civilian spawning",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		if (
			_target getVariable ["spawningCiv", false] == false
		) then {
			[_target, ["spawningCiv", true]] remoteExec ["setvariable", 0, true];
			hint "Civlian spawning toggled on";
		} else {
			[_target, ["spawningCiv", false]] remoteExec ["setvariable", 0, true];
			hint "Civilian spawning toggled off";
		}
	},
	nil,
	1.5,
	true,
	false,
	"",
	"_target getVariable ['spawningAI', false]",
	5
];

_controller addAction [
	"    " + colorHexCiv + iconEdenSortUp + "</t> Increase Civilian Spawn Chance",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnChanceCiv = (_target getVariable ["spawnChanceCiv", 0.2]);

		if (
			_spawnChanceCiv >= 1
		) then {
			hint "Spawn Chance already set to 100%";
		} else {
			_spawnChanceCiv = _spawnChanceCiv + .05;

			[_target, ["spawnChanceCiv", _spawnChanceCiv]] remoteExec ["setvariable", 0, true];

			hint format["Civilian spawn chance set to %1 %",_spawnChanceCiv * 100];
		};
	},
	nil,
	1.5,
	true,
	false,
	"",
	"(_target getVariable ['spawningAI', false]) && (_target getVariable ['spawningCiv', false])",
	5
];

_controller addAction [
	"    " + colorHexCiv + iconEdenSortDown + "</t> Decrease Civilian Spawn Chance", //Strange behavior first time it hits 0%
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnChanceCiv = (_target getVariable ["spawnChanceCiv", 0.2]);

		if (
			_spawnChanceCiv <= 0
		) then {
			hint "Spawn Chance already set to 0%";
		} else {
			_spawnChanceCiv = _spawnChanceCiv - .05;

			[_target, ["spawnChanceCiv", _spawnChanceCiv]] remoteExec ["setvariable", 0, true];

			hint format["Civilian spawn chance set to %1 %",_spawnChanceCiv * 100];
		};
	},
	nil,
	1.5,
	true,
	false,
	"",
	"(_target getVariable ['spawningAI', false]) && (_target getVariable ['spawningCiv', false])",
	5
];

_controller call FUNC(addActionSpacer);

_controller addAction [
	"  " + colorHexUnknown + iconEdenObjects + "</t> Toggle Furniture Spawning",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		if (
			_target getVariable ["spawningFurniture", false] == false
		) then {
			[_target, ["spawningFurniture", true]] remoteExec ["setvariable", 0, true];
			hint "Furniture spawning toggled on";
		} else {
			[_target, ["spawningFurniture", false]] remoteExec ["setvariable", 0, true];
			hint "Furniture spawning toggled off";
		};
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
	"    " + colorHexUnknown + iconEdenSortUp + "</t> Increase Furniture Spawn Chance",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnChanceFurniture = (_target getVariable ["spawnChanceFurniture", 0.3]);

		if (
			_spawnChanceFurniture >= 1
		) then {
			hint "Furniture Spawn Chance already set to 100%";
		} else {
			_spawnChanceFurniture = _spawnChanceFurniture + .05;

			[_target, ["spawnChanceFurniture", _spawnChanceFurniture]] remoteExec ["setvariable", 0, true];

			hint format["Furniture spawn chance set to %1 %",_spawnChanceFurniture * 100];
		};
	},
	nil,
	1.5,
	true,
	false,
	"",
	"(_target getVariable ['spawningFurniture', false])",
	5
];

_controller addAction [
	"    " + colorHexUnknown + iconEdenSortDown + "</t> Decrease Furniture Spawn Chance",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnChanceFurniture = (_target getVariable ["spawnChanceFurniture", 0.3]);

		if (
			_spawnChanceFurniture <= 0
		) then {
			hint "Furniture Spawn Chance already set to 0%";
		} else {
			_spawnChanceFurniture = _spawnChanceFurniture - .05;

			[_target, ["spawnChanceFurniture", _spawnChanceFurniture]] remoteExec ["setvariable", 0, true];

			hint format["Furniture spawn chance set to %1 %",_spawnChanceFurniture * 100];
		};
	},
	nil,
	1.5,
	true,
	false,
	"",
	"(_target getVariable ['spawningFurniture', false])",
	5
];
