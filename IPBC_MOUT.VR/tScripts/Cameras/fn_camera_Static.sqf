
#include "script_component.hpp";

/*
 * Author: Whitsel
 * Creates a static camera at a predefined position with a predefined target
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

params ["_cameraPosition", "_cameraTarget", "_rtt", ["_cameraFov", 1], ["_cameraEffect", 0]];

_cameraPosition hideObjectGlobal true;
_cameraTarget hideObjectGlobal true;

private _cameraActual = "camera" camCreate getPos _cameraPosition;
_cameraActual attachTo [_cameraPosition, [0, 0, 0]];
_cameraActual cameraEffect ["Internal", "Back", _rtt];
_cameraActual camSetFov _cameraFov;
_rtt setPiPEffect [_cameraEffect];
_cameraActual camSetTarget _cameraTarget;
private _camCommitTime = 0;
_cameraActual camCommit _camCommitTime;

diag_log format ["tScripts Logging: %1 static camera created at %2", _cameraActual, _cameraPosition]
