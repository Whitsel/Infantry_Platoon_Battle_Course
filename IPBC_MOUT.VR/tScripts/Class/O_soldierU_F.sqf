
//OPFOR Rifleman

#include "script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	SETVAR(player,GVAR(role),"opfor");

	player call FUNC(oRifleman);

};

if (_state == "respawn") then {

	player call FUNC(oRifleman);

};
