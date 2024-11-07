/// @description Insert description here
// You can write your code in this editor

image_index = 3
global.genius_open = false

genius_buttons = {
	"b1": inst_genius_yellow,
	"b2": inst_genius_red,
	"b3": inst_genius_blue,
	"b4": inst_genius_green
}

turn = "maquina"
round_size = 1
current_note = 0 // indice da nota a ser tocada
initial_sequence = []
round_sequence = []
user_sequence = []

repeat 2 {
	array_push(initial_sequence, irandom_range(1, 4))
}

function next_round() {
	round_size += 1;
	current_note = 0;
	user_sequence = []
	
	play_round()
}

function is_correct() {
	var _is_correct = array_equals(round_sequence, user_sequence)
	
	turn = "maquina"
	if !_is_correct {
		reset_game()
		play_round()
		return
	} 
	
	if array_length(initial_sequence) == round_size {
		show_debug_message("ganhouuuuuuuuuu")
		// abre a porta
		return
	}
	
	next_round()
}

function reset_game() {
	round_size = 1
	current_note = 0
	round_sequence = []
	user_sequence = []
	
	// tocar som de erro
}

function play_round() {
	array_copy(round_sequence, 0, initial_sequence, 0, round_size);
	
	alarm_set(0, game_get_speed(gamespeed_fps) * 1)
}

function play_note(index) {
	struct_get(genius_buttons, "b" + string(round_sequence[current_note])).play_sound(true)
	current_note += 1

	if current_note == round_size {
		turn = "pessoa"
		return
	} 

	alarm_set(index, game_get_speed(gamespeed_fps) * 1)
}
