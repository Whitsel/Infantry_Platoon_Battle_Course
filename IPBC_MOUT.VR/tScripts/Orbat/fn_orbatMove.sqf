

private["_params","_task"];
_params = _this select 9;
//_task = [_params, 3, objNull, [objNull]] call BIS_fnc_param;
_task = [_params, 4, objNull, [objNull] ] call BIS_fnc_param;

titleCut ["", "BLACK FADED", 10e10];
private "_t";
_cam = "camera" camCreate (position player);
_cam cameraEffect ["INTERNAL", "BACK"];
_cam camPreparePos getpos player;
_cam camPrepareDir getdir player;
_cam camCommitPrepared 0;
_cam camPreload 3;
waitUntil {camPreloaded _cam};
_cam cameraEffect ["TERMINATE", "BACK"];
camDestroy _cam;
player setpos position _task;
player setdir getdir _task;
titleCut ["", "BLACK IN", 3];
