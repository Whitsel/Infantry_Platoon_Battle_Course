
//OPFOR Squad Leader

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["role", "opf"];

	player call FUNC(oTeamLeader);

};

if (_state == "respawn") then {

	player call FUNC(oTeamLeader);

};
