
#include "script_component.hpp";

params [""];

addMissionEventHandler ["Draw3D", {
	if (GETVAR(player,CGVAR(wallsHacks),false)) then {
		private _minDistance = 5;
		private _maxDistance = 100;
		{
			private _playerDistance = _x distance player;
			private _alpha3D = 1 - _playerDistance/_maxDistance;
			if ((side _x == east) && (_playerDistance < _maxDistance)) then {
				drawIcon3D[
					getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),
					[0.494, 0.086, 0.086, _alpha3D],
					[
						getPos _x#0,
						getPos _x#1,
						(getPosATL _x#2) + 3
					],
					1,
					1,
					0,
					name _x
				];
			};
		} foreach allUnits;

		{
			private _playerDistance = _x distance player;
			private _alpha3D = 1 - _playerDistance/_maxDistance;
			if ((side _x == west) && (_playerDistance > _minDistance) && (_playerDistance < _maxDistance)) then {
				drawIcon3D[
					getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),
					[0.086, 0.333, 0.576, _alpha3D],
					[
						getPos _x#0,
						getPos _x#1,
						(getPosATL _x#2) + 3
					],
					1,
					1,
					0,
					name _x
				];
			};
		} foreach allUnits;

		{
			private _playerDistance = _x distance player;
			private _alpha3D = 1 - _playerDistance/_maxDistance;
			if ((side _x == resistance) && (_playerDistance < _maxDistance)) then {
				drawIcon3D[
					getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),
					[0.086, 0.494, 0.086, _alpha3D],
					[
						getPos _x#0,
						getPos _x#1,
						(getPosATL _x#2) + 3
					],
					1,
					1,
					0,
					name _x
				];
			};
		} foreach allUnits;

		{
			private _playerDistance = _x distance player;
			private _alpha3D = 1 - _playerDistance/_maxDistance;
			if ((side _x == civilian) && (_playerDistance < _maxDistance)) then {
				drawIcon3D[
					getText (configFile >> "CfgVehicles" >> typeOf _x >> "icon"),
					[0.416, 0.086, 0.494, _alpha3D],
					[
						getPos _x#0,
						getPos _x#1,
						(getPosATL _x#2) + 3
					],
					1,
					1,
					0,
					name _x
				];
			};
		} foreach allUnits;
	}
}];
