extends Control



func _on_texture_button_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_texture_button_2_pressed():
	get_tree().change_scene_to_file("res://scenes/sport.tscn")

func _on_texture_button_3_pressed():
	get_tree().change_scene_to_file("res://scenes/sport1.tscn")

func _on_texture_button_4_pressed():
	get_tree().change_scene_to_file("res://scenes/sport2.tscn")

func _on_texture_button_5_pressed():
	get_tree().change_scene_to_file("res://scenes/sport3.tscn")
