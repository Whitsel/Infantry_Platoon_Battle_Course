
#include "..\script_component.hpp";

params ["_target", "_floorSetHash", "_floorNum"];

_spawnChance = _target getVariable ["spawnChanceFurniture", 0.3];

if (_target getVariable ["spawningFurniture", false]) then {
	{
		if (_spawnChance > random 1) then
		{
			_x hideObjectGlobal false;
		}
	} foreach (_floorSetHash get _floorNum)#2;
};

diag_log format["tScripts Logging: Floor spawned %1", _floorNum];
