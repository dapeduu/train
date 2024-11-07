/// @description Insert description here
// You can write your code in this editor

current_state = irandom_range(GENIUS_STATE.TOP, GENIUS_STATE.BOTTOM)
enum GENIUS_STATE {
	TOP = 1,
	RIGHT = 2,
	LEFT = 3,
	BOTTOM = 4
}

current_sequence_size = 1

initial_sequence = []
final_sequencies = []

repeat 10 {
	array_push(initial_sequence, irandom_range(1, 4))
}

