extends Control


func _on_texture_button_pressed():
	get_tree().change_scene_to_file("res://scenes/zamki.tscn")

func _on_texture_button_2_pressed():
	get_tree().change_scene_to_file("res://scenes/memo.tscn")

func _on_texture_button_3_pressed():
	get_tree().change_scene_to_file("res://scenes/sport_choose.tscn")

func _on_texture_button_4_pressed():
	get_tree().change_scene_to_file("res://scenes/stolici.tscn")

func _on_texture_button_5_pressed():
	pass
