
params ["_object"];

_object addAction ["<t color='#C9FFC9'>Claim Point</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setVariable ["points", 4];
		[_caller, point_0] execVM "mScripts\laneHint.sqf";
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(player getVariable ['lane_1',false]) && (3 == (player getVariable ['points', 0]))", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Grid Reminder</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[_caller, point_0] execVM "mScripts\laneHint.sqf";
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(player getVariable ['lane_1',false]) && (4 == (player getVariable ['points', 0]))", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Claim Point</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_caller setVariable ["points", 4];
		[_caller, point_0] execVM "mScripts\laneHint.sqf";
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(player getVariable ['lane_10',false]) && (3 == (player getVariable ['points', 0]))", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Grid Reminder</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[_caller, point_0] execVM "mScripts\laneHint.sqf";
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(player getVariable ['lane_10',false]) && (4 == (player getVariable ['points', 0]))", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];
