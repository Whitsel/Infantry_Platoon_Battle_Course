
#include "..\script_component.hpp";

params ["_unit"];

waitUntil {!isNull _unit};

_unit setUnitLoadout [
	[],
	[],
	[],
	[
		"U_Rangemaster",
		[]
	],
	[],
	[],
	"H_Cap_headphones",
	"",
	[],
	[
		"ItemMap",
		"ItemGPS",
		"ItemRadio",
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
		_unit call tScripts_fnc_cRangeMaster;
	}
];

diag_log format ["tScripts Logging: %1 had the Range Master kit applied",name _unit]
