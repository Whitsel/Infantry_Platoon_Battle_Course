
#include "..\script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	[
		"arifle_MX_SW_Black_F",
		"",
		"acc_pointer_IR",
		"optic_Holosight_blk_F",
		["100Rnd_65x39_caseless_black_mag",100],
		[],
		"bipod_01_F_blk"
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
		"V_PlateCarrier2_rgr",
		[
			["100Rnd_65x39_caseless_black_mag",4,100],
			["HandGrenade",2,1],
			["SmokeShell",4,1]
		]
	],
	[
		"B_AssaultPack_rgr",
		[
			["NVGoggles_INDEP",4]
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

diag_log format ["tScripts Logging: %1 had the Automatic Rifleman kit applied",name _unit]
