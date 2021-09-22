
#include "script_component.hpp";

/*
 * Author: Whitsel
 * Creates a static camera at a predefined position with no predefined target.
 * Camera is put into hashMap to be attached to players later
 * HashMap key will be the passed rtt string
 *
 * Arguments:
 * 0: Camera position <OBJECT>
 * 1: Camera target <OBJECT>
 * 2: Render To Texture name<STRING>
 * 3: Optional camera field of view aka "Zoom" <SCALAR> (default: 1)
 * 4: Optional camera effect  <SCALAR> (default: 0)
 *
 * Return Value:
 * None
 *
 * Example:
 * [something, something, "rtt_1"] call tScripts_fnc_camera_Static
 * [this, player, "rtt_2", 1.5, ] call tScripts_fnc_camera_Static
 *
 * Public: [No]
 */

params ["_cameraPosition", "_rtt", "_cameraFov", "_cameraEffect"];

private _cameraActual = "camera" camCreate getPos _cameraPosition;
_cameraActual attachTo [_cameraPosition, [0, 0, 0]];
_cameraActual cameraEffect ["Internal", "Front", _rtt];
_cameraActual camSetFov _cameraFov;
_rtt setPiPEffect [_cameraEffect];
private _camCommitTime = 0;
_cameraActual camCommit _camCommitTime;

private _cameraHelmetHashMap = GETMVAR(EGVAR(COMPONENT,helmetHash), createHashMap);
_cameraHelmetHashMap set [_rtt, [_cameraActual, _cameraPosition]];
SETMVAR(EGVAR(COMPONENT,helmetHash), _cameraHelmetHashMap);

diag_log format ["tScripts Logging: %1 helmet camera created at %2", _cameraActual, _cameraPosition]
