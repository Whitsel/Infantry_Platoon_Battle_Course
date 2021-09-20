
#include "..\script_component.hpp";

params ["_target", "_frontDoor", "_floorSetHash"];

_frontDoor animate ["door_1_rot", 0, 3];

sleep 0.5;

_floorNum= floor random count _floorSetHash + 1;

{_x hideObject false} foreach (_floorSetHash get _floorNum)#0;

[_target, _floorSetHash, _floorNum] call tScripts_fnc_roomSpawnFurniture;

[_target, _floorSetHash, _floorNum] call tScripts_fnc_roomspawnAI;

diag_log format["tScripts Logging: Floor spawned %1", _floorNum];
