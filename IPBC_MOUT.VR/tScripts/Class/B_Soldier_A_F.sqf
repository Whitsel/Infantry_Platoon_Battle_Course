
//Machinegun Ammmo Bearer

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["role", "inf"];

	player call FUNC(bMachinegunAmmoBearer);

};

if (_state == "respawn") then {

	player call FUNC(machinegunAmmoBearer);

};
