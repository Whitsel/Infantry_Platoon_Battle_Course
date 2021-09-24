
#include "script_component.hpp";

params ["_unit"];

_unit addAction [
	"  <t color='#999900'><img size='1' image='\a3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\clear_ca'/></t> Set Time: Dawn",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_timeToSkipTo = 6;
		[(_timeToSkipTo - daytime + 24 ) % 24] remoteExec ["skipTime", 0];
		[0,0] remoteExec ["setFog", 0];
		format ["%1 Set time to Dawn", name _caller] remoteExec ["hint", 0];
	},
	nil,
	0,
	true,
	false,
	"",
	"(dayTime < 6) && (_this getVariable ['tScripts_tools_showTools', false])"
];

_unit addAction [
	"  <t color='#ffff00'><img size='1' image='\a3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\clear_ca'/></t> Set Time: Noon",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_timeToSkipTo = 12;
		[(_timeToSkipTo - daytime + 24 ) % 24] remoteExec ["skipTime", 0];
		[0,0] remoteExec ["setFog", 0];
		format ["%1 Set time to Noon", name _caller] remoteExec ["hint", 0];
	},
	nil,
	0,
	true,
	false,
	"",
	"((dayTime < 12) && (dayTime > 6)) && (_this getVariable ['tScripts_tools_showTools', false])"
];

_unit addAction [
	"  <t color='#999999'><img size='1' image='\a3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\overcast_ca'/></t> Set Time: Dusk",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_timeToSkipTo = 18;
		[(_timeToSkipTo - daytime + 24 ) % 24] remoteExec ["skipTime", 0];
		[0,0] remoteExec ["setFog", 0];
		format ["%1 Set time to Dusk", name _caller] remoteExec ["hint", 0];
	},
	nil,
	0,
	true,
	false,
	"",
	"(12 < dayTime) && (18 > dayTime) && (_this getVariable ['tScripts_tools_showTools', false])"
];

_unit addAction [
	"  <t color='#000000'><img size='1' image='\a3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\overcast_ca'/></t> Set Time: Midnight",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_timeToSkipTo = 0;
		[(_timeToSkipTo - daytime + 24 ) % 24] remoteExec ["skipTime", 0];
		[0,0] remoteExec ["setFog", 0];
		format ["%1 Set time to Midnight", name _caller] remoteExec ["hint", 0];
	},
	nil,
	0,
	true,
	false,
	"",
	"((dayTime < 24) && (dayTime > 18)) && (_this getVariable ['tScripts_tools_showTools', false])"
];
