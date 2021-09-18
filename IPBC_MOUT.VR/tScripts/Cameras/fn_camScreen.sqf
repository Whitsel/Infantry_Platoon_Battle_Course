
#include "..\script_component.hpp";

params ["_screen", "_controller", "_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];

_screen setObjectTextureGlobal [0, format["#(argb,512,512,1)r2t(%1,1)", _rtt_0]];
_controller setObjectTextureGlobal [1, format["#(argb,512,512,1)r2t(%1,1)", _rtt_1]];
_controller setObjectTextureGlobal [2, format["#(argb,512,512,1)r2t(%1,1)", _rtt_2]];
_controller setObjectTextureGlobal [3, format["#(argb,512,512,1)r2t(%1,1)", _rtt_3]];

[_screen, ["display", 0]] remoteExec ["setvariable", 0, true];

_screen addAction [format ["<img image='Data\7Cav_Logo.paa' /> 7th Cavalry Camera Controller"], {}, [], 1.5, true, true, "", "true", 5];

_screen addAction [
	"  Display Overhead Camera",
	{
		params ["_target", "_caller", "_actionId", "_args"];
		_args params ["_screen", "_controller", "_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		_screen setObjectTextureGlobal [0, format["#(argb,512,512,1)r2t(%1,1)", _rtt_0]];
		_controller setObjectTextureGlobal [1, format["#(argb,512,512,1)r2t(%1,1)", _rtt_1]];
		_controller setObjectTextureGlobal [2, format["#(argb,512,512,1)r2t(%1,1)", _rtt_2]];
		_controller setObjectTextureGlobal [3, format["#(argb,512,512,1)r2t(%1,1)", _rtt_3]];
		[_target, ["display", 0]] remoteExec ["setvariable", 0, true];
	},
	[_screen, _controller, _rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
	true,
	true,
	"",
	"!((_target getVariable ['display', 0]) == 0)",
	5
];

_screen addAction [
	"  Display Front Door Camera",
	{
		params ["_target", "_caller", "_actionId", "_args"];
		_args params ["_screen", "_controller", "_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		_screen setObjectTextureGlobal [0, format["#(argb,512,512,1)r2t(%1,1)", _rtt_1]];
		_controller setObjectTextureGlobal [1, format["#(argb,512,512,1)r2t(%1,1)", _rtt_0]];
		_controller setObjectTextureGlobal [2, format["#(argb,512,512,1)r2t(%1,1)", _rtt_2]];
		_controller setObjectTextureGlobal [3, format["#(argb,512,512,1)r2t(%1,1)", _rtt_3]];
		[_target, ["display", 1]] remoteExec ["setvariable", 0, true];
	},
	[_screen, _controller, _rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
	true,
	true,
	"",
	"!((_target getVariable ['display', 0]) == 1)",
	5
];

_screen addAction [
	"  Display Over Door Camera",
	{
		params ["_target", "_caller", "_actionId", "_args"];
		_args params ["_screen", "_controller", "_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		_screen setObjectTextureGlobal [0, format["#(argb,512,512,1)r2t(%1,1)", _rtt_2]];
		_controller setObjectTextureGlobal [1, format["#(argb,512,512,1)r2t(%1,1)", _rtt_0]];
		_controller setObjectTextureGlobal [2, format["#(argb,512,512,1)r2t(%1,1)", _rtt_1]];
		_controller setObjectTextureGlobal [3, format["#(argb,512,512,1)r2t(%1,1)", _rtt_3]];
		[_target, ["display", 2]] remoteExec ["setvariable", 0, true];
	},
	[_screen, _controller, _rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
	true,
	true,
	"",
	"!((_target getVariable ['display', 0]) == 2)",
	5
];

_screen addAction [
	"  Display Helmet Camera",
	{
		params ["_target", "_caller", "_actionId", "_args"];
		_args params ["_screen", "_controller", "_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		_screen setObjectTextureGlobal [0, format["#(argb,512,512,1)r2t(%1,1)", _rtt_3]];
		_controller setObjectTextureGlobal [1, format["#(argb,512,512,1)r2t(%1,1)", _rtt_0]];
		_controller setObjectTextureGlobal [2, format["#(argb,512,512,1)r2t(%1,1)", _rtt_1]];
		_controller setObjectTextureGlobal [3, format["#(argb,512,512,1)r2t(%1,1)", _rtt_2]];
		[_target, ["display", 3]] remoteExec ["setvariable", 0, true];
	},
	[_screen, _controller, _rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
	true,
	true,
	"",
	"!((_target getVariable ['display', 0]) == 3)",
	5
];

_screen addAction [
	"---",
	{},
	nil,
	1.5,
	true,
	true,
	"",
	"true",
	5
];

_screen addAction [
	"  Daylight Vision",
	{
		params ["_target", "_caller", "_actionId", "_args"];
		_args params ["_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		{_x setPiPEffect [0]} forEach _args;
		[_target, ["vision", 0]] remoteExec ["setvariable", 0, true];
	},
	[_rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
	true,
	true,
	"",
	"!((_target getVariable ['vision', 0]) == 0)",
	5
];

[_screen, ["vision", 0]] remoteExec ["setvariable", 0, true];

_screen addAction [
	"  Night Vision",
	{
		params ["_target", "_caller", "_actionId", "_args"];
		_args params ["_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		{_x setPiPEffect [1]} forEach _args;
		[_target, ["vision", 1]] remoteExec ["setvariable", 0, true];
	},
	[_rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
	true,
	true,
	"",
	"!((_target getVariable ['vision', 0]) == 1)",
	5
];

_screen addAction [
	"  Thermal Vision",
	{
		params ["_target", "_caller", "_actionId", "_args"];
		_args params ["_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		{_x setPiPEffect [2]} forEach _args;
		[_target, ["vision", 2]] remoteExec ["setvariable", 0, true];
	},
	[_rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
	true,
	true,
	"",
	"!((_target getVariable ['vision', 0]) == 2)",
	5
];

_screen addAction [
	"---",
	{},
	nil,
	1.5,
	true,
	true,
	"",
	"true",
	5
];

_screen addAction [
	"  Attach Helmet Cam",
	{
		params ["_target", "_caller", "_actionId", "_args"];
		camera_3 attachTo [_caller, [0.18, 0, 0.2], "Head"];
		cam_3 hideObjectGlobal true;
		[_target, ["helmetCam", true]] remoteExec ["setvariable", 0, true];
	},
	_screen,
	1.5,
	true,
	true,
	"",
	"!(_target getVariable ['helmetCam', false])",
	5
];

_screen addAction [
	"  Return Helmet Cam",
	{
		params ["_target", "_caller", "_actionId", "_args"];
		camera_3 attachTo [cam_3 ,[0, 0, 0]];
		cam_3 hideObjectGlobal false;
		[_target, ["helmetCam", false]] remoteExec ["setvariable", 0, true];
	},
	_screen,
	1.5,
	true,
	true,
	"",
	"(_target getVariable ['helmetCam', false])",
	5
];

[_screen, ["helmetCam", false]] remoteExec ["setvariable", 0, true];


diag_log format ["tScripts Logging: Camera screen controls initialized for %1", _screen]
