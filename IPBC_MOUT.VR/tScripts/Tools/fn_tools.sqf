
#include "script_component.hpp";

params ["_unit"];

_unit addAction ["<t size = '0.5'> </t>", {}, nil, 0, true, false, "", "true", 0];

_unit addAction [
	iconEdenTreeExpand + " Open Range Master Tools",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		SETVAR(_caller,CGVAR(showTools),true);
		},
		nil,
		0,
		true,
		true,
		"",
		"!(_this getVariable ['tScripts_tools_showTools', false])",
		0
];

_unit addAction [
	iconEdenTreeCollapse + "Close Range Master Tools",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		SETVAR(_caller,CGVAR(showTools),false);
		},
		nil,
		0,
		true,
		true,
		"",
		"(_this getVariable ['tScripts_tools_showTools', false])",
		0
];
