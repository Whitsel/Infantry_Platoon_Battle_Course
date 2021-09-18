
#include "..\script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	[
		"arifle_MX_Black_F",
		"",
		"acc_pointer_IR",
		"optic_Holosight_blk_F",
		["30Rnd_65x39_caseless_black_mag",30],
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
		"V_PlateCarrier2_rgr",
		[
			["NVGoggles_INDEP",1],
			["30Rnd_65x39_caseless_black_mag",7,30],
			["HandGrenade",2,1],
			["SmokeShell",4,1]
		]
	],
	[
		"B_AssaultPack_rgr",
		[
			["NLAW_F",2,1]
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

diag_log format ["tScripts Logging: %1 had the Anti-Tank Ammo Bearer kit applied",name _unit]
