
#include "script_component.hpp";

params ["_crate",["_locked", false]];

if (_locked == true) then {
	SETVAR(_crate,EGVAR(COMPONENT,locked),true);
	diag_log format ["tScripts Logging: Crate lock has been initially applied to %1", _crate]
};

private _kits = [
	[
		"Range Master",
		"crangeMaster",
		iconManCommander2,
		"(player getVariable ['instructor', false])",
		colorHexGold
	],
	[
		"Squad Leader",
		"bteamLeader",
		iconManOfficer
	],
	[
		"Team Leader",
		"bteamLeader",
		iconManLeader
	],
	[
		"Automatic Rifleman",
		"bautomaticRifleman",
		iconManMG
	],
	[
		"Grenadier",
		"bgrenadier",
		iconManExplosive
	],
	[
		"Rifleman",
		"brifleman"
	],
	[
		"Marksman",
		"bmarksman",
		iconManRecon
	],
	[
		"Combat Life Saver",
		"bmedic",
		iconManMedic
	]
];

_crate addAction [format ["<img image='Data\7Cav_Logo.paa' /> 7th Cavalry Equipment Crate"], {}, [], 1.5, true, true, "", "true", 5];

_crate call FUNC(addActionSpacer);

{
	_x params [
		"_role",
		"_fileName",
		["_icon", iconMan],
		["_cond", "(!(_target getVariable ['tScripts_crates_locked', false]) && (_this getVariable ['tScripts_class_role','']) == 'infantry') || ((_this getVariable ['tScripts_class_role','']) == 'rangeMaster')"],
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

	diag_log format ["tScripts Logging: %1 kit added to quick select for %2", _filename, _crate]

} forEach _kits;

_crate addAction ["<t size = '0.5'> </t>", {}, [], 1.5, true, true, "", "(!(_target getVariable ['tScripts_crates_locked', false]) && (_this getVariable ['tScripts_class_role','']) == 'infantry') || ((_this getVariable ['tScripts_class_role','']) == 'rangeMaster')", 5];

_crate call FUNC(resources);

_crate allowdamage false;

_crate enableRopeAttach false;

_crate call FUNC(crate_Lock);

if !(isServer) exitWith {};

[
	_crate,
	[
		["30Rnd_65x39_caseless_black_mag", 100],
		["100Rnd_65x39_caseless_black_mag", 50],
		["200Rnd_65x39_cased_crate_Red", 20],
		["30Rnd_9x21_Mag_SMG_02", 50],
		["16Rnd_9x21_Mag", 20],
		["1Rnd_HE_Grenade_shell", 50],
		["1Rnd_SmokeRed_Grenade_shell", 20],
		["UGL_FlareCIR_F", 20],
		["HandGrenade", 50],
		["SmokeShell", 50],
		["SmokeShellBlue", 20],
		["Chemlight_blue", 20],
		["Chemlight_yellow", 20],
		["Chemlight_red", 20],
		["B_IR_Grenade", 10],
		["NLAW_F", 10],
		["SLAMDirectionalMine_Wire_Mag", 10],
		["FirstAidKit", 100]
	]
] call FUNC(setCargo);
