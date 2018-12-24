/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 615D27F1
/// @DnDArgument : "code" "/// @function  FD_newComponent(comp, vec)$(13_10)/// @description 创建新的FD组件$(13_10)/// @arg {instance} 添加的组件实例$(13_10)/// @arg {vector} 组件的相对坐标(矢量)$(13_10)enum Component_Index{$(13_10)	Component = 0,$(13_10)	RelatLocation = 1$(13_10)}$(13_10)var comp = argument0$(13_10)var vec = argument1$(13_10)$(13_10)return [comp, vec]"
/// @function  FD_newComponent(comp, vec)
/// @description 创建新的FD组件
/// @arg {instance} 添加的组件实例
/// @arg {vector} 组件的相对坐标(矢量)
enum Component_Index{
	Component = 0,
	RelatLocation = 1
}
var comp = argument0
var vec = argument1

return [comp, vec]