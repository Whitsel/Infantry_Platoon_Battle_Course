
#include "script_component.hpp";

private _lrChannels = ["Default", "HEADHUNTER", "HEADHUNTER-1", "HEADHUNTER-2", "HEADHUNTER-3", "HEADHUNTER-4", "DEUCE", "DEUCE-1", "DEUCE-2", "DEUCE-3", "DEUCE-4"];

{
    private _radio = _x;
    {
        [_radio, "default", _forEachIndex + 1, "label", _x] call acre_api_fnc_setPresetChannelField;
    } forEach _lrChannels;
    [_radio, "default"] call acre_api_fnc_setPreset;
} count ["ACRE_PRC152", "ACRE_PRC148", "ACRE_PRC117F"];
