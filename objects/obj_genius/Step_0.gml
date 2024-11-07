/// @description Insert description here
// You can write your code in this editor


// Determina se esta visivel baseado na variavel global
if global.genius_open && !visible {
	show_debug_message("Timer deve rolar")
	
	visible = true	
} 

if !global.genius_open {
	visible = false	
}

if global.genius_open && mouse_check_button_pressed(mb_left) {
	play_sound()
}

// Fecha
if keyboard_check(ord("Q")) {
	global.genius_open = false
}