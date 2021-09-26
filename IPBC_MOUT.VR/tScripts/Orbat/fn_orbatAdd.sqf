
#include "script_component.hpp";

params ["_object", ["_orbatName","Unnamed Orbat"], ["_orbatDesc", "Empty Description"], ["_orbatOverview","Data\7Cav\7cav_logo.paa"]];

SETVAR(_object,CGVAR(orbatName),_orbatName);
SETVAR(_object,CGVAR(orbatDesc),_orbatDesc);
SETVAR(_object,CGVAR(orbatOverview),_orbatOverview);

if (!isNil "orbatMissions") then
{
	orbatMissions pushBack _object;
} else {
	orbatMissions = [_object];
};

_object addAction [
	"Select MOUT Lane",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		[_target, _caller] call FUNC(orbatOpen);
	},
	nil,
	1.5,
	true,
	true,
	"",
	"true",
	10
];
