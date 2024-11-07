/// @description Insert description here
// You can write your code in this editor

// Movement
#region
x_speed = 0

if (!place_meeting(x, y + 1, obj_train)) 
{
	y_speed += grav;
} else {
	y_speed = 0	
}

var _right_key = keyboard_check(ord("D"))
var _left_key = keyboard_check(ord("A"))

x_speed = (_right_key - _left_key) * move_speed
#endregion

// Jumping
#region
if (keyboard_check(ord("W")) && place_meeting(x, y + 1, obj_train)) {
	y_speed = jump_speed	
}
#endregion

move_and_collide(x_speed, y_speed, obj_train)