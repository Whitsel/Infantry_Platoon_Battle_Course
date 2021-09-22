
// Combat Cameraman

#include "script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	SETVAR(player,EGVAR(COMPONENT,role),"civilian");

};

if (_state == "respawn") then {

};
