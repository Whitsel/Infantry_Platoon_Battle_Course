
//OPFOR Squad Leader

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["role", "opf"];

	player setUnitLoadout [
		[
			"arifle_CTAR_blk_F",
			"",
			"acc_flashlight",
			"optic_Arco_blk_F",
			["30Rnd_580x42_Mag_F",30],
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
				["30Rnd_580x42_Mag_F",5,30],
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

};

if (_state == "respawn") then {

	player setUnitLoadout [
		[
			"arifle_CTAR_blk_F",
			"",
			"acc_flashlight",
			"optic_Arco_blk_F",
			["30Rnd_580x42_Mag_F",30],
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
				["30Rnd_580x42_Mag_F",5,30],
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

};
