
//OPFOR Team Leader

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["role", "opf"];

	player call FUNC(oTeamLeader);

	player addEventHandler ["Respawn","_this call tScripts_fnc_oTeamLeader"];

};

if (_state == "respawn") then {

	player call FUNC(oTeamLeader);

	player addEventHandler ["Respawn","_this call tScripts_fnc_oTeamLeader"];

};
