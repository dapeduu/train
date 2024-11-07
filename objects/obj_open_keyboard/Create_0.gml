/// @description Insert description here
// You can write your code in this editor



show_debug_message("X: {0}, Y: {1}", view_xport[0], view_yport[0])

x = 50
y = 0

image_index = PANEL_STATE.CLOSED // Painel fechado
can_interact = true

// enum mapeando o index das imagens
enum PANEL_STATE {
	CLOSED = 0,
	OPEN = 1,
	CUTTED = 2
}