
//Automatic Rifleman

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["role", "inf"];

	player call FUNC(bAutomaticRifleman);

	player addEventHandler ["Respawn","_this call tScripts_fnc_bAutomaticRifleman"];

};

if (_state == "respawn") then {

	player call FUNC(automaticRifleman);

	player addEventHandler ["Respawn","_this call tScripts_fnc_bAutomaticRifleman"];

};
