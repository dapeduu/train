/// @description Insert description here
// You can write your code in this editor

enum GENIUS_COLOR {
	GREEN = 14,
	YELLOW = 8,
	BLUE = 10,
	RED = 12
}

is_genius = type == "genius"

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

function push_button() { 
	image_index = is_genius ? highligh_color : pressed_image_index	
}

function release_button() {
	image_index = is_genius ? normal_color : released_image_index
}