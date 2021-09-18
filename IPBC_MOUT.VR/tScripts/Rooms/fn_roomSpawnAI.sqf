
#include "..\script_component.hpp";

params ["_target", "_floorSetHash", "_floorNum"];

_spawnChance = _target getVariable ["spawnChanceAI", 0.2];

{
	if (_spawnChance > random 1) then
	{
		_randkit = floor random 4 + 1;
		private _unit = (createGroup east) createUnit ["O_soldierU_F", getposATL _x, [], 0.5, "NONE"];
		_unit setDir random 360;
		switch (_randKit) do {
			case 1: {_unit call tScripts_fnc_oRifleman};
			case 2: {_unit call tScripts_fnc_oGrenadier};
			case 3: {_unit call tScripts_fnc_oAutomaticRifleman};
			case 4: {_unit call tScripts_fnc_oTeamLeader};
		}
	}
} foreach (roomSimpleHash get _floorNum)#1;

diag_log format["tScripts Logging: AI spawned %1", _floorNum];
