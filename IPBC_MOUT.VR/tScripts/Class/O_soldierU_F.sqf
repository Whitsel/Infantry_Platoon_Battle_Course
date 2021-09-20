
//OPFOR Rifleman

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["role", "opf"];

	player call FUNC(oRifleman);

	player addEventHandler ["Respawn","_this call tScripts_fnc_oRifleman"];

};

if (_state == "respawn") then {

	player call FUNC(oRifleman);

	player addEventHandler ["Respawn","_this call tScripts_fnc_oRifleman"];

};
