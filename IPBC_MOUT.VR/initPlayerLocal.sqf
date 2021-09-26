
waitUntil {!isNull player};

player addEventHandler ["InventoryClosed", {
	params ["_unit", "_container"];
	if ((typeOf _container) == "GroundWeaponHolder") then {
		deleteVehicle _container
	};
}];

["init"] call compile preProcessFile format ["tScripts\Class\%1.sqf", typeOf player];

player call HUD_Infantry_Initialize;
player setVariable ["SPM_BranchOfService", "infantry"];

player call tScripts_fnc_intro;

[] spawn {
	while {true} do {
		{
			if(agent _x isKindOf "Rabbit_F" || agent _x isKindOf "Snake_random_F") then {deleteVehicle agent _x};
		} forEach agents;
		sleep 1;
	};
};
