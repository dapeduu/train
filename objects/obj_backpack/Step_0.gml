/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(ord("E"))) {
	var _player_distance = distance_to_object(obj_player);
	if _player_distance > 2 return; 
	if global.bag_open return;
	
	global.bag_open = true;
}