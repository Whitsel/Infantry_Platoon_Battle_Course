
#include "..\script_component.hpp";

params [""];

player addAction ["  <img size='1' image='\a3\ui_f\data\IGUI\RscIngameUI\RscDisplayChannel\MuteChat_ca'/> Class Resources", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_fm = parseText "<a href='https://drive.google.com/file/d/1Pr0Q_cngAMdhnZqnHmyT4Q3Z4qJieDpO/view?usp=sharing'><t color='#ebc729' size='1.2'>Field&#160;Manual</t></a><br />";
		"Class Resources" hintC [_fm];

		hintC_EH = findDisplay 72 displayAddEventHandler ["unload", {
			0 = _this spawn {
				_this select 0 displayRemoveEventHandler ["unload", hintC_EH];
				hintSilent "";
			};
		}];
	},
	nil,		// arguments
	0,		  // priority
	true,	   // showWindow
	false,	  // hideOnUse
	"",		 // shortcut
	"(player getVariable ['showTools', false])"		  // condition
];
