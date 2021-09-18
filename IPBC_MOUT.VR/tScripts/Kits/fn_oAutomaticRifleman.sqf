
#include "..\script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	[
		"arifle_CTARS_blk_F",
		"",
		"acc_flashlight",
		"",
		["100Rnd_580x42_Mag_F",100],
		[],
		""
	],
	[],
	[],
	[
		"U_O_CombatUniform_oucamo",
		[
			["FirstAidKit",5]
		]
	],
	[
		"V_HarnessO_gry",
		[
			["100Rnd_580x42_Mag_F",1,100],
			["MiniGrenade",2,1]
		]
	],
	[],
	"",
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

diag_log format ["tScripts Logging: %1 had the Opfor Automatic Rifleman kit applied",name _unit]
