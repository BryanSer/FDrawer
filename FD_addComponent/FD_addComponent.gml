/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 356EAAE4
/// @DnDArgument : "code" "/// @function  FD_addComponent(comp, vec)$(13_10)/// @description 添加新的FD组件$(13_10)/// @arg {instance} 被添加的实例$(13_10)/// @arg {object} 还未实例化的 即将添加的子组件$(13_10)/// @arg {integer} 组件下标$(13_10)/// @arg {vector} 组件相对坐标$(13_10)/// @arg {point} 组件要生成的图层$(13_10)var target = argument0$(13_10)var obj = argument1$(13_10)var index = argument2$(13_10)var offset = argument3$(13_10)var t_layer = argument4$(13_10)var t_sub = instance_create_layer(target.x, target.y, t_layer, obj)$(13_10)target.v_FD_Component[index] = FD_newComponent(t_sub,offset)"
/// @function  FD_addComponent(comp, vec)
/// @description 添加新的FD组件
/// @arg {instance} 被添加的实例
/// @arg {object} 还未实例化的 即将添加的子组件
/// @arg {integer} 组件下标
/// @arg {vector} 组件相对坐标
/// @arg {point} 组件要生成的图层
var target = argument0
var obj = argument1
var index = argument2
var offset = argument3
var t_layer = argument4
var t_sub = instance_create_layer(target.x, target.y, t_layer, obj)
target.v_FD_Component[index] = FD_newComponent(t_sub,offset)