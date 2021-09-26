
#include "script_component.hpp";

params ["_crate",["_locked", false]];

if (_locked == true) then {
	SETVAR(_crate,CGVAR(locked),true);
	diag_log format ["tScripts Logging: Crate lock has been initially applied to %1", _crate]
};

private _kits = [
	[
		"Range Master",
		"crangeMaster",
		iconManCommander2,
		"!(_target getVariable ['tScripts_crates_locked', false]) && (_this getVariable ['tScripts_class_instructor', false])",
		colorHexGold
	],
	[
		"Platoon Leader",
		"bSquadLeader",
		iconManCommander
	],
	[
		"Platoon Sergeant",
		"bSquadLeader",
		iconManCommander
	],
	[
		"Radio Telephone Operator",
		"bRATELO"
	],
	[
		"Platoon Medic",
		"bmedic",
		iconManMedic
	]
];

_crate addAction [format ["<img image='Data\7Cav\7Cav_Logo.paa' /> 7th Cavalry Equipment Crate"], {}, [], 1.5, true, true, "", "true", 5];

_crate call FUNC(addActionSpacer);

{
	_x params [
		"_role",
		"_fileName",
		["_icon", iconMan],
		["_cond", "!(_target getVariable ['tScripts_crates_locked', false]) && (((_this getVariable ['tScripts_class_role','']) == 'infantry') || ((_this getVariable ['tScripts_class_role','']) == 'rangeMaster'))"],
		["_color", colorHexWest]
	];

	_crate addAction ["  " + _color + _icon + "</t>" + _role, {
		params ["_target", "_caller", "_actionId", "_arguments"];

		_caller call compile preProcessFile format ["tScripts\Kits\fn_%1.sqf", _arguments];

		},
		_filename,
		1.5,
		false,
		true,
		"",
		format ["%1",_cond],
		5
	];

} forEach _kits;

diag_log format ["tScripts Logging: Leadership kit added to quick select for %1", _crate];

_crate addAction ["<t size = '0.5'> </t>", {}, [], 1.5, true, true, "", "!(_target getVariable ['tScripts_crates_locked', false]) && (((_this getVariable ['tScripts_class_role','']) == 'infantry') || ((_this getVariable ['tScripts_class_role','']) == 'rangeMaster'))", 5];

[_crate, _locked] call FUNC(crate_Common);

if !(isServer) exitWith {};

[
	_crate,
	[
		[BLU_MAGAZINES_RIFLE, 100],
		[BLU_MAGAZINES_RIFLE_TRACER, 20],
		[BLU_MAGAZINES_RIFLE_AUTOMATIC, 50],
		[BLUE_MAGAZINES_PISTOL, 20],
		[BLU_GRENADE_FRAG, 50],
		[BLU_GRENADE_SMOKE, 50],
		[BLU_GRENADE_SMOKE_BLUE, 20],
		[BLU_GRENADE_CHEM, 20],
		[BLU_GRENADE_IR, 10],
		[BLU_MEDICAL, 100]
	]
] call FUNC(setCargo);
