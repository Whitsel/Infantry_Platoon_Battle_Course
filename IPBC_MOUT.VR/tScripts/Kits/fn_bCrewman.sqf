
#include "..\script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	[
		"SMG_02_F",
		"",
		"acc_pointer_IR",
		"optic_Holosight_blk_F",
		["30Rnd_9x21_Mag_SMG_02",30],
		[],
		""
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
			["30Rnd_9x21_Mag_SMG_02",7,30],
			["16Rnd_9x21_Mag",3,16],
			["HandGrenade",2,1],
			["SmokeShell",4,1],
			["B_IR_Grenade",2,1]
		]
	],
	[
		"B_AssaultPack_rgr",
		[
			["NVGoggles_INDEP",1],
			["ToolKit",1],
			["MineDetector",1],
			["SLAMDirectionalMine_Wire_Mag",2,1]
		]
	],
	"H_HelmetCrew_B",
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

diag_log format ["tScripts Logging: %1 had the Crewman kit applied",name _unit]
