
//Grenadier

#include "script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	SETVAR(player,GVAR(role),"infantry");

	player call FUNC(bGrenadier);

};

if (_state == "respawn") then {

	player call FUNC(grenadier);

};
