
//Squad Leader

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["role", "inf"];

	player call FUNC(bTeamLeader);

	player addEventHandler ["Respawn","_this call tScripts_fnc_bTeamLeader"];

};

if (_state == "respawn") then {

	player call FUNC(teamLeader);

	player addEventHandler ["Respawn","_this call tScripts_fnc_bTeamLeader"];

};
