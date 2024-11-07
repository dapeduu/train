/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


if global.bag_open && !visible {
	show_debug_message("Timer deve rolar")
	
	visible = true	
} 

if !global.bag_open {
	visible = false	
}


if global.bag_open && mouse_check_button(mb_left) && can_interact{
	
	
	if image_index == BAG_STATE.CLOSED {
		image_index = BAG_STATE.OPEN	
	} else if image_index == BAG_STATE.OPEN {
		global.player_has_knife = true
		image_index = BAG_STATE.EMPTY
	}
	can_interact = false
	alarm_set(0, game_get_speed(gamespeed_fps) * .5)
}

// Fecha
if keyboard_check(ord("Q")) {
	global.bag_open = false
}

