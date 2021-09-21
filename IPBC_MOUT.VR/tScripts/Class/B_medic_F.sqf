
//Platoon Medic & Combat Life Saver

#include "script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	SETVAR(player,GVAR(role),"infantry");

	player call FUNC(bMedic);

};

if (_state == "respawn") then {

	player call FUNC(medic);

};
