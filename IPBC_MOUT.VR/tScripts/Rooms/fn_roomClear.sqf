
#include "script_component.hpp";

params ["_floorSetHash", "_roomTrigger", "_frontDoor"];

{_x hideObjectGlobal false} forEach _frontDoor;

for "_i" from 1 to (count _floorSetHash) do {{hideObjectGlobal _x} forEach (_floorSetHash get _i)#0 + (_floorSetHash get _i)#2};

{if (_x inArea _roomTrigger == true) then {deleteVehicle _x}} forEach allUnits;

{if (_x inArea _roomTrigger == true) then {deleteVehicle _x}} forEach allDead;

diag_log format["tScripts Logging: Room cleared %1", _roomTrigger];
