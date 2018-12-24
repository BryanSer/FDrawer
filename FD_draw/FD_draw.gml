/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 00E7D5EE
/// @DnDArgument : "code" "$(13_10)enum FD_MapIndex{$(13_10)	Top = 0, //最顶部的绘制实例$(13_10)	isReversal = 1, //是否翻转$(13_10)	Father = 2, //当前处理的父实例$(13_10)	Scale_X = 3, //X轴放大倍数$(13_10)	Scale_Y = 4, //Y轴放大倍数$(13_10)}$(13_10)var target = argument0$(13_10)$(13_10)var map = ds_map_create()$(13_10)map[? FD_MapIndex.Top] = target$(13_10)map[? FD_MapIndex.isReversal] = target.v_FD_Reversal$(13_10)map[? FD_MapIndex.Father] = pointer_null$(13_10)map[? FD_MapIndex.Scale_X] = abs(target.image_xscale)$(13_10)map[? FD_MapIndex.Scale_Y] = abs(target.image_yscale)$(13_10)FD_set([target, vector_Create(0,0)], map, 0)$(13_10)ds_map_destroy(map)"

enum FD_MapIndex{
	Top = 0, //最顶部的绘制实例
	isReversal = 1, //是否翻转
	Father = 2, //当前处理的父实例
	Scale_X = 3, //X轴放大倍数
	Scale_Y = 4, //Y轴放大倍数
}
var target = argument0

var map = ds_map_create()
map[? FD_MapIndex.Top] = target
map[? FD_MapIndex.isReversal] = target.v_FD_Reversal
map[? FD_MapIndex.Father] = pointer_null
map[? FD_MapIndex.Scale_X] = abs(target.image_xscale)
map[? FD_MapIndex.Scale_Y] = abs(target.image_yscale)
FD_set([target, vector_Create(0,0)], map, 0)
ds_map_destroy(map)