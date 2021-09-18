
#include "..\script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	[
		"arifle_MX_GL_Black_F",
		"",
		"acc_pointer_IR",
		"optic_Holosight_blk_F",
		["30Rnd_65x39_caseless_black_mag",30],
		["1Rnd_HE_Grenade_shell",1],
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
		"V_PlateCarrierGL_rgr",
		[
			["30Rnd_65x39_caseless_black_mag",7,30],
			["HandGrenade",4,1],
			["SmokeShell",4,1]
		]
	],
	[
		"B_AssaultPack_rgr",
		[
			["NVGoggles_INDEP",1],
			["1Rnd_HE_Grenade_shell",9,1],
			["1Rnd_SmokeRed_Grenade_shell",4,1],
			["UGL_FlareCIR_F",4,1]
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

diag_log format ["tScripts Logging: %1 had the Grenadier kit applied",name _unit]
