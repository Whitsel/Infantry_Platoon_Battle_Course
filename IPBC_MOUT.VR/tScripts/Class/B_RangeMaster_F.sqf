
// Range Master

#include "script_component.hpp";

private _state = param [0, "", [""]];

if (_state == "init") then {

	SETVAR(player,CGVAR(instructor),true);
	SETVAR(player,CGVAR(role),"rangemaster");

	player call FUNC(cRangeMaster);

	private _westGroup = createGroup west;
	_westGroup setGroupId ["RANGE MASTER"];
	[player] joinSilent _westGroup;

	if (!isMultiplayer) then {
		player call FUNC(bRifleman);
		player call FUNC(tools);
		player call FUNC(pauseEx);
		player call FUNC(timeSkip);
	} else {
		player call FUNC(tools);
		player call FUNC(pauseEx);
		player call FUNC(wallHacks);
		player call FUNC(timeSkip);
		call FUNC(3DIcons);
	};
};

if (_state == "respawn") then {

};
