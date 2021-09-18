
if(!isMultiplayer) then {
	{if(!(isPlayer _x)) then {deleteVehicle _x}} foreach allUnits;
};

{_x setObjectTextureGlobal [0, "Data\supplydrop_OPFOR_CO.paa"]} foreach allMissionObjects "B_supplyCrate_F";

[] call tScripts_fnc_roomInitSimple;
