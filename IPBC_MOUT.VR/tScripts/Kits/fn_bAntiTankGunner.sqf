
#include "script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	BLU_WEAP_SYS_RIFLE_TROOPER,
	[],
	BLU_WEAP_SYS_HAT,
	BLU_UNIFORM_CONTENTS_TROOPER,
	BLU_VEST_CONTENTS_ATAMMOBEARER,
	BLU_PACK_CONTENTS_ATAMMOBEARER,
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
		_unit call tScripts_fnc_bAntiTankGunner;
	}
];

diag_log format ["tScripts Logging: %1 had the Anti-Tank Gunner kit applied",name _unit]
