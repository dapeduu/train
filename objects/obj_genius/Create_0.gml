/// @description Insert description here
// You can write your code in this editor

image_index = 3
global.genius_open = false

enum GENIUS_STATE {
	TOP = 1,
	RIGHT = 2,
	LEFT = 3,
	BOTTOM = 4
}

round_size = 1
initial_sequence = []

repeat 10 {
	array_push(initial_sequence, irandom_range(1, 4))
}

function play_sound() {
	audio_play_sound(sdButton, 10, false)	
}

function next_round() {
	round_size += 1	
}

