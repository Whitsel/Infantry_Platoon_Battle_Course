
#include "..\script_component.hpp";

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
			["200Rnd_65x39_cased_Box_Red",2,200],
			["SmokeShellBlue",2,1],
			["Chemlight_blue",2,1],
			["B_IR_Grenade",2,1]
		]
	],
	"H_HelmetSpecB",
	"",
	[
		"Rangefinder",
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

diag_log format ["tScripts Logging: %1 had the Assistant Machine Gunner kit applied",name _unit]
