
#include "script_component.hpp";

params [""];

player addAction ["<t size = '0.5'> </t>", {}, nil, 0, true, false, "", "true", 0];

player addAction [iconEdenTreeExpand + " Open Range Master Tools", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		player setVariable ["showTools", true];
		},
		nil,
		0,
		true,
		true,
		"",
		"true",
		0
];

player addAction [iconEdenTreeExpand + " Open Range Master Tools", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		player setVariable ["showTools", true];
		},
		nil,
		0,
		true,
		true,
		"",
		"!(player getVariable ['showTools', false])",
		0
];

player addAction [iconEdenTreeCollapse + "Close Range Master Tools", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		player setVariable ["showTools", false];
		},
		nil,
		0,
		true,
		true,
		"",
		"(player getVariable ['showTools', false])",
		0
];
