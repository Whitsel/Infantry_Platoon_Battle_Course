
#include "..\script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	[
		"LMG_Mk200_black_F",
		"",
		"acc_pointer_IR",
		"optic_Hamr",
		["200Rnd_65x39_cased_Box_Red",200],
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
		"V_PlateCarrier2_rgr",
		[
			["NVGoggles_INDEP",1],
			["200Rnd_65x39_cased_Box_Red",1,200],
			["16Rnd_9x21_Mag",3,16],
			["HandGrenade",2,1],
			["SmokeShell",4,1]
		]
	],
	[
		"B_AssaultPack_rgr",
		[
			["200Rnd_65x39_cased_Box_Red",3,200]
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

diag_log format ["tScripts Logging: %1 had the Machine Gunner kit applied",name _unit]
