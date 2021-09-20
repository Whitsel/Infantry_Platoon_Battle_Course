
#include "..\script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	[
		"arifle_CTAR_GL_blk_F",
		"",
		"acc_flashlight",
		"",
		["30Rnd_580x42_Mag_F",30],
		["1Rnd_HE_Grenade_shell",1],
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
		"V_HarnessOGL_gry",
		[
			["30Rnd_580x42_Mag_F",5,30],
			["1Rnd_HE_Grenade_shell",3,1],
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

_unit removeAllEventHandlers "Respawn";

_unit addEventHandler [
	"Respawn",
	{
		params ["_unit", "_corpse"];
		_unit call tScripts_fnc_oGrenadier;
	}
];

diag_log format ["tScripts Logging: %1 had the Grenadier kit applied",name _unit]
