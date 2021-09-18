
#include "..\script_component.hpp";

roomBoxSmall = [
	box_small_0,
	box_small_1,
	box_small_2,
	box_small_3,
	box_small_4
];

roomBoxSmallOpfor = [
	box_small_opfor_0,
	box_small_opfor_1
];

roomBoxLarge = [
	box_large_0,
	box_large_1,
	box_large_2,
	box_large_3,
	box_large_4
];

roomBoxLargeOpfor = [
	box_large_opfor_1,
	box_large_opfor_2,
	box_large_opfor_3,
	box_large_opfor_4,
	box_large_opfor_5
];

roomTubeLong = [
	tube_long_1,
	tube_long_2,
	tube_long_3,
	tube_long_4,
	tube_long_5,
	tube_long_6
];

roomTubeWide = [
	tube_wide_1,
	tube_wide_2,
	tube_wide_3
];

roomLShapedSmallLeft = [
	LShaped_Small_Left_0,
	LShaped_Small_Left_1,
	LShaped_Small_Left_2,
	LShaped_Small_Left_3,
	LShaped_Small_Left_4,
	LShaped_Small_Left_5,
	LShaped_Small_Left_6,
	LShaped_Small_Left_7,
	LShaped_Small_Left_8
];

roomLShapedSmallRight = [
	LShaped_Small_Right_0,
	LShaped_Small_Right_1,
	LShaped_Small_Right_2,
	LShaped_Small_Right_3,
	LShaped_Small_Right_4,
	LShaped_Small_Right_5,
	LShaped_Small_Right_6,
	LShaped_Small_Right_7,
	LShaped_Small_Right_8
];

roomLShapedLargeL = [
	LShaped_Large_Left_0,
	LShaped_Large_Left_1,
	LShaped_Large_Left_2,
	LShaped_Large_Left_3,
	LShaped_Large_Left_4,
	LShaped_Large_Left_5,
	LShaped_Large_Left_6,
	LShaped_Large_Left_7
];

roomLShapedLargeLOpfor = [
	LShaped_Large_Left_opfor_0,
	LShaped_Large_Left_opfor_1,
	LShaped_Large_Left_opfor_2,
	LShaped_Large_Left_opfor_3,
	LShaped_Large_Left_opfor_4,
	LShaped_Large_Left_opfor_5,
	LShaped_Large_Left_opfor_6,
	LShaped_Large_Left_opfor_7
];

roomLShapedLargeR = [
	LShaped_Large_Right_0,
	LShaped_Large_Right_1,
	LShaped_Large_Right_2,
	LShaped_Large_Right_3,
	LShaped_Large_Right_4,
	LShaped_Large_Right_5,
	LShaped_Large_Right_6,
	LShaped_Large_Right_7
];

roomLShapedLargeROpfor = [
	LShaped_Large_Right_opfor_0,
	LShaped_Large_Right_opfor_1,
	LShaped_Large_Right_opfor_2,
	LShaped_Large_Right_opfor_3,
	LShaped_Large_Right_opfor_4,
	LShaped_Large_Right_opfor_5,
	LShaped_Large_Right_opfor_6,
	LShaped_Large_Right_opfor_7
];

roomTShapedSmall = [
	TShaped_Small_0,
	TShaped_Small_1,
	TShaped_Small_2,
	TShaped_Small_3,
	TShaped_Small_4,
	TShaped_Small_5,
	TShaped_Small_6,
	TShaped_Small_7,
	TShaped_Small_8,
	TShaped_Small_9,
	TShaped_Small_10
];

roomTShapedLarge =[
	TShaped_Large_0,
	TShaped_Large_1,
	TShaped_Large_2,
	TShaped_Large_3,
	TShaped_Large_4,
	TShaped_Large_5,
	TShaped_Large_6,
	TShaped_Large_7,
	TShaped_Large_8
];

roomIntersection = [
	intersection_0,
	intersection_1,
	intersection_2,
	intersection_3,
	intersection_4,
	intersection_5,
	intersection_6,
	intersection_7,
	intersection_8,
	intersection_9,
	intersection_10,
	intersection_11,
	intersection_12,
	intersection_13,
	intersection_14,
	intersection_15,
	intersection_16,
	intersection_17,
	intersection_18,
	intersection_19,
	intersection_20,
	intersection_21,
	intersection_22,
	intersection_23,
	intersection_24,
	intersection_25,
	intersection_26,
	intersection_27
];

roomIntersectionOpfor = [
	intersection_opfor_1,
	intersection_opfor_2,
	intersection_opfor_4,
	intersection_opfor_3,
	intersection_opfor_5
];

roomSimple = createHashMapFromArray [
	[1, [roomBoxSmall, roomBoxSmallOpfor]],
	[2, [roomBoxLarge, roomBoxLargeOpfor]],
	[3, [roomTubeLong, roomBoxSmallOpfor]],
	[4, [roomTubeWide, roomBoxSmallOpfor]],
	[5, [roomLShapedSmallLeft, roomBoxSmallOpfor]],
	[6, [roomLShapedSmallRight, roomBoxSmallOpfor]],
	[7, [roomLShapedLargeL, roomLShapedLargeLOpfor]],
	[8, [roomLShapedLargeR, roomLShapedLargeROpfor]],
	[9, [roomTShapedSmall, roomBoxSmallOpfor]],
	[10, [roomTShapedLarge, roomBoxSmallOpfor]],
	[11, [roomIntersection, roomIntersectionOpfor]]
];

opforAll = [
	roomBoxSmallOpfor +
	roomBoxLargeOpfor +
	roomLShapedLargeLOpfor +
	roomLShapedLargeROpfor +
	roomIntersectionOpfor
];

roomAll = [
	roomBoxSmall +
	roomBoxLarge +
	roomTubeLong +
	roomTubeWide +
	roomLShapedSmallLeft +
	roomLShapedSmallRight +
	roomLShapedLargeL +
	roomLShapedLargeR +
	roomTShapedSmall +
	roomTShapedLarge +
	roomIntersection
];

{{ hideObject _x } foreach _x} foreach opforAll;
{{ hideObject _x } foreach _x} foreach roomAll;
