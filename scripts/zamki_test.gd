extends Node2D
var current_test = 0
var points : float = 0
var old
var new
@export var tests : Array[Resource]
@onready var pc : PackedScene = load("res://scenes/test.tscn")
func _ready():
	show_test(tests[current_test])

func change():
	old = new
	old.queue_free()
	show_test(tests[current_test])
	
func show_test(test):
	new = pc.instantiate()
	new.test = test
	add_child(new)
	current_test+=1

func check():
	if new.current==tests[current_test].q_answer:
		return true
	else:
		return false
func _on_texture_button_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_texture_button_2_pressed():
	if check():
		points+=1
	if current_test <4:
		change()
	else:
		new.queue_free()
		$TextureButton2.visible = false
		$Label.txt = "Ваш результат: " + str(100*points/5) + "%"
		$Label.appear(true)
