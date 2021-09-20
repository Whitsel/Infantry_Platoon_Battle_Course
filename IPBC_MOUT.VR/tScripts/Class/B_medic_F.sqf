
//Platoon Medic & Combat Life Saver

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["role", "medic"];

	player call FUNC(bMedic);

};

if (_state == "respawn") then {

	player call FUNC(medic);

};
