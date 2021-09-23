
#include "script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	BLU_WEAP_SYS_RIFLE_AUTOMATIC,
	[],
	[],
	BLU_UNIFORM_CONTENTS_TROOPER,
	BLU_VEST_CONTENTS_AUTOMATICRIFLEMAN,
	BLU_PACK_CONTENTS_AUTOMATICRIFLEMAN,
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
		_unit call tScripts_fnc_bAutomaticRifleman;
	}
];

diag_log format ["tScripts Logging: %1 had the Automatic Rifleman kit applied",name _unit]
