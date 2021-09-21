
#include "script_component.hpp";

params [""];

waitUntil {!isNull player};

sleep 2;

[[
		["Infantry Platoon Battle Course - MOUT", "<t align = 'right' shadow = '1' size = '1' color='#99ffffff' font='PuristaBold'>%1</t><br/>",2],
		["from the 7th Cavalry Regiment", "<t align = 'right' shadow = '1' size = '0.7' color='#99ffffff' font='PuristaLight'>%1</t><br/>",2],
		["by Whitsel", "<t align = 'right' shadow = '1' size = '0.5' color='#99888888' font='PuristaMedium'>%1</t>", 60]
	], -safeZoneX, 1
] spawn BIS_fnc_typeText;

diag_log "Intro sequence played"
