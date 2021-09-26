
#include "script_component.hpp";

params ["_target", "_caller"];

private _7CavLocation = if (isNil "7Cav_Orbat") then {
	[worldSize / 1.2, worldsize / 1.2, 0];
} else {
	markerPos "Cav_Orbat";
};

private _display = [] call bis_fnc_displayMission;
private _startPos = getPos _target;
private _missions = [];
private _ORBATs =
[
	[
		_7CavLocation, //Add a getPos for something
		missionConfigFile >> "CfgORBAT" >> "7thCavalry",
		missionConfigFile >> "CfgORBAT" >> "7thCavalry"
	]
];
private _markers = [];
private _images = [];
private _weather = overcast;
private _isNight = ((dayTime < 4) || (dayTime > 20));
private _scale = 0.5;
private _simulation = true;

{
	_mName = GETVAR(_x,CGVAR(orbatName),"Unnamed Mission");
	_mDesc = GETVAR(_x,CGVAR(orbatDesc),"Empty Description");
	_mOverview = GETVAR(_x,CGVAR(orbatOverview),"data\7Cav\7cav_logo.paa");

	_missions = _missions +
	[[
		getPos _x,
		{
			_this params ["_pos"];
			player setVehiclePosition [_pos, [], 2];
			[[
					[format["%1",_this#2], "<t align = 'right' shadow = '1' size = '1' color='#99ffffff' font='PuristaBold'>%1</t><br/>",60]
				], -safeZoneX, 1
			] spawn BIS_fnc_typeText;
		},
		_mName,
		_mDesc,
		"",
		_mOverview,
		1,
		[_mName, _mOverview , _mOverview, getPos _x]
	]]
} forEach orbatMissions;

[
	_display,
	_startPos,
	_missions,
	_ORBATs,
	_markers,
	_images,
	_weather,
	_isNight,
	_scale,
	_simulation
] call Bis_fnc_strategicMapOpen;
