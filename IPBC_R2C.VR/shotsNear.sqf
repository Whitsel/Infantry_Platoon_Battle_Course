
#include "script_component.hpp";

{
	_x addEventHandler [
		"Suppressed",
		{
			params ["_unit", "_distance", "_shooter", "_instigator", "_ammoObject", "_ammoClassName", "_ammoConfig"];
			if ((side _unit != side _shooter) && (_shooter distance _unit < 500)) then {
				_unit setVariable ["Suppressed", (_unit getVariable ["Suppressed", 0]) + 1];
			}
		}
	]
}
forEach allUnits;

addMissionEventHandler [
	"Draw3D",
	{
		{
			drawIcon3D [
				"",
				[0.494, 0.086, 0.086, 0.5],
				[
					getPosATL _x#0,
					getPosATL _x#1,
					getPosATL _x#2 +3
				],
				1,
				1,
				0,
				format ["%1",(_x getVariable ["Suppressed", 0])]
			];
		} foreach allUnits;
	}
];
