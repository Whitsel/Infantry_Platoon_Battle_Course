
#include "script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	[
		"arifle_MXM_Black_F",
		"",
		"acc_pointer_IR",
		"optic_MRCO",
		["30Rnd_65x39_caseless_black_mag",30],
		[],
		"bipod_01_F_blk"
	],
	[],
	[
		"hgun_P07_blk_F",
		"",
		"",
		"",
		["16Rnd_9x21_Mag",16],
		[],
		""
	],
	[
		"U_B_CombatUniform_mcam",
		[
			["FirstAidKit",5]
		]
	],
	[
		"V_PlateCarrier1_rgr",
		[
			["30Rnd_65x39_caseless_black_mag",7,30],
			["16Rnd_9x21_Mag",3,16],
			["HandGrenade",2,1],
			["SmokeShell",4,1]
		]
	],
	[
		"B_AssaultPack_rgr",
		[
			["NVGoggles_INDEP",1]
		]
	],
	"H_HelmetB",
	"",
	[],
	[
		"ItemMap",
		"",
		"",
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
		_unit call tScripts_fnc_bMarksman;
	}
];

diag_log format ["tScripts Logging: %1 had the Marksman kit applied",name _unit]
