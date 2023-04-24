extends Control
var res : Resource
@export var id : int = 0
signal next_started
func _ready():
	res = GameControl.rebus[id]
	$image.texture = res.texture
	$AnimationPlayer.play("RESET")

func _on_button_pressed():
	if $LineEdit.text.to_lower() == res.text.to_lower():
		$Button2.disabled = false

func _on_button_2_pressed():
	emit_signal("next_started")
	$AnimationPlayer.play("next")

func new():
	$AnimationPlayer.play("new")


func _on_main_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
