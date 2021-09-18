
params ["_object"];

missionNameSpace setVariable ["lane_1", true];
missionNameSpace setVariable ["lane_2", true];
missionNameSpace setVariable ["lane_3", true];
missionNameSpace setVariable ["lane_4", true];
missionNameSpace setVariable ["lane_5", true];
missionNameSpace setVariable ["lane_6", true];
missionNameSpace setVariable ["lane_7", true];
missionNameSpace setVariable ["lane_8", true];
missionNameSpace setVariable ["lane_9", true];
missionNameSpace setVariable ["lane_10", true];
missionNameSpace setVariable ["lane_11", true];
missionNameSpace setVariable ["lane_12", true];
missionNameSpace setVariable ["lane_13", true];
missionNameSpace setVariable ["lane_14", true];
missionNameSpace setVariable ["lane_15", true];
missionNameSpace setVariable ["lane_16", true];

offsets = [
	[0, 820],
	[71.46770905, 816.8796524],
	[142.3915057, 807.5423575],
	[212.231617, 792.0591776],
	[280.4565175, 770.547949],
	[346.5469746, 743.1723854],
	[410, 710.1408311],
	[470.3326778, 671.7046763],
	[527.0858399, 628.1564434],
	[579.8275606, 579.8275606],
	[628.1564434, 527.0858399],
	[671.7046763, 470.3326778],
	[710.1408311, 410],
	[743.1723854, 346.5469746],
	[770.547949, 280.4565175],
	[792.0591776, 212.231617],
	[807.5423575, 142.3915057],
	[816.8796524, 71.46770905],
	[820, 0],
	[816.8796524, -71.46770905],
	[807.5423575, -142.3915057],
	[792.0591776, -212.231617],
	[770.547949, -280.4565175],
	[743.1723854, -346.5469746],
	[710.1408311, -410],
	[671.7046763, -470.3326778],
	[628.1564434, -527.0858399],
	[579.8275606, -579.8275606],
	[527.0858399, -628.1564434],
	[470.3326778, -671.7046763],
	[410, -710.1408311],
	[346.5469746, -743.1723854],
	[280.4565175, -770.547949],
	[212.231617, -792.0591776],
	[142.3915057, -807.5423575],
	[71.46770905, -816.8796524],
	[0, -820],
	[-71.46770905, -816.8796524],
	[-142.3915057, -807.5423575],
	[-212.231617, -792.0591776],
	[-280.4565175, -770.547949],
	[-346.5469746, -743.1723854],
	[-410, -710.1408311],
	[-470.3326778, -671.7046763],
	[-527.0858399, -628.1564434],
	[-579.8275606, -579.8275606],
	[-628.1564434, -527.0858399],
	[-671.7046763, -470.3326778],
	[-710.1408311, -410],
	[-743.1723854, -346.5469746],
	[-770.547949, -280.4565175],
	[-792.0591776, -212.231617],
	[-807.5423575, -142.3915057],
	[-816.8796524, -71.46770905],
	[-820, 0],
	[-816.8796524, 71.46770905],
	[-807.5423575, 142.3915057],
	[-792.0591776, 212.231617],
	[-770.547949, 280.4565175],
	[-743.1723854, 346.5469746],
	[-710.1408311, 410],
	[-671.7046763, 470.3326778],
	[-628.1564434, 527.0858399],
	[-579.8275606, 579.8275606],
	[-527.0858399, 628.1564434],
	[-470.3326778, 671.7046763],
	[-410, 710.1408311],
	[-346.5469746, 743.1723854],
	[-280.4565175, 770.547949],
	[-212.231617, 792.0591776],
	[-142.3915057, 807.5423575],
	[-71.46770905, 816.8796524]
];

offsets373 = [
	[0, 1193],
	[103.9768011, 1188.460275],
	[207.162276, 1174.875649],
	[308.7711208, 1152.349511],
	[408.030031, 1121.053297],
	[504.1835863, 1081.22519],
	[596.5, 1033.168307],
	[684.2766886, 977.2483888],
	[766.8456184, 913.8910206],
	[843.57839, 843.57839],
	[913.8910206, 766.8456184],
	[977.2483888, 684.2766886],
	[1033.168307, 596.5],
	[1081.22519, 504.1835863],
	[1121.053297, 408.030031],
	[1152.349511, 308.7711208],
	[1174.875649, 207.162276],
	[1188.460275, 103.9768011],
	[1193, 0],
	[1188.460275, -103.9768011],
	[1174.875649, -207.162276],
	[1152.349511, -308.7711208],
	[1121.053297, -408.030031],
	[1081.22519, -504.1835863],
	[1033.168307, -596.5],
	[977.2483888, -684.2766886],
	[913.8910206, -766.8456184],
	[843.57839, -843.57839],
	[766.8456184, -913.8910206],
	[684.2766886, -977.2483888],
	[596.5, -1033.168307],
	[504.1835863, -1081.22519],
	[408.030031, -1121.053297],
	[308.7711208, -1152.349511],
	[207.162276, -1174.875649],
	[103.9768011, -1188.460275],
	[0, -1193],
	[-103.9768011, -1188.460275],
	[-207.162276, -1174.875649],
	[-308.7711208, -1152.349511],
	[-408.030031, -1121.053297],
	[-504.1835863, -1081.22519],
	[-596.5, -1033.168307],
	[-684.2766886, -977.2483888],
	[-766.8456184, -913.8910206],
	[-843.57839, -843.57839],
	[-913.8910206, -766.8456184],
	[-977.2483888, -684.2766886],
	[-1033.168307, -596.5],
	[-1081.22519, -504.1835863],
	[-1121.053297, -408.030031],
	[-1152.349511, -308.7711208],
	[-1174.875649, -207.162276],
	[-1188.460275, -103.9768011],
	[-1193, 0],
	[-1188.460275, 103.9768011],
	[-1174.875649, 207.162276],
	[-1152.349511, 308.7711208],
	[-1121.053297, 408.030031],
	[-1081.22519, 504.1835863],
	[-1033.168307, 596.5],
	[-977.2483888, 684.2766886],
	[-913.8910206, 766.8456184],
	[-843.57839, 843.57839],
	[-766.8456184, 913.8910206],
	[-684.2766886, 977.2483888],
	[-596.5, 1033.168307],
	[-504.1835863, 1081.22519],
	[-408.030031, 1121.053297],
	[-308.7711208, 1152.349511],
	[-207.162276, 1174.875649],
	[-103.9768011, 1188.460275]
];

