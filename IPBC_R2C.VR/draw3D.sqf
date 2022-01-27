
addMissionEventHandler [
	"Draw3D",
	{
		private _minDistance = 5;
		private _maxDistance = 100;
		private _playerDistance = _unit distance player;
		{
			if (_playerDistance < _maxDistance) then {
				drawIcon3D[
					getText (configFile >> "CfgVehicles" >> typeOf asdf >> "icon"),
					[0.494, 0.086, 0.086, 1],
					[
						getPos asdf#0,
						getPos asdf#1,
						(getPosATL asdf#2) + 3
					],
					1,
					1,
					0,
					name asdf
				];
			};
		} foreach allUnits;
	}
];
