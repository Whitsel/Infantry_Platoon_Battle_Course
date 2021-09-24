
#include "script_component.hpp";

params ["_vehicle"];

_vehicle addAction [
	colorHexGuer + "<img size='1' image='\a3\ui_f\data\IGUI\Cfg\Actions\unloadVehicle_ca'/> Raise",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_pos = getPos _target;
		_target setPos [_pos#0, _pos#1, 0.1];
	},
	nil,
	6,
	true,
	true,
	"",
	"(getPos _target)#2 < -0.25",
	5
];

diag_log format ["tScripts Logging: Lift Vehicle has been applied to %1", _vehicle];
