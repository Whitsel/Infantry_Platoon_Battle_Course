
#include "script_component.hpp";

/*
 * Author: Whitsel
 * Adds camera controls to a display, as well as setting the Render to Texture surfaces via scroll wheel actions
 * Intneded for use with the Rugged Large Screen ("Land_TripodScreen_01_large_F") and Rugged Multi-Screen Computer ("Land_MultiScreenComputer_01_olive_F")
 *
 * Arguments:
 * 0: Screen Controller <OBJECT>
 * 1: Room Controller <OBJECT>
 * 2: Render To Texture names <ARRAY> <STRINGS>
 *
 * Return Value:
 * addAction IDs <SCALAR>
 *
 * Example:
 * [this, controller, ["rtt_simple_0", "rtt_simple_1", "rtt_simple_2", "rtt_simple_3"]] call tScripts_fnc_camera_Controller;
 *
 * Public: [No]
 */

params ["_screen", "_controller", "_rtt"];
_rtt params ["_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];

_screen addAction [format ["<img image='Data\7Cav_Logo.paa' /> 7th Cavalry Camera Controller"], {}, [], 1.5, true, false, "", "true", 5];

_screen addAction ["<t size = '0.5'> </t>", {}, nil, 1.5, true, false, "", "true", 5];

_screen addAction [
	"  " + colorHexGuer + iconCameraOld + "</t> Turn on camera displays",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments params ["_screen", "_controller", "_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		_screen setObjectTextureGlobal [0, format["#(argb,512,512,1)r2t(%1,1)", _rtt_0]];
		_controller setObjectTextureGlobal [1, format["#(argb,512,512,1)r2t(%1,1)", _rtt_1]];
		_controller setObjectTextureGlobal [2, format["#(argb,512,512,1)r2t(%1,1)", _rtt_2]];
		_controller setObjectTextureGlobal [3, format["#(argb,512,512,1)r2t(%1,1)", _rtt_3]];
		[_target, ["display", 0]] remoteExec ["setvariable", 0, true];
		[_target, ["turnedOn", true]] remoteExec ["setvariable", 0, true];
	},
	[_screen, _controller, _rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
	true,
	false,
	"",
	"!(_target getVariable ['turnedOn', false])",
	5
];

_screen addAction [
	"  " + colorHexEast + iconCameraOld + "</t> Turn off camera displays",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments params ["_screen", "_controller", "_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		_screen setObjectTextureGlobal [0, format["#(argb,8,8,3)color(0,0,0,0.0,co)", _rtt_0]];
		_controller setObjectTextureGlobal [1, format["#(argb,8,8,3)color(0,0,0,0.0,co)", _rtt_1]];
		_controller setObjectTextureGlobal [2, format["#(argb,8,8,3)color(0,0,0,0.0,co)", _rtt_2]];
		_controller setObjectTextureGlobal [3, format["#(argb,8,8,3)color(0,0,0,0.0,co)", _rtt_3]];
		[_target, ["turnedOn", false]] remoteExec ["setvariable", 0, true];
	},
	[_screen, _controller, _rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
	true,
	false,
	"",
	"(_target getVariable ['turnedOn', false])",
	5
];

_screen addAction ["<t size = '0.5'> </t>", {}, nil, 1.5, true, false, "", "(_target getVariable ['turnedOn', false])", 5];

_screen addAction [
	"  " + iconCamera + " Display Overhead Camera",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments params ["_screen", "_controller", "_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		_screen setObjectTextureGlobal [0, format["#(argb,512,512,1)r2t(%1,1)", _rtt_0]];
		_controller setObjectTextureGlobal [1, format["#(argb,512,512,1)r2t(%1,1)", _rtt_1]];
		_controller setObjectTextureGlobal [2, format["#(argb,512,512,1)r2t(%1,1)", _rtt_2]];
		_controller setObjectTextureGlobal [3, format["#(argb,512,512,1)r2t(%1,1)", _rtt_3]];
		[_target, ["display", 0]] remoteExec ["setvariable", 0, true];
	},
	[_screen, _controller, _rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
 	true,
	false,
	"",
	"!(_target getVariable ['display', 0] == 0) && (_target getVariable ['turnedOn', false])",
	5
];

_screen addAction [
	"  " + iconCamera + " Display Front Door Camera",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments params ["_screen", "_controller", "_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		_screen setObjectTextureGlobal [0, format["#(argb,512,512,1)r2t(%1,1)", _rtt_1]];
		_controller setObjectTextureGlobal [1, format["#(argb,512,512,1)r2t(%1,1)", _rtt_0]];
		_controller setObjectTextureGlobal [2, format["#(argb,512,512,1)r2t(%1,1)", _rtt_2]];
		_controller setObjectTextureGlobal [3, format["#(argb,512,512,1)r2t(%1,1)", _rtt_3]];
		[_target, ["display", 1]] remoteExec ["setvariable", 0, true];
	},
	[_screen, _controller, _rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
 	true,
	false,
	"",
	"!(_target getVariable ['display', 0] == 1) && (_target getVariable ['turnedOn', false])",
	5
];

_screen addAction [
	"  " + iconCamera + " Display Over Door Camera",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments params ["_screen", "_controller", "_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		_screen setObjectTextureGlobal [0, format["#(argb,512,512,1)r2t(%1,1)", _rtt_2]];
		_controller setObjectTextureGlobal [1, format["#(argb,512,512,1)r2t(%1,1)", _rtt_0]];
		_controller setObjectTextureGlobal [2, format["#(argb,512,512,1)r2t(%1,1)", _rtt_1]];
		_controller setObjectTextureGlobal [3, format["#(argb,512,512,1)r2t(%1,1)", _rtt_3]];
		[_target, ["display", 2]] remoteExec ["setvariable", 0, true];
	},
	[_screen, _controller, _rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
 	true,
	false,
	"",
	"!(_target getVariable ['display', 0] == 2) && (_target getVariable ['turnedOn', false])",
	5
];

_screen addAction [
	"  " + iconCamera + " Display Helmet Camera",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments params ["_screen", "_controller", "_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		_screen setObjectTextureGlobal [0, format["#(argb,512,512,1)r2t(%1,1)", _rtt_3]];
		_controller setObjectTextureGlobal [1, format["#(argb,512,512,1)r2t(%1,1)", _rtt_0]];
		_controller setObjectTextureGlobal [2, format["#(argb,512,512,1)r2t(%1,1)", _rtt_1]];
		_controller setObjectTextureGlobal [3, format["#(argb,512,512,1)r2t(%1,1)", _rtt_2]];
		[_target, ["display", 3]] remoteExec ["setvariable", 0, true];
	},
	[_screen, _controller, _rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
 	true,
	false,
	"",
	"!((_target getVariable ['display', 0]) == 3) && (_target getVariable ['turnedOn', false])",
	5
];

_screen addAction ["<t size = '0.5'> </t>", {}, nil, 1.5, true, false, "", "(_target getVariable ['turnedOn', false])", 5];

_screen addAction [
	"  " + iconEdenVisionNormal + " Daylight Vision",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments params ["_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		{_x setPiPEffect [0]} forEach _arguments;
		[_target, ["vision", 0]] remoteExec ["setvariable", 0, true];
	},
	[_rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
 	true,
	false,
	"",
	"!((_target getVariable ['vision', 0]) == 0) && (_target getVariable ['turnedOn', false])",
	5
];

[_screen, ["vision", 0]] remoteExec ["setvariable", 0, true];

_screen addAction [
	"  " + colorHexGuer + iconEdenVisionNight + "</t> Night Vision",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments params ["_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		{_x setPiPEffect [1]} forEach _arguments;
		[_target, ["vision", 1]] remoteExec ["setvariable", 0, true];
	},
	[_rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
 	true,
	false,
	"",
	"!((_target getVariable ['vision', 0]) == 1) && (_target getVariable ['turnedOn', false])",
	5
];

_screen addAction [
	"  "+ colorHexGreyDark + iconEdenVisionThermal + "</t> Thermal Vision",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments params ["_rtt_0", "_rtt_1", "_rtt_2", "_rtt_3"];
		{_x setPiPEffect [2]} forEach _arguments;
		[_target, ["vision", 2]] remoteExec ["setvariable", 0, true];
	},
	[_rtt_0, _rtt_1, _rtt_2, _rtt_3],
	1.5,
 	true,
	false,
	"",
	"!((_target getVariable ['vision', 0]) == 2) && (_target getVariable ['turnedOn', false])",
	5
];

_screen addAction ["<t size = '0.5'> </t>", {}, nil, 1.5, true, false, "", " (_target getVariable ['turnedOn', false])", 5];

_screen addAction [
	"  " + colorHexGuer + iconCameraOverhead + "</t> Attach Helmet Cam",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments params ["_screen", "_rtt_3"];
		private _cameraHelmetHashMap = GETMVAR(GVAR(camerasHelmet), createHashMap);
		private _cameraActual = (_cameraHelmetHashMap get _rtt_3)#0;
		private _cameraPosition = (_cameraHelmetHashMap get _rtt_3)#1;
		private _cameraHelmetOffset = [0.18, 0, 0.2];
		_cameraActual attachTo [_caller, _cameraHelmetOffset, "Head"];
		_cameraPosition hideObjectGlobal true;
		[_target, ["helmetCam", true]] remoteExec ["setvariable", 0, true];
	},
	[_screen, _rtt_3],
	1.5,
 	true,
	false,
	"",
	"!(_target getVariable ['helmetCam', false]) && (_target getVariable ['turnedOn', false])",
	5
];

_screen addAction [
	"  " + colorHexEast + iconCameraOverhead + "</t> Return Helmet Cam",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		_arguments params ["_screen", "_rtt_3"];
		private _cameraHelmetHashMap = GETMVAR(GVAR(camerasHelmet), createHashMap);
		private _cameraActual = (_cameraHelmetHashMap get _rtt_3)#0;
		private _cameraPosition = (_cameraHelmetHashMap get _rtt_3)#1;
		_cameraActual attachTo [_cameraPosition ,[0, 0, 0]];
		_cameraPosition hideObjectGlobal false;
		[_target, ["helmetCam", false]] remoteExec ["setvariable", 0, true];
	},
	[_screen, _rtt_3],
	1.5,
 	true,
	false,
	"",
	"(_target getVariable ['helmetCam', false]) && (_target getVariable ['turnedOn', false])",
	5
];

diag_log format ["tScripts Logging: Camera screen controls initialized for %1", _screen]
