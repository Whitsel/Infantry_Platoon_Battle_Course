
#include "script_component.hpp";

params ["_crate"];

_crate addEventHandler [
    "ContainerOpened", {
        params ["_container", "_unit"];
        if (GETVAR(_container,EGVAR(COMPONENT,locked),false)) then {
            [] spawn {
                waitUntil{!isNull findDisplay 602};
                closeDialog 1;
            }
        }
    }
];

_crate addAction ["  " + colorHexEast + iconKey + "</t> Lock Crate", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [_target, ["tScripts_crates_locked", true]] remoteExec ["setvariable", 0, true];
    },
    nil,
    1.5,
    true,
    true,
    "",
    "!(_target getVariable ['tScripts_crates_locked', false]) && (player getVariable ['instructor',false])", // _target, _this, _originalTarget
    5,
    false,
    "",
    ""
];

_crate addAction ["  " + colorHexGuer + iconKey + "</t> Unlock Crate", {
        params ["_target", "_caller", "_actionId", "_arguments"];
        [_target, ["tScripts_crates_locked", false]] remoteExec ["setvariable", 0, true];
    },
    nil,
    1.5,
    true,
    true,
    "",
    "(_target getVariable ['tScripts_crates_locked', false]) && (player getVariable ['instructor',false])", // _target, _this, _originalTarget
    5,
    false,
    "",
    ""
];
