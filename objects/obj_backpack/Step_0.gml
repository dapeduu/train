/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("E"))) {
	var _player_distance = distance_to_object(obj_player)
	if _player_distance > 2 return 
	
	if !global.player_has_knife global.player_has_knife = true
	show_debug_message("Player tem a faca, mostrar de alguma forma")
}