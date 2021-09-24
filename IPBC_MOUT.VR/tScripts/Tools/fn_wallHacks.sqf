
#include "script_component.hpp";

params ["_unit"];

_unit addAction [
	"  " + colorHexGuer + "<img size='1' image='\a3\ui_f\data\IGUI\Cfg\Radar\viewdir_ca'/></t> Turn Wallhacks On",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		SETVAR(_caller,CGVAR(wallsHacks),true);
		onEachFrame {
			{
				private _minDistance = 5;
				private _maxDistance = 100;
				private _playerDistance = _x distance player;
				private _alpha3D = 1 - (_playerDistance/_maxDistance);
				if (((side _x == east) or (side _x == resistance)) && ((_playerDistance < _maxDistance) && (_playerDistance > _minDistance))) then {
					private _beg = ASLToAGL eyePos _x;
					private _endW = (_beg vectorAdd (_x weaponDirection currentWeapon _x vectorMultiply (_playerDistance * 1.10)));
					private _endV = (_beg vectorAdd (getCameraViewDirection _x vectorMultiply (_playerDistance * 1.10)));
					drawLine3D [_beg, _endW, [0.5,0,0,_alpha3D]];
					drawLine3D [_beg, _endV, [0.5,0,0,_alpha3D/2]];
				}
			} foreach allUnits;
			{
				private _minDistance = 5;
				private _maxDistance = 100;
				private _playerDistance = _x distance player;
				private _alpha3D = 1 - (_playerDistance/_maxDistance);
				if ((side _x == west) and ((_playerDistance < _maxDistance) && (_playerDistance > _minDistance))) then {
					private _beg = ASLToAGL eyePos _x;
					private _endW = (_beg vectorAdd (_x weaponDirection currentWeapon _x vectorMultiply (_playerDistance * 1.10)));
					private _endV = (_beg vectorAdd (getCameraViewDirection _x vectorMultiply (_playerDistance * 1.10)));
					drawLine3D [_beg, _endW, [0,0,0.5,_alpha3D]];
					drawLine3D [_beg, _endV, [0,0,0.5,_alpha3D/2]];
				}
			} foreach allUnits;
		};
	},
	nil,
	0,
	true,
	false,
	"",
	"!(_this getVariable ['tScripts_tools_wallsHacks', false]) && (_this getVariable ['tScripts_tools_showTools', false])"
];

_unit addAction [
	"  " + colorHexEast + "<img size='1' image='\a3\ui_f\data\IGUI\Cfg\Radar\viewdir_ca'/></t> Turn Wallhacks Off",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		SETVAR(_caller,CGVAR(wallsHacks),false);
		onEachFrame {
			{
				private _playerDistance = _x distance player;
				if (((side _x == west) or (side _x == east) or (side _x == resistance))) then {
					private _beg = ASLToAGL eyePos _x;
					private _endW = (_beg vectorAdd (_x weaponDirection currentWeapon _x vectorMultiply 500));
					private _endV = (_beg vectorAdd (getCameraViewDirection _x vectorMultiply 500));
					drawLine3D [_beg, _endW, [0,0,0,0]];
					drawLine3D [_beg, _endV, [0,0,0,0]];
				}
			} foreach allUnits;
		}
	},
	nil,
	0,
	true,
	false,
	"",
	"(_this getVariable ['tScripts_tools_wallsHacks', false]) && (_this getVariable ['tScripts_tools_showTools', false])"
];
