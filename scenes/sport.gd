extends Node2D




func _on_texture_button_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_texture_button_2_pressed():
	var check = true
	$drop.visible = false
	$drag.visible = false
	$TextureButton2.visible = false
	for i in $drop.get_children():
		if i is Drop:
			if !i.is_correct:
				check = false
	$Label.appear(check)
