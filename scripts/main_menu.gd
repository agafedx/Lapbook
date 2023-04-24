extends Control
@onready var history = preload("res://scenes/page_manager.tscn")
@onready var xw = preload("res://scenes/xword_manager.tscn")
@onready var reb = preload("res://scenes/rebus_manager.tscn")
@onready var test = preload("res://scenes/test_manager.tscn")
func _on_button_pressed():
	get_tree().change_scene_to_packed(history)

func _on_button_2_pressed():
	get_tree().change_scene_to_packed(reb)

func _on_button_3_pressed():
	get_tree().change_scene_to_packed(xw)

func _on_button_4_pressed():
	get_tree().change_scene_to_packed(test)

func _on_texture_button_pressed():
	_on_button_pressed()

func _on_texture_button_3_pressed():
	_on_button_3_pressed()

func _on_texture_button_4_pressed():
	_on_button_4_pressed()

func _on_texture_button_2_pressed():
	_on_button_2_pressed()
