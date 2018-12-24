var t_target = argument0
var t_priority = argument1
if(t_target.v_FD_Priority == t_priority){
	with(t_target){
			draw_self()
	}
}
for(var i = 0; i < t_target.v_FD_Amount; i++){
	var t_tar = t_target.v_FD_Component[i]
	if(t_tar != 0){
		FD_drawPriority(t_tar[Component_Index.Component], t_priority)
	}
}

