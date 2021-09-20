
// Range Master

#include "..\script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["instructor", true];

	player setVariable ["role", "rangeMaster"];

	player call FUNC(cRangeMaster);

	player addEventHandler ["Respawn","_this call tScripts_fnc_cRangeMaster"];

	[] call FUNC(tools);
	[] call FUNC(pauseEx);
	[] call FUNC(wallHacks);
	[] call FUNC(timeSkip);

	[] call FUNC(3DIcons);

};

if (_state == "respawn") then {

	[] call FUNC(tools);
	[] call FUNC(pauseEx);
	[] call FUNC(timeSkip);
	[] call FUNC(resourcesCadre);

	[] call FUNC(wallHacks);

	player call FUNC(rangeMaster);

	player addEventHandler ["Respawn","_this call tScripts_fnc_cRangeMaster"];

};
