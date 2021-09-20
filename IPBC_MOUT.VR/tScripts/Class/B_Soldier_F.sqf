
//Rifleman

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["role", "inf"];

	player call FUNC(bRifleman);

	player addEventHandler ["Respawn","_this call tScripts_fnc_bRifleman"];

};

if (_state == "respawn") then {

	player call FUNC(rifleman);

	player addEventHandler ["Respawn","_this call tScripts_fnc_bRifleman"];

};
