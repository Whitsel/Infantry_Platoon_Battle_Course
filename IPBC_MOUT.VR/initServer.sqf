
if(!isMultiplayer) then {
	{if(!(isPlayer _x)) then {deleteVehicle _x}} foreach allUnits;
};

{_x setObjectTextureGlobal [0, "Data\supplydrop_OPFOR_CO.paa"]} foreach allMissionObjects "B_supplyCrate_F";

{
		_x setObjectMaterialGlobal [0, "A3\Structures_F\Data\Windows\glass.rvmat"];
		_x setObjectTextureGlobal [0, "#(rgb,8,8,3)color(0,0,0,0.5)"]
} foreach allMissionObjects "VR_Billboard_01_F";

{
	for "_i" from 0 to 6 do {
		_x setObjectMaterialGlobal [_i, "A3\Structures_F\Data\Windows\glass.rvmat"];
		_x setObjectTextureGlobal [_i, "#(rgb,8,8,3)color(0,0,0,1)"]
	}
} foreach allMissionObjects "Land_VR_Shape_01_cube_1m_F";
