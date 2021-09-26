
#include "script_component.hpp";

params ["_crate",["_locked", false]];

_crate addAction[
	"  " + colorHexEast + iconHeal + "</t> Heal",
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		if ("ace_main" in activatedAddons) then {
			[_target, _caller] call ace_medical_treatment_fnc_fullHeal;
		} else {
			_caller setDamage 0;
		};
	},
	[],
	1.5,
	true,
	true,
	"",
	"true",
	5
];

_crate addAction[
	"  " + iconArsenal,
	{
		params ["_target", "_caller", "_actionId", "_arguments"];
		if ("ace_main" in activatedAddons) then {
			[_caller, _caller, true] call ace_arsenal_fnc_openBox;
		} else {
			["Open", [true]] call BIS_fnc_arsenal;
		};
	},
	[],
	1.5,
	true,
	true,
	"",
	"(!(_target getVariable ['tScripts_crates_locked', false]) && (_target getVariable ['tScripts_crates_arsenal', false])) || !isMultiplayer",
	5
];

_crate call FUNC(resources);

_crate call FUNC(crate_Lock);

_crate allowdamage false;

_crate enableRopeAttach false;

if ("ace_main" in activatedAddons) then {
	[_box, -1] call ace_cargo_fnc_setSize;
	[_box, false] call ace_dragging_fnc_setDraggable;
	[_box, false] call ace_dragging_fnc_setCarryable;
};

if (!isNil "crateAttachmentPoint") then {
	_crate attachTo [crateAttachmentPoint];
};
