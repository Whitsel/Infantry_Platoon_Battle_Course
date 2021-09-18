
params ["_caller","_lane"];

_easting = floor(getPos _lane#0/10);

_zeroE = "";

if (_easting < 999) then {_zeroE = "0"};

if (_easting < 99) then {_zeroE = "00"};

_northing = floor(getPos _lane#1/10);

_zeroN = "";

if (_northing < 999) then {_zeroN = "0"};

if (_northing < 99) then {_zeroN = "00"};

_grid = format ["%1%2 %3%4", _zeroE, _easting, _zeroN, _northing];

private _mapImg = "\a3\ui_f\data\igui\cfg\simpleTasks\types\map_ca.paa";
private _ruleImg = "\a3\ui_f\data\igui\cfg\simpleTasks\types\danger_ca.paa";
private _questionsImg = "\a3\ui_f\data\igui\cfg\Actions\talk_ca.paa";
private _destTxt = composeText [
    image _mapImg,
    parseText " Destination<br />",
    parseText format ["Your destination grid is %1<br />You point will be orange and white and clearly visible<br />You are now somewhere within the navigation area marked on map<br />All nav points will be within this box<br />", _grid]
];

private _rulesTxt = composeText [
    image _ruleImg,
    parseText " Rules<br />",
    parseText "Move tactically using cover and concealment at all times<br />No navigation aids aside from map, compass, and map tools are allowed on this course<br />Maintain all of your equipment for the duration of the course<br />Ping Zeus with [ Y ] if you have any other questions<br />"
];

private _questionsTxt = composeText [
    image _questionsImg,
    parseText " Overcoming Difficulties<br />",
    parseText "Locate yourself using key terrain features - Don't be afraid to move to get a better understanding of your surroundings<br />Plan your route using handrails, checkpoints, and catching features<br />If you are lost do not be afraid to backtrack<br />As a courtesy to other navigators make all marks in direct chat<br />Ping Zeus with [ Y ] if you desire assistance<br />"
];

"Navigation Hint" hintC [_destTxt, _rulesTxt, _questionsTxt];
