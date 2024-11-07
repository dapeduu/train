/// @description Insert description here
// You can write your code in this editor

var _x_player = inst_player.x
var _y_player = inst_player.y

var _distance = 50

if point_distance(inst_player.x, inst_player.y, inst_train_1.x, inst_train_1.y) < _distance {
	//show_debug_message("Seguindo o trem 1")
	return camera_set_view_target(view_camera[0], inst_train_1)
}

if point_distance(inst_player.x, inst_player.y, inst_train_2.x, inst_train_2.y) < _distance {
	//show_debug_message("Seguindo o trem 2")
	return camera_set_view_target(view_camera[0], inst_train_2)
}

if point_distance(inst_player.x, inst_player.y, inst_train_3.x, inst_train_3.y) < _distance {
	//show_debug_message("Seguindo o trem 3")
	return camera_set_view_target(view_camera[0], inst_train_3)
}