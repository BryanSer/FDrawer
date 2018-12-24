/// @desc 递归绘制图像
/// @args {Component} 要绘制的组件
/// @arg {map} 原始Map
/// @arg {real} 积累角度

var t_component = argument0 // Component
var t_map = argument1
var t_flockAngle = argument2

var t_target = t_component[Component_Index.Component]//本次要处理的目标
var t_offset = t_component[Component_Index.RelatLocation]

var t_father = t_map[? FD_MapIndex.Father]

var t_oric = [t_target.x, t_target.y]//父组件坐标
if(t_father != pointer_null){
	t_oric[0] = t_father.x
	t_oric[1] = t_father.y
}
var t_isRev = 1 //1表示不翻转
if(t_target.v_FD_Reversal){
	t_isRev = -1
}
if(t_target.v_FD_ExtendReversal && t_map[? FD_MapIndex.isReversal] && t_map[? FD_MapIndex.Top] != t_target){
	//若继承翻转且顶部翻转 则反转t_isRev
	t_isRev *= -1
}
var t_scale = [abs(t_target.image_xscale), t_target.image_yscale]//缩放的数组 y的留作以后使用
if(t_target.v_FD_ExtendScale){
	t_scale[0] = t_map[? FD_MapIndex.Scale_X]
	t_scale[1] = t_map[? FD_MapIndex.Scale_Y]
}

var t_length = vector_Length(t_offset)
var t_offangle = t_flockAngle + vector_ToAngle(t_offset)
t_offset = vector_Multiply(vector_Unitization(vector_FromAngle(t_offangle)), t_length)

//定位坐标
t_target.x = t_oric[0] + t_offset[0] * t_scale[0] * t_isRev
t_target.y = t_oric[1] + t_offset[1] * t_scale[1]
t_scale[0] *= t_isRev //尝试翻转X
t_target.image_xscale = t_scale[0]
t_target.image_yscale = t_scale[1]

var t_angle = t_flockAngle  //原始角度
t_angle += t_isRev * (t_target.v_FD_MotionAngle + t_target.v_FD_Towards)

t_target.image_angle = t_angle



if(t_target.v_FD_Amount == 0){
	exit
}
for(var i = 0; i < t_target.v_FD_Amount; i++){
	var t_sub = t_target.v_FD_Component[i]
	if(t_sub != 0){// 0是数组元素的默认值
		t_map[? FD_MapIndex.Father] = t_target
		FD_set(t_sub, t_map, t_angle)
		t_map[? FD_MapIndex.Father] = t_father
	}
}















