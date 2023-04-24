extends Control
var res : Resource
@export var id : int = 0
signal next_started
var t : Timer
var n : int = 0
func _ready():
	res = GameControl.rebus[id]
	$image.texture = res.texture
	$AnimationPlayer.play("RESET")

func _on_button_pressed():
	if $LineEdit.text.to_lower() == res.text.to_lower():
		if id+1!=len(GameControl.rebus):
			$Button2.disabled = false
		else:
			if $Label2.text=="Завершён":
				return 
			else:
				t = Timer.new()
				add_child(t)
				t.wait_time = 0.1
				t.connect("timeout",t_timeout)
				t.start()

func t_timeout():
	if $Label2.text!="Завершён":
		$Label2.text+="Завершён"[n]
		n+=1
	else:
		t.stop()
		t.queue_free()


func _on_button_2_pressed():
	emit_signal("next_started")
	$AnimationPlayer.play("next")

func new():
	$AnimationPlayer.play("new")


func _on_main_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
