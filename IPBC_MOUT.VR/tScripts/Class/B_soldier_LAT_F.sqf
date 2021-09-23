
//Anti Tank Gunner

#include "script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	SETVAR(player,EGVAR(COMPONENT,role),"infantry");

	player call FUNC(bAntiTankGunner);

};

if (_state == "respawn") then {

	player call FUNC(bAntiTankGunner);

};
