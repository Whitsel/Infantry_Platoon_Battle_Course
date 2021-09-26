
#include "script_component.hpp";

roomComplexHShaped = [
	[
		complex_H_Shaped_0,
		complex_H_Shaped_1,
		complex_H_Shaped_2,
		complex_H_Shaped_3,
		complex_H_Shaped_4,
		complex_H_Shaped_5,
		complex_H_Shaped_6
	],
	[
		complex_H_Shaped_OpFor_0,
		complex_H_Shaped_OpFor_1,
		complex_H_Shaped_OpFor_2,
		complex_H_Shaped_OpFor_3,
		complex_H_Shaped_OpFor_4,
		complex_H_Shaped_OpFor_5,
		complex_H_Shaped_OpFor_6,
		complex_H_Shaped_OpFor_7,
		complex_H_Shaped_OpFor_8,
		complex_H_Shaped_OpFor_9
	],
	[
		complex_H_Shaped_Furniture_0,
		complex_H_Shaped_Furniture_1,
		complex_H_Shaped_Furniture_2,
		complex_H_Shaped_Furniture_3,
		complex_H_Shaped_Furniture_4,
		complex_H_Shaped_Furniture_5,
		complex_H_Shaped_Furniture_6,
		complex_H_Shaped_Furniture_7,
		complex_H_Shaped_Furniture_8,
		complex_H_Shaped_Furniture_9,
		complex_H_Shaped_Furniture_10
	]
];

roomComplexNShaped_L = [
	[
		complex_N_Shaped_L_0,
		complex_N_Shaped_L_1,
		complex_N_Shaped_L_2,
		complex_N_Shaped_L_3,
		complex_N_Shaped_L_4,
		complex_N_Shaped_L_5,
		complex_N_Shaped_L_6
	],
	[
		complex_N_Shaped_L_Opfor_0,
		complex_N_Shaped_L_Opfor_1,
		complex_N_Shaped_L_Opfor_2,
		complex_N_Shaped_L_Opfor_3,
		complex_N_Shaped_L_Opfor_4,
		complex_N_Shaped_L_Opfor_5,
		complex_N_Shaped_L_Opfor_6,
		complex_N_Shaped_L_Opfor_7,
		complex_N_Shaped_L_Opfor_8
	],
	[
		complex_N_Shaped_L_furniture_3,
		complex_N_Shaped_L_furniture_2,
		complex_N_Shaped_L_furniture_4,
		complex_N_Shaped_L_furniture_5,
		complex_N_Shaped_L_furniture_0,
		complex_N_Shaped_L_furniture_7,
		complex_N_Shaped_L_furniture_1,
		complex_N_Shaped_L_furniture_6,
		complex_N_Shaped_L_furniture_8
	]
];

roomComplexNShaped_R = [
	[
		complex_N_Shaped_R_0,
		complex_N_Shaped_R_1,
		complex_N_Shaped_R_2,
		complex_N_Shaped_R_3,
		complex_N_Shaped_R_4,
		complex_N_Shaped_R_5,
		complex_N_Shaped_R_6
	],
	[
		complex_N_Shaped_R_Opfor_0,
		complex_N_Shaped_R_Opfor_1,
		complex_N_Shaped_R_Opfor_2,
		complex_N_Shaped_R_Opfor_3,
		complex_N_Shaped_R_Opfor_4,
		complex_N_Shaped_R_Opfor_5,
		complex_N_Shaped_R_Opfor_6,
		complex_N_Shaped_R_Opfor_7,
		complex_N_Shaped_R_Opfor_8
	],
	[
		complex_N_Shaped_R_Furniture_0,
		complex_N_Shaped_R_Furniture_1,
		complex_N_Shaped_R_Furniture_2,
		complex_N_Shaped_R_Furniture_3,
		complex_N_Shaped_R_Furniture_4,
		complex_N_Shaped_R_Furniture_5,
		complex_N_Shaped_R_Furniture_6,
		complex_N_Shaped_R_Furniture_7,
		complex_N_Shaped_R_Furniture_8
	]
];

roomComplexOShaped = [
	[
		complex_0_Shaped_0,
		complex_0_Shaped_1,
		complex_0_Shaped_2,
		complex_0_Shaped_3,
		complex_0_Shaped_4,
		complex_0_Shaped_5
	],
	[
	],
	[
	]
];

roomComplexUShaped = [
	[
		complex_U_Shaped_0,
		complex_U_Shaped_1,
		complex_U_Shaped_2,
		complex_U_Shaped_3,
		complex_U_Shaped_4,
		complex_U_Shaped_5,
		complex_U_Shaped_6,
		complex_U_Shaped_7,
		complex_U_Shaped_8
	],
	[
	],
	[
	]
];

roomComplexWShapedB = [
	[
		complex_W_Shaped_B_0,
		complex_W_Shaped_B_1,
		complex_W_Shaped_B_2,
		complex_W_Shaped_B_3,
		complex_W_Shaped_B_4,
		complex_W_Shaped_B_5,
		complex_W_Shaped_B_6
	],
	[
	],
	[
	]
];

roomComplexWShapedT = [
	[
		complex_W_Shaped_T_0,
		complex_W_Shaped_T_1,
		complex_W_Shaped_T_2,
		complex_W_Shaped_T_3,
		complex_W_Shaped_T_4,
		complex_W_Shaped_T_5,
		complex_W_Shaped_T_6
	],
	[
	],
	[
	]
];

roomHashComplex = createHashMapFromArray [
	[1, roomComplexHShaped],
	[2, roomComplexNShaped_L],
	[3, roomComplexNShaped_R],
	[4, roomComplexOShaped],
	[5, roomComplexUShaped],
	[6, roomComplexWShapedB],
	[7, roomComplexWShapedT]
];

for "_i" from 1 to (count roomHashComplex) do {{hideObjectGlobal _x} forEach (roomHashComplex get _i)#0 + (roomHashComplex get _i)#1 + (roomHashComplex get _i)#2};
