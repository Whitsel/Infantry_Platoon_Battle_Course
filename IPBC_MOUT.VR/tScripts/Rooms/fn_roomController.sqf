
#include "script_component.hpp";

params ["_controller", "_frontDoor", "_floorSetHash", "_roomTrigger"];

_controller addAction [format ["<img image='Data\7Cav_Logo.paa' /> 7th Cavalry Room Controller"], {}, [], 1.5, true, false, "", "true", 5];

_controller call FUNC(addActionSpacer);

_controller addAction [ // Randomize Room
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

_controller addAction [ // Toggle AI spawning
	"  " + colorHexEast + iconEdenGroup + "</t> Toggle AI spawning",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		if (
			_target getVariable ["spawningAI", false] == false
		) then {
			[_target, ["spawningAI", true]] remoteExec ["setvariable", 0, true];
			hintSilent "AI spawning toggled on";
		} else {
			[_target, ["spawningAI", false]] remoteExec ["setvariable", 0, true];
			hintSilent "AI spawning toggled off";
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

_controller addAction [ // Increase AI Spawn Chance
	"    " + colorHexEast + iconEdenSortUp + "</t> Increase AI Spawn Chance",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnChanceAI = (_target getVariable ["spawnChanceAI", 0.3]);

		if (
			_spawnChanceAI >= 1
		) then {
			hintSilent "Spawn Chance already set to 100%";
		} else {
			_spawnChanceAI = _spawnChanceAI + 0.10;

			[_target, ["spawnChanceAI", _spawnChanceAI]] remoteExec ["setvariable", 0, true];

			hintSilent format["AI spawn chance set to %1 %",_spawnChanceAI * 100];
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

_controller addAction [ // Decrease AI Spawn Chance
	"    " + colorHexEast + iconEdenSortDown + "</t> Decrease AI Spawn Chance", //Strange behavior first time it hits 0%
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnChanceAI = (_target getVariable ["spawnChanceAI", 0.3]);

		if (
			_spawnChanceAI <= 0
		) then {
			hintSilent "Spawn Chance already set to 0%";
		} else {
			_spawnChanceAI = _spawnChanceAI - 0.10;

			[_target, ["spawnChanceAI", _spawnChanceAI]] remoteExec ["setvariable", 0, true];

			hintSilent format["AI spawn chance set to %1 %",_spawnChanceAI * 100];
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

_controller addAction [ // Increase OpFor Skill
	"    " + colorHexEast + iconEdenSortUp + "</t> Increase OpFor Skill",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnAISkill = (_target getVariable ["spawnAISkill", 0.1]);

		if (
			_spawnAISkill >= 1
		) then {
			hintSilent "OpFor Skill already set to 100%";
		} else {
			_spawnAISkill = _spawnAISkill + 0.10;

			[_target, ["spawnAISkill", _spawnAISkill]] remoteExec ["setvariable", 0, true];

			hintSilent format["OpFor Skill set to %1 %",_spawnAISkill * 100];
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

_controller addAction [ // Decrease OpFor Skill
	"    " + colorHexEast + iconEdenSortDown + "</t> Decrease OpFor Skill", //Strange behavior first time it hits 0%
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnAISkill = (_target getVariable ["spawnAISkill", 0.1]);

		if (
			_spawnAISkill <= 0
		) then {
			hintSilent "OpFor Skill already set to 0%";
		} else {
			_spawnAISkill = _spawnAISkill - 0.10;

			[_target, ["spawnAISkill", _spawnAISkill]] remoteExec ["setvariable", 0, true];

			hintSilent format["OpFor Skill set to %1 %",_spawnAISkill * 100];
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

_controller addAction [ // Increase OpFor Walker Chance
	"    " + colorHexEast + iconEdenSortUp + "</t> Increase OpFor Walker Chance",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnAIMovement = (_target getVariable ["spawnAIMovement", 0.1]);

		if (
			_spawnAIMovement >= 1
		) then {
			hintSilent "OpFor Walker Chance already set to 100%";
		} else {
			_spawnAIMovement = _spawnAIMovement + 0.10;

			[_target, ["spawnAIMovement", _spawnAIMovement]] remoteExec ["setvariable", 0, true];

			hintSilent format["OpFor Walker Chance set to %1 %",_spawnAIMovement * 100];
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

_controller addAction [ // Decrease OpFor Walker Chance
	"    " + colorHexEast + iconEdenSortDown + "</t> Decrease OpFor Walker Chance", //Strange behavior first time it hits 0%
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnAIMovement = (_target getVariable ["spawnAIMovement", 0.1]);

		if (
			_spawnAIMovement <= 0
		) then {
			hintSilent "OpFor Walker Chance already set to 0%";
		} else {
			_spawnAIMovement = _spawnAIMovement - 0.10;

			[_target, ["spawnAIMovement", _spawnAIMovement]] remoteExec ["setvariable", 0, true];

			hintSilent format["OpFor Walker Chance set to %1 %",_spawnAIMovement * 100];
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

_controller addAction [ // Increase OpFor Walker Max Time
	"    " + colorHexEast + iconEdenSortUp + "</t> Increase OpFor Walker Max Time",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnAIMovementSpeed = (_target getVariable ["spawnAIMovementSpeed", 30]);

		if (
			_spawnAIMovementSpeed >= 300
		) then {
			hintSilent "Max OpFor Walker Time already set to 300 seconds";
		} else {
			_spawnAIMovementSpeed = _spawnAIMovementSpeed + 5;

			[_target, ["spawnAIMovementSpeed", _spawnAIMovementSpeed]] remoteExec ["setvariable", 0, true];

			hintSilent format["Max OpFor Walker time set to %1",_spawnAIMovementSpeed];
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

_controller addAction [ // Decrease OpFor Walker Max Time
	"    " + colorHexEast + iconEdenSortDown + "</t> Decrease OpFor Walker Max Time", //Strange behavior first time it hits 0%
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnAIMovementSpeed = (_target getVariable ["spawnAIMovementSpeed", 30]);

		if (
			_spawnAIMovementSpeed <= 0
		) then {
			hintSilent "Max OpFor Walker Time already set to 0 seconds";
		} else {
			_spawnAIMovementSpeed = _spawnAIMovementSpeed - 5;

			[_target, ["spawnAIMovementSpeed", _spawnAIMovementSpeed]] remoteExec ["setvariable", 0, true];

			hintSilent format["Max OpFor Walker time set to %1",_spawnAIMovementSpeed];
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

_controller addAction [ // Increase Max Walker Spawn
	"    " + colorHexEast + iconEdenSortUp + "</t> Increase Max Walker Spawn",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnWalkerMax = (_target getVariable ["spawnWalkerMax", 2]);

		if (
			_spawnWalkerMax >= 10
		) then {
			hintSilent "Max Walker Spawn already set to 10";
		} else {
			_spawnWalkerMax = _spawnWalkerMax + 1;

			[_target, ["spawnWalkerMax", _spawnWalkerMax]] remoteExec ["setvariable", 0, true];

			hintSilent format["Max Walker Spawn set to %1",_spawnWalkerMax];
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

_controller addAction [ // Decrease Max Walker Spawn
	"    " + colorHexEast + iconEdenSortDown + "</t> Decrease Max Walker Spawn", //Strange behavior first time it hits 0%
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnWalkerMax = (_target getVariable ["spawnWalkerMax", 2]);

		if (
			_spawnWalkerMax <= 0
		) then {
			hintSilent "Max Walker Spawn already set to 0";
		} else {
			_spawnWalkerMax = _spawnWalkerMax - 1;

			[_target, ["spawnWalkerMax", _spawnWalkerMax]] remoteExec ["setvariable", 0, true];

			hintSilent format["Max Walker Spawn set to %1",_spawnWalkerMax];
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

_controller addAction [ // Increase OpFor Hunter Chance
	"    " + colorHexEast + iconEdenSortUp + "</t> Increase OpFor Hunter Chance",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnAIHunter = (_target getVariable ["spawnAIHunter", 0.1]);

		if (
			_spawnAIHunter >= 1
		) then {
			hintSilent "OpFor Hunter Chance already set to 100%";
		} else {
			_spawnAIHunter = _spawnAIHunter + 0.10;

			[_target, ["spawnAIHunter", _spawnAIHunter]] remoteExec ["setvariable", 0, true];

			hintSilent format["OpFor Hunter Chance set to %1 %",_spawnAIHunter * 100];
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

_controller addAction [ // Decrease OpFor Hunter Chance
	"    " + colorHexEast + iconEdenSortDown + "</t> Decrease OpFor Hunter Chance", //Strange behavior first time it hits 0%
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnAIHunter = (_target getVariable ["spawnAIHunter", 0.1]);

		if (
			_spawnAIHunter <= 0
		) then {
			hintSilent "OpFor Hunter Chance already set to 0%";
		} else {
			_spawnAIHunter = _spawnAIHunter - 0.10;

			[_target, ["spawnAIHunter", _spawnAIHunter]] remoteExec ["setvariable", 0, true];

			hintSilent format["OpFor Hunter Chance set to %1 %",_spawnAIHunter * 100];
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

_controller addAction [ // Increase Max OpFor Hunter Spawn
	"    " + colorHexEast + iconEdenSortUp + "</t> Increase Max OpFor Hunter Spawn",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnHunterMax = (_target getVariable ["spawnHunterMax", 2]);

		if (
			_spawnHunterMax >= 10
		) then {
			hintSilent "Max OpFor Hunter Spawn already set to 10";
		} else {
			_spawnHunterMax = _spawnHunterMax + 1;

			[_target, ["spawnHunterMax", _spawnHunterMax]] remoteExec ["setvariable", 0, true];

			hintSilent format["Max OpFor Hunter Spawn set to %1",_spawnHunterMax];
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

_controller addAction [ // Decrease Max OpFor Hunter Spawn
	"    " + colorHexEast + iconEdenSortDown + "</t> Decrease Max OpFor Hunter Spawn", //Strange behavior first time it hits 0%
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnHunterMax = (_target getVariable ["spawnHunterMax", 2]);

		if (
			_spawnHunterMax <= 0
		) then {
			hintSilent "Max OpFor Hunter Spawn already set to 0";
		} else {
			_spawnHunterMax = _spawnHunterMax - 1;

			[_target, ["spawnHunterMax", _spawnHunterMax]] remoteExec ["setvariable", 0, true];

			hintSilent format["Max OpFor Hunter Spawn set to %1",_spawnHunterMax];
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

_controller addAction [ // Toggle Civilian spawning
	"  " + colorHexCiv + iconEdenMan + "</t> Toggle Civilian spawning",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		if (
			_target getVariable ["spawningCiv", false] == false
		) then {
			[_target, ["spawningCiv", true]] remoteExec ["setvariable", 0, true];
			hintSilent "Civlian spawning toggled on";
		} else {
			[_target, ["spawningCiv", false]] remoteExec ["setvariable", 0, true];
			hintSilent "Civilian spawning toggled off";
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

_controller addAction [ // Increase Civilian Spawn Chance
	"    " + colorHexCiv + iconEdenSortUp + "</t> Increase Civilian Spawn Chance",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnChanceCiv = (_target getVariable ["spawnChanceCiv", 0.2]);

		if (
			_spawnChanceCiv >= 1
		) then {
			hintSilent "Spawn Chance already set to 100%";
		} else {
			_spawnChanceCiv = _spawnChanceCiv + 0.10;

			[_target, ["spawnChanceCiv", _spawnChanceCiv]] remoteExec ["setvariable", 0, true];

			hintSilent format["Civilian spawn chance set to %1 %",_spawnChanceCiv * 100];
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

_controller addAction [ // Decrease Civilian Spawn Chance
	"    " + colorHexCiv + iconEdenSortDown + "</t> Decrease Civilian Spawn Chance", //Strange behavior first time it hits 0%
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnChanceCiv = (_target getVariable ["spawnChanceCiv", 0.2]);

		if (
			_spawnChanceCiv <= 0
		) then {
			hintSilent "Spawn Chance already set to 0%";
		} else {
			_spawnChanceCiv = _spawnChanceCiv - 0.10;

			[_target, ["spawnChanceCiv", _spawnChanceCiv]] remoteExec ["setvariable", 0, true];

			hintSilent format["Civilian spawn chance set to %1 %",_spawnChanceCiv * 100];
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

_controller addAction [ // Increase Max Civilian Spawn
	"    " + colorHexCiv + iconEdenSortUp + "</t> Increase Max Civilian Spawn",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnCivMax = (_target getVariable ["spawnCivMax", 2]);

		if (
			_spawnCivMax >= 10
		) then {
			hintSilent "Max Civilian Spawn already set to 10";
		} else {
			_spawnCivMax = _spawnCivMax + 1;

			[_target, ["spawnCivMax", _spawnCivMax]] remoteExec ["setvariable", 0, true];

			hintSilent format["Max Civilian Spawn set to %1",_spawnCivMax];
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

_controller addAction [ // Decrease Max Civilian Spawn
	"    " + colorHexCiv + iconEdenSortDown + "</t> Decrease Max Civilian Spawn", //Strange behavior first time it hits 0%
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnCivMax = (_target getVariable ["spawnCivMax", 2]);

		if (
			_spawnCivMax <= 0
		) then {
			hintSilent "Max Civilian Spawn already set to 0";
		} else {
			_spawnCivMax = _spawnCivMax - 1;

			[_target, ["spawnCivMax", _spawnCivMax]] remoteExec ["setvariable", 0, true];

			hintSilent format["Max Civilian Spawn set to %1",_spawnCivMax];
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

_controller addAction [ // Toggle Furniture Spawning
	"  " + colorHexUnknown + iconEdenObjects + "</t> Toggle Furniture Spawning",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		if (
			_target getVariable ["spawningFurniture", false] == false
		) then {
			[_target, ["spawningFurniture", true]] remoteExec ["setvariable", 0, true];
			hintSilent "Furniture spawning toggled on";
		} else {
			[_target, ["spawningFurniture", false]] remoteExec ["setvariable", 0, true];
			hintSilent "Furniture spawning toggled off";
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

_controller addAction [ // Increase Furniture Spawn Chance
	"    " + colorHexUnknown + iconEdenSortUp + "</t> Increase Furniture Spawn Chance",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnChanceFurniture = (_target getVariable ["spawnChanceFurniture", 0.3]);

		if (
			_spawnChanceFurniture >= 1
		) then {
			hintSilent "Furniture Spawn Chance already set to 100%";
		} else {
			_spawnChanceFurniture = _spawnChanceFurniture + 0.10;

			[_target, ["spawnChanceFurniture", _spawnChanceFurniture]] remoteExec ["setvariable", 0, true];

			hintSilent format["Furniture spawn chance set to %1 %",_spawnChanceFurniture * 100];
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

_controller addAction [ // Decrease Furniture Spawn Chance
	"    " + colorHexUnknown + iconEdenSortDown + "</t> Decrease Furniture Spawn Chance",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];

		_spawnChanceFurniture = (_target getVariable ["spawnChanceFurniture", 0.3]);

		if (
			_spawnChanceFurniture <= 0
		) then {
			hintSilent "Furniture Spawn Chance already set to 0%";
		} else {
			_spawnChanceFurniture = _spawnChanceFurniture - 0.10;

			[_target, ["spawnChanceFurniture", _spawnChanceFurniture]] remoteExec ["setvariable", 0, true];

			hintSilent format["Furniture spawn chance set to %1 %",_spawnChanceFurniture * 100];
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
