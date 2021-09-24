
//OPFOR Team Leader

#include "script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	SETVAR(player,CGVAR(role),"opfor");

	player call FUNC(oTeamLeader);

};

if (_state == "respawn") then {

};
