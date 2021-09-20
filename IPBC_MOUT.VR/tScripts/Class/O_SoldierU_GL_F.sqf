
//OPFOR Grenadier

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["role", "opf"];

	player call FUNC(oGrenadier);

	player addEventHandler ["Respawn","_this call tScripts_fnc_oGrenadier"];

};

if (_state == "respawn") then {

	player call FUNC(oGrenadier);

	player addEventHandler ["Respawn","_this call tScripts_fnc_oGrenadier"];

};
