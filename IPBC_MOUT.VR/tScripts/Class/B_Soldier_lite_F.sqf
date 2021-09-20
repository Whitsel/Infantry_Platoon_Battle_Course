
//Anti Tank Ammo Bearer

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["role", "inf"];

	player call FUNC(bAntiTankAmmoBearer);

	player addEventHandler ["Respawn","_this call tScripts_fnc_bAntiTankAmmoBearer"];

};

if (_state == "respawn") then {

	player call FUNC(antiTankAmmoBearer);

	player addEventHandler ["Respawn","_this call tScripts_fnc_bAntiTankAmmoBearer"];

};
