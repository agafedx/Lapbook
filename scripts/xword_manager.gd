extends Control
var xw : PackedScene = preload("res://scenes/xword.tscn")

func _on_button_pressed():
	get_tree().change_scene_to_packed(xw)
	GameControl.current_xw = 0
	GameControl.crossword_size = 9

func _on_button_2_pressed():
	get_tree().change_scene_to_packed(xw)
	GameControl.current_xw = 1
	GameControl.crossword_size = 12

func _on_button_3_pressed():
	get_tree().change_scene_to_packed(xw)
	GameControl.current_xw = 2
	GameControl.crossword_size = 12

func _on_button_4_pressed():
	get_tree().change_scene_to_packed(xw)
	GameControl.current_xw = 3
	GameControl.crossword_size = 10

func _on_button_5_pressed():
	get_tree().change_scene_to_packed(xw)
	GameControl.current_xw = 4
	GameControl.crossword_size = 9


func _on_main_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
