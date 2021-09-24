
#include "script_component.hpp";

params ["_unit"];

_unit addAction [
	"  " + colorHexEast + "<img size='1' image='\a3\ui_f\data\GUI\Cfg\Ranks\captain_gs'/></t> Pause Exercise",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		SETMVAR(CGVAR(aiFreeze),true);
		private _AI = (
			(allUnits select {side group _x == west}) +
			(vehicles select {side group _x == west}) +
			(allUnits select {side group _x == east}) +
			(vehicles select {side group _x == east}) +
			(allUnits select {side group _x == resistance}) +
			(vehicles select {side group _x == resistance}) +
			(allUnits select {side group _x == civilian}) +
			(vehicles select {side group _x == civilian}) -
			(allPlayers)
		);
		{[_x, false] remoteExec ["enableSimulationGlobal", 0]} forEach _AI;
		{[_x, false] remoteExec ["allowDamage ", 0]} forEach _AI;
		format ["PauseEx Initiated by %1\n  \nAn Exercise Pause has been Initiated. All AI and vehicles are temporarily disabled.", name _caller] remoteExec ["hint", 0];

		arrows = [];
		{
			_pos = getPosATL _x;
			_dir = getDir _x;
			_object = createVehicle ["Sign_Arrow_Direction_Blue_F", [_pos#0,_pos#1,_pos#2+1.875],[],0,"CAN_COLLIDE"];
			_object setDir _dir;
			arrows pushBack _object;
		} forEach allPlayers;

	},
	nil,
	0,
	true,
	false,
	"",
	"!(missionNameSpace getVariable ['tScripts_tools_aiFreeze',false]) && (_this getVariable ['tScripts_tools_showTools', false])",
	0,
	true
];

_unit addAction [
	"  " + colorHexGuer + "<img size='1' image='\a3\ui_f\data\GUI\RscCommon\RscHTML\arrow_right_ca'/></t> Play Exercise",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		SETMVAR(CGVAR(aiFreeze),false);
		private _AI = (
			(allUnits select {side group _x == west}) +
			(vehicles select {side group _x == west}) +
			(allUnits select {side group _x == east}) +
			(vehicles select {side group _x == east}) +
			(allUnits select {side group _x == resistance}) +
			(vehicles select {side group _x == resistance}) +
			(allUnits select {side group _x == civilian}) +
			(vehicles select {side group _x == civilian}) -
			(allPlayers)
		);
		{[_x, true] remoteExec ["enableSimulationGlobal", 0]} forEach _AI;
		{[_x, true] remoteExec ["allowDamage ", 0]} forEach _AI;
		format ["PauseEx Ended by %1\n \nThe Exercise Pause has been ended. All AI and vehicles have been reenabled.", name _caller] remoteExec ["hint", 0];

		{deleteVehicle _x} forEach arrows;
		arrows = [];
	},
	nil,
	0,
	true,
	false,
	"",
	"(missionNameSpace getVariable ['tScripts_tools_aiFreeze',false]) && (_this getVariable ['tScripts_tools_showTools', false])",
	0,
	true
];
