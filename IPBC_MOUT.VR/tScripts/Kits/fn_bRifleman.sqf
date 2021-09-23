
#include "script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	BLU_WEAP_SYS_RIFLE_TROOPER,
	[],
	BLU_WEAP_SYS_LAT,
	BLU_UNIFORM_CONTENTS,
	BLU_VEST_CONTENTS_RIFLEMAN,
	BLU_PACK_CONTENTS_RIFLEMAN,
	BLU_HELMET_TROOPER,
	"",
	[],
	BLU_ITEMS
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
