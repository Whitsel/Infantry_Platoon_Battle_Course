
//Mechanized Crewman

#include "script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	SETVAR(player,CGVAR(role),"mechanized");

	player call FUNC(bCrewman);

};

if (_state == "respawn") then {

};
