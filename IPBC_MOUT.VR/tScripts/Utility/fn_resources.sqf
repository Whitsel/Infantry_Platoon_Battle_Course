
#include "..\script_component.hpp";

params ["_printer"];

_printer addAction ["  <img size='1' image='\a3\ui_f\data\GUI\RscCommon\RscDebugConsole\biki_ca'/> Resources", {
		params ["_target", "_caller", "_actionId", "_arguments"];
		_fm = parseText "<a href='https://docs.google.com/document/d/1ivYiXxTvW49c5eu4yqo0WKc9KLMaUBMyniL3PIPCqbA/edit?usp=sharing'><t color='#ebc729' size='1.2'>7th&#160;Cavalry:&#160;Urban&#160;Operations&#160;Field&#160;Manual</t></a><br />";
		_atp = parseText "<a href='https://armypubs.army.mil/epubs/DR_pubs/DR_a/pdf/web/ARN6452_ATP%203-06%20FINAL%20WEB.pdf'><t color='#ebc729' size='1.2'>Army&#160;Publishing&#160;Directorate:&#160;ATP&#160;3-06&#160;Urban&#160;Operations</t></a><br />";
		_yt = parseText "<a href='https://youtu.be/tam5y2qREkk'><t color='#ebc729' size='1.2'>Project&#160;Gecko:&#160;Pro's&#160;Guide&#160;to&#160;CQB</t></a><br />";
		_survey = parseText "<a href='https://7cav.us/enlist'><t color='#ebc729' size='1.2'>Enlist&#160;in&#160;the&#160;7th&#160;Cavalry&#160;to&#160;Learn&#160;More</t>  <img image='Data\7Cav_Logo.paa' /></a>";
		"Infantry Platoon Battle Course Resources" hintC [_fm, _atp, _yt, _survey];

		hintC_EH = findDisplay 72 displayAddEventHandler ["unload", {
			0 = _this spawn {
				_this select 0 displayRemoveEventHandler ["unload", hintC_EH];
				hintSilent "";
			};
		}];
		},
		nil,	// arguments
		1.5,	// priority
		true,	// showWindow
		true,	// hideOnUse
		"",		// shortcut
		"",		// condition
		5		// distance
];
