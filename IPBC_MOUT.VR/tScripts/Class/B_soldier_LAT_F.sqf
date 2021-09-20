
//Anti Tank Gunner

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["role", "inf"];

	player call FUNC(bAntiTankGunner);

	player addEventHandler ["Respawn","_this call tScripts_fnc_bAntiTankGunner"];

};

if (_state == "respawn") then {

	player call FUNC(antiTankGunner);

	player addEventHandler ["Respawn","_this call tScripts_fnc_bAntiTankGunner"];

};
