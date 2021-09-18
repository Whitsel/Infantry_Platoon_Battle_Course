
#include "..\script_component.hpp";

params ["_camera"];

camera_3 = "camera" camCreate getPos _camera;
camera_3 attachTo [_camera, [0, 0, 0]];
camera_3 cameraEffect ["Internal", "Back", "rtt_3"];
camera_3 camSetFov 1;
"rtt_2" setPiPEffect [0];
//camera_3 camSetTarget _camTarget;
camera_3 camCommit 1;
