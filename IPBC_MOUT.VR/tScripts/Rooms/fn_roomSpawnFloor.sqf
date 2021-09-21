
#include "script_component.hpp";

params ["_target", "_frontDoor", "_floorSetHash"];

{_x animate ["door_1_rot", 0, 3]} forEach _frontDoor;

sleep 0.5;

_frontDoor#(floor random count _frontDoor) hideObjectGlobal true;

_floorNum= ceil random count _floorSetHash;

{_x hideObjectGlobal false} foreach (_floorSetHash get _floorNum)#0;

[_target, _floorSetHash, _floorNum] call tScripts_fnc_roomSpawnFurniture;

[_target, _floorSetHash, _floorNum] call tScripts_fnc_roomspawnAI;

diag_log format["tScripts Logging: Floor spawned %1", _floorNum];
