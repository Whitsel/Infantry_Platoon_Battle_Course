
#include "script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	BLU_WEAP_SYS_RIFLE_LEADER,
	[],
	[],
	BLU_UNIFORM_CONTENTS,
	BLU_VEST_CONTENTS_TEAMLEADER,
	BLU_PACK_CONTENTS_TEAMLEADER,
	BLU_HELMET_LEADER,
	"",
	BLU_BINO,
	BLU_ITEMS
];

_unit removeAllEventHandlers "Respawn";

_unit addEventHandler [
	"Respawn",
	{
		params ["_unit", "_corpse"];
		_unit call tScripts_fnc_bTeamLeader;
	}
];

diag_log format ["tScripts Logging: %1 had the Platoon/Squad/Team Leader kit applied",name _unit]
