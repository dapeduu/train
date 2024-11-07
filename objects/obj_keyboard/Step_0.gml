/// @description Insert description here
// You can write your code in this editor


if (keyboard_check(ord("E"))) {
	var _player_distance = distance_to_object(obj_player)
	if _player_distance > 2 return
	if variable_global_get(type) return
	
	show_debug_message("Player abriu o terminal")
	variable_global_set(type, true) 
}