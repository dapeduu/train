/// @description Insert description here
// You can write your code in this 

show_debug_message("xcamera: {0}, xviewport: {1}", camera_get_view_x(view_camera[0]) + view_wport[0],  camera_get_view_y(view_camera[0]))
x =  camera_get_view_x(view_camera[0]) / 2

// Determina se esta visivel baseado na variavel global
if global.keyboard_open && !visible {
	show_debug_message("Timer deve rolar")
	
	visible = true	
} 

if !global.keyboard_open {
	visible = false	
}

// Interage se puder
if global.keyboard_open && mouse_check_button(mb_left) && can_interact {
	
	if image_index == PANEL_STATE.CLOSED {
		image_index = PANEL_STATE.OPEN	
	} else if image_index == PANEL_STATE.OPEN && global.player_has_knife {
		image_index = PANEL_STATE.CUTTED	
	}
	can_interact = false
	alarm_set(0, game_get_speed(gamespeed_fps) * .5) // Pode interagir dps de .5 seg
}

// Fecha
if keyboard_check(ord("Q")) {
	global.keyboard_open = false
}
