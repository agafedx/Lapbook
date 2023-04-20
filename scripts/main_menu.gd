extends Control
@onready var x = preload("res://scenes/page_manager.tscn")

func _on_button_pressed():
	get_tree().change_scene_to_packed(x)

func _on_button_2_pressed():
	pass # Replace with function body.


func _on_button_3_pressed():
	pass # Replace with function body.
