
#include "script_component.hpp";

if (!isServer)  exitwith {};

params ["_object", "_inv"];

clearWeaponCargoGlobal _object;
clearMagazineCargoGlobal _object;
clearItemCargoGlobal _object;
clearBackpackCargoGlobal _object;

{
	_x params ["_ammo", "_amount"];
	_object addItemCargoGlobal [_ammo, _amount];
} forEach _inv;

diag_log format["tScripts Logging: Inventory has been set for %1", _object];