_object addAction ["<t color='#C9FFC9'>Lane 1</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_1", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_1", true];
		_caller setVariable ["points", 0];
		[_caller, point_1] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets call BIS_fnc_selectRandom;
		private _lanePos = getPos point_1;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_1',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 2</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_2", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_2", true];
		_caller setVariable ["points", 0];
		[_caller, point_2] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets373 call BIS_fnc_selectRandom;
		private _lanePos = getPos point_2;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_2',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 3</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_3", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_3", true];
		_caller setVariable ["points", 0];
		[_caller, point_3] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets call BIS_fnc_selectRandom;
		private _lanePos = getPos point_3;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_3',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 4</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_4", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_4", true];
		_caller setVariable ["points", 0];
		[_caller, point_4] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets373 call BIS_fnc_selectRandom;
		private _lanePos = getPos point_4;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_4',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 5</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_5", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_5", true];
		_caller setVariable ["points", 0];
		[_caller, point_5] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets call BIS_fnc_selectRandom;
		private _lanePos = getPos point_5;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_5',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 6</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_6", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_6", true];
		_caller setVariable ["points", 0];
		[_caller, point_6] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets373 call BIS_fnc_selectRandom;
		private _lanePos = getPos point_6;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_6',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 7</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_7", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_7", true];
		_caller setVariable ["points", 0];
		[_caller, point_7] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets call BIS_fnc_selectRandom;
		private _lanePos = getPos point_7;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_7',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 8</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_8", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_8", true];
		_caller setVariable ["points", 0];
		[_caller, point_8] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets373 call BIS_fnc_selectRandom;
		private _lanePos = getPos point_8;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_8',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 9</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_9", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_9", true];
		_caller setVariable ["points", 0];
		[_caller, point_9] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets call BIS_fnc_selectRandom;
		private _lanePos = getPos point_9;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_9',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 10</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_10", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_10", true];
		_caller setVariable ["points", 0];
		[_caller, point_10] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets373 call BIS_fnc_selectRandom;
		private _lanePos = getPos point_10;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_10',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 11</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_11", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_11", true];
		_caller setVariable ["points", 0];
		[_caller, point_11] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets call BIS_fnc_selectRandom;
		private _lanePos = getPos point_11;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_11',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 12</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_12", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_12", true];
		_caller setVariable ["points", 0];
		[_caller, point_12] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets373 call BIS_fnc_selectRandom;
		private _lanePos = getPos point_12;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_12',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 13</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_13", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_13", true];
		_caller setVariable ["points", 0];
		[_caller, point_13] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets call BIS_fnc_selectRandom;
		private _lanePos = getPos point_13;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_13',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 14</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_14", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_14", true];
		_caller setVariable ["points", 0];
		[_caller, point_14] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets373 call BIS_fnc_selectRandom;
		private _lanePos = getPos point_14;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_14',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 15</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_15", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_15", true];
		_caller setVariable ["points", 0];
		[_caller, point_15] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets call BIS_fnc_selectRandom;
		private _lanePos = getPos point_15;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_15',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];

_object addAction ["<t color='#C9FFC9'>Lane 16</t>", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		[missionNameSpace, ["lane_16", false]] remoteExec ["setvariable", 0, true];
		_caller setVariable ["lane_16", true];
		_caller setVariable ["points", 0];
		[_caller, point_16] execVM "mScripts\laneHint.sqf";

		private _indexOffset = offsets373 call BIS_fnc_selectRandom;
		private _lanePos = getPos point_16;
		_caller setPos [
			_lanePos#0 + _indexOffset#0,
			_lanePos#1 + _indexOffset#1,
			0
		];
	},
	nil,		// arguments
	1.5,		// priority
	true,		// showWindow
	true,		// hideOnUse
	"",	// shortcut
	"(missionNamespace getVariable ['lane_16',true]);", 	// condition
	5,	// radius
	false,		// unconscious
	"",	// selection
	""	// memoryPoint
];
