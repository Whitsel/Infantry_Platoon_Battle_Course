
//OPFOR Grenadier

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["role", "opf"];

	player call FUNC(oGrenadier);

};

if (_state == "respawn") then {

	player call FUNC(oGrenadier);

};
