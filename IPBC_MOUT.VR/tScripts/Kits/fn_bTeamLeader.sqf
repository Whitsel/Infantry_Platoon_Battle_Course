
#include "script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	[
		"arifle_MX_Black_F",
		"",
		"acc_pointer_IR",
		"optic_Hamr",
		["30Rnd_65x39_caseless_black_mag_Tracer",30],
		[],
		""
	],
	[],
	[],
	[
		"U_B_CombatUniform_mcam",
		[
			["FirstAidKit",5]
		]
	],
	[
		"V_PlateCarrierSpec_rgr",
		[
			["30Rnd_65x39_caseless_black_mag_Tracer",7,30],
			["HandGrenade",2,1],
			["SmokeShell",2,1]
		]
	],
	[
		"B_AssaultPack_rgr",
		[
			["NVGoggles_INDEP",1],
			["SmokeShellBlue",2,1],
			["Chemlight_blue",2,1],
			["B_IR_Grenade",2,1]
		]
	],
	"H_HelmetSpecB",
	"",
	[
		"Binocular",
		"",
		"",
		"",
		[],
		[],
		""
	],
	[
		"ItemMap",
		"ItemGPS",
		"ItemRadio",
		"ItemCompass",
		"ItemWatch",
		""
	]
];

_unit removeAllEventHandlers "Respawn";

_unit addEventHandler [
	"Respawn",
	{
		params ["_unit", "_corpse"];
		_unit call tScripts_fnc_bTeamLeader;
	}
];

diag_log format ["tScripts Logging: %1 had the Platoon/Squad/Team Leader kit applied",name _unit]
