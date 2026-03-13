extends ColorRect

@onready var word_label = %Label

var grid_position: Vector2
var target_word: String = ""
var is_revealed: bool = false
var is_mine: bool = false
var number_of_neighboring_mines: int = 0

func set_data(pos: Vector2, word: String):
	grid_position = pos
	target_word = word
	
	if word_label:
		word_label.text = target_word
