
#include "script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	BLU_WEAP_SYS_RIFLE_COMPACT,
	[],
	[],
	BLU_UNIFORM_CONTENTS_TROOPER,
	BLU_VEST_CONTENTS_CREWMAN,
	BLU_PACK_CONTENTS_CREWMAN,
	BLU_HELMET_CREWMAN,
	"",
	[],
	BLU_ITEMS_TROOPER
];

_unit removeAllEventHandlers "Respawn";

_unit addEventHandler [
	"Respawn",
	{
		params ["_unit", "_corpse"];
		_unit call tScripts_fnc_bCrewman;
	}
];

diag_log format ["tScripts Logging: %1 had the Crewman kit applied",name _unit]
