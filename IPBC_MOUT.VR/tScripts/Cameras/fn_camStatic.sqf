
#include "..\script_component.hpp";

params ["_camPos", "_camTarget", "_rtt", "_fov", "_effect"];

_camPos hideObjectGlobal true;
_camTarget hideObjectGlobal true;

_cam = "camera" camCreate getPos _camPos;
_cam attachTo [_camPos, [0, 0, 0]];
_cam cameraEffect ["Internal", "Back", _rtt];
_cam camSetFov _fov;
_rtt setPiPEffect [_effect];
_cam camSetTarget _camTarget;
_cam camCommit 1;

private _cameras = missionNamespace getVariable [QGVAR(cameras), []];
_cameras pushBack _cam;
missionNamespace setVariable [QGVAR(cameras), _cameras, true];

diag_log format ["tScripts Logging: %1 static camera created at %2", _cam, _camPos]
