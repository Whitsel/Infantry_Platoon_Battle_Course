
// Range Master

#include "script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	player setVariable ["instructor", true]; //Holderever. Variables need cleaned up to use rangemaster

	SETVAR(player,EGVAR(COMPONENT,role),"rangemaster");

	player call FUNC(cRangeMaster);

	if (!isMultiplayer) then {
		player call FUNC(bRifleman);
		_singlePlayerGroup = createGroup west;
		[player] joinSilent _singlePlayerGroup;
		call FUNC(tools);
		call FUNC(pauseEx);
		call FUNC(timeSkip);
	} else {
		call FUNC(tools);
		call FUNC(pauseEx);
		call FUNC(wallHacks);
		call FUNC(timeSkip);
		call FUNC(3DIcons);
	};
};

if (_state == "respawn") then {

};
