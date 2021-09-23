
#include "script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	[
		BLU_PRIMARY_RIFLE,
		"",
		BLU_RAIL_RIFLE_LASER,
		BLU_OPTIC_CCO,
		[BLU_MAGAZINES_RIFLE,30],
		[],
		""
	],
	[],
	BLU_LAUNCHER_LAT,
	[
		BLU_UNIFORM,
		BLU_UNIFORM_CONTENTS_TROOPER
	],
	[
		BLU_VEST_RIFLEMAN,
		BLU_VEST_CONTENTS_RIFLEMAN
	],
	[
		BLU_PACK_ASSAULTPACK,
		BLU_PACK_CONTENTS_RIFLEMAN
	],
	BLU_HELMET_TROOPER,
	"",
	[],
	BLU_ITEMS_TROOPER
];

_unit removeAllEventHandlers "Respawn";

_unit addEventHandler [
	"Respawn",
	{
		params ["_unit", "_corpse"];
		_unit call tScripts_fnc_bRifleman;
	}
];

diag_log format ["tScripts Logging: %1 had the Rifleman kit applied",name _unit]
