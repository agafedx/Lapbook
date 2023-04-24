extends Control
@export var files : Array[Resource]
var xw : PackedScene = preload("res://scenes/xword.tscn")

func _on_button_pressed():
	get_tree().change_scene_to_packed(xw)
	GameControl.current_xw = 0

func _on_button_2_pressed():
	get_tree().change_scene_to_packed(xw)
	GameControl.current_xw = 1

func _on_button_3_pressed():
	get_tree().change_scene_to_packed(xw)
	GameControl.current_xw = 2

func _on_button_4_pressed():
	get_tree().change_scene_to_packed(xw)
	GameControl.current_xw = 3

func _on_button_5_pressed():
	get_tree().change_scene_to_packed(xw)
	GameControl.current_xw = 4


func _on_main_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
