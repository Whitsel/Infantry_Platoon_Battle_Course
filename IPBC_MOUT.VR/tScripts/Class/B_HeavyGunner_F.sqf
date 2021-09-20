
//Machinegunner

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["role", "inf"];

	player call FUNC(bMachineGunner);

	player addEventHandler ["Respawn","_this call tScripts_fnc_bMachineGunner"];

};

if (_state == "respawn") then {

	player call FUNC(machineGunner);

	player addEventHandler ["Respawn","_this call tScripts_fnc_bMachineGunner"];

};
