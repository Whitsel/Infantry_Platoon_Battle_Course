
// Range Master

#include "script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["instructor", true];

	SETVAR(player,EGVAR(COMPONENT,role),"rangemaster");

	player call FUNC(cRangeMaster);

	call FUNC(tools);
	call FUNC(pauseEx);
	call FUNC(wallHacks);
	call FUNC(timeSkip);

	call FUNC(3DIcons);

};

if (_state == "respawn") then {

	call FUNC(tools);
	call FUNC(pauseEx);
	call FUNC(timeSkip);
	call FUNC(resourcesCadre);

	call FUNC(wallHacks);

	player call FUNC(rangeMaster);

};
