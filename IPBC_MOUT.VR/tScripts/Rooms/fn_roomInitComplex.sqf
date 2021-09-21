
#include "..\script_component.hpp";

roomHashComplex = createHashMapFromArray [
	[1, ["", "", ""]]
];

for "_i" from 1 to (count roomHashComplex) do {{hideObjectGlobal _x} forEach (roomHashComplex get _i)#0 + (roomHashComplex get _i)#1 + (roomHashComplex get _i)#2};
