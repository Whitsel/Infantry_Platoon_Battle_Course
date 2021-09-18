
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

diag_log format ["tScripts Logging: %1 had the Range Master kit applied",name _unit]
