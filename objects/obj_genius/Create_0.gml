/// @description Insert description here
// You can write your code in this editor

global.genius_open = false

current_state = irandom_range(GENIUS_STATE.TOP, GENIUS_STATE.BOTTOM)
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
	if current_state == GENIUS_STATE.TOP {
		audio_play_sound(sdButton, 10, false)	
	}
	if current_state == GENIUS_STATE.RIGHT {
		audio_play_sound(sdButton, 10, false)	
	}
	if current_state == GENIUS_STATE.LEFT {
		audio_play_sound(sdButton, 10, false)	
	}
	if current_state == GENIUS_STATE.BOTTOM {
		audio_play_sound(sdButton, 10, false)	
	}
}

function next_round() {
	round_size += 1	
}

