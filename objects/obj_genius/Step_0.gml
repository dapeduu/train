/// @description Insert description here
// You can write your code in this editor


// Determina se esta visivel baseado na variavel global
if global.genius_open && !visible {
	show_debug_message("Timer deve rolar")
	
	inst_genius_green.visible = true
	inst_genius_blue.visible = true
	inst_genius_red.visible = true
	inst_genius_yellow.visible = true

	play_round()

	visible = true	
} 

show_debug_message("user_sequence: {0}",array_length(user_sequence) )
show_debug_message("round_sequence: {0}",array_length(round_sequence) )
show_debug_message("turn: {0}", turn)
show_debug_message("current note: {0}", current_note)

if array_length(user_sequence) >= array_length(round_sequence) && turn = "pessoa"  {
	show_debug_message("resetou")
	is_correct()
}

if !global.genius_open {
	visible = false	
	inst_genius_green.visible = false
	inst_genius_blue.visible = false
	inst_genius_red.visible = false
	inst_genius_yellow.visible = false
}

// Fecha
if keyboard_check(ord("Q")) {
	global.genius_open = false
	reset_game()
}