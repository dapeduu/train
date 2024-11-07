/// @description Insert description here
// You can write your code in this editor

enum GENIUS_COLOR {
	GREEN = 14,
	YELLOW = 8,
	BLUE = 10,
	RED = 12
}

is_genius = type == "genius"
is_playing = false

normal_color = 0
highligh_color = 0


if is_genius {
	if genius_color == "green" {
		normal_color = GENIUS_COLOR.GREEN
		highligh_color = normal_color + 1
	}
	
	if genius_color == "red" {
		normal_color = GENIUS_COLOR.RED
		highligh_color = normal_color + 1
	}
	
	if genius_color == "blue" {
		normal_color = GENIUS_COLOR.BLUE
		highligh_color = normal_color + 1
	}
	
	if genius_color == "yellow" {
		normal_color = GENIUS_COLOR.YELLOW
		highligh_color = normal_color + 1
	}
}

function get_user_input(is_machine) {
	if is_machine return;
	
	show_debug_message("value: {0}")
	var _count = 0
	repeat array_length(inst_genius.user_sequence)  {
		show_debug_message("user sequence: {0}",inst_genius.user_sequence[_count])
		_count += 1
	}
	
	array_push(inst_genius.user_sequence, genius_value)
}

/**
 *  Function Description
 * @param {boolean} is_machine  Description
 */
function play_sound(is_machine) {
	if !is_genius return;
	is_playing = true
	
	alarm_set(0, game_get_speed(gamespeed_fps) * .5)
	get_user_input(is_machine)
	audio_play_sound(sound, 10, false);
}

function push_button(is_machine=false) { 
	image_index = is_genius ? highligh_color : pressed_image_index	
	
	play_sound(is_machine)
}

function release_button() {
	image_index = is_genius ? normal_color : released_image_index
}