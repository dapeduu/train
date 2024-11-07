/// @description Insert description here
// You can write your code in this editor

release_button()

if mouse_check_button_pressed(mb_left) && instance_position(mouse_x, mouse_y, self)   {
	push_button(false)
}

if is_playing {
	image_index = is_genius ? highligh_color : pressed_image_index	
}