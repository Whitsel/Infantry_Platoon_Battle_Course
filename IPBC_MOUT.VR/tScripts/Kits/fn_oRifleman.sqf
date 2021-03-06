
#include "script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	[
		"arifle_CTAR_blk_F",
		"",
		"acc_flashlight",
		"",
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

_unit removeAllEventHandlers "Respawn";

_unit addEventHandler [
	"Respawn",
	{
		params ["_unit", "_corpse"];
		_unit call tScripts_fnc_oRifleman;
	}
];

diag_log format ["tScripts Logging: %1 had the Rifleman kit applied", name _unit];
