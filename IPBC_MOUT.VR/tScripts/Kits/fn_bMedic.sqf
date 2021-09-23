
#include "script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	BLU_WEAP_SYS_RIFLE_LEADER,
	[],
	[],
	BLU_UNIFORM_CONTENTS_LEADER,
	BLU_VEST_CONTENTS_MEDIC,
	BLU_PACK_CONTENTS_MEDIC,
	BLU_HELMET_LEADER,
	"",
	[],
	BLU_ITEMS_LEADER
];

_unit removeAllEventHandlers "Respawn";

_unit addEventHandler [
	"Respawn",
	{
		params ["_unit", "_corpse"];
		_unit call tScripts_fnc_bMedic;
	}
];

diag_log format ["tScripts Logging: %1 had the Medic/CLS kit applied",name _unit]
