
#include "..\script_component.hpp";

params ["_camPos", "_rtt", "_fov", "_effect"];

//_camPos hideObjectGlobal true;
//_camTarget hideObjectGlobal true;

private _cam = "camera" camCreate getPos _camPos;
_cam attachTo [_camPos, [0, 0, 0]];
_cam cameraEffect ["Internal", "Front", _rtt];
_cam camSetFov _fov;
_rtt setPiPEffect [_effect];
//_cam camSetTarget _camTarget;
_cam camCommit 1;

private _default = createHashMapFromArray [
	[0, []]
];

private _cameraHelmet = missionNamespace getVariable [QGVAR(camerasHelmet), _default];
_cameraHelmet set [_rtt,[_cam, _camPos]];
missionNamespace setVariable [QGVAR(camerasHelmet), _cameraHelmet, true];

diag_log format ["tScripts Logging: %1 static camera created at %2", _cam, _camPos]
