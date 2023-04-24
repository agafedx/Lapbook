extends Control

var tst : PackedScene = preload("res://scenes/test.tscn")

func _on_button_pressed():
	get_tree().change_scene_to_packed(tst)
	GameControl.current_tst = 0


func _on_button_2_pressed():
	get_tree().change_scene_to_packed(tst)
	GameControl.current_tst = 1


func _on_button_3_pressed():
	get_tree().change_scene_to_packed(tst)
	GameControl.current_tst = 2


func _on_button_4_pressed():
	get_tree().change_scene_to_packed(tst)
	GameControl.current_tst = 3


func _on_button_5_pressed():
	get_tree().change_scene_to_packed(tst)
	GameControl.current_tst = 4

func _on_main_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
