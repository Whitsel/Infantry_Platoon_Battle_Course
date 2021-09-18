
#include "..\script_component.hpp";

params ["_floorSetHash", "_roomTrigger"];

for "_i" from 1 to (count roomSimpleHash) do {{hideObject _x} forEach (roomSimpleHash get _i)#0}; //hide all walls

{if (_x inArea _roomTrigger == true) then {deleteVehicle _x}} forEach allUnits; //delete all units in area

{if (_x inArea _roomTrigger == true) then {deleteVehicle _x}} forEach allDead; //delete all bodies in area

diag_log format["tScripts Logging: Room cleared %1", _roomTrigger];
