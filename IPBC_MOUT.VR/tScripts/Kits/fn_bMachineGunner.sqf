
#include "script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	BLU_WEAP_SYS_RIFLE_MACHINEGUN,
	[],
	[],
	BLU_UNIFORM_CONTENTS,
	BLU_VEST_CONTENTS_MACHINEGUNNER,
	BLU_PACK_CONTENTS_MACHINEGUNNER,
	BLU_HELMET_LEADER,
	"",
	[],
	BLU_ITEMS
];

_unit removeAllEventHandlers "Respawn";

_unit addEventHandler [
	"Respawn",
	{
		params ["_unit", "_corpse"];
		_unit call tScripts_fnc_bMachineGunner;
	}
];

diag_log format ["tScripts Logging: %1 had the Machine Gunner kit applied",name _unit]
