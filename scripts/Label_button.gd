extends Label
@export var path : String
@export var txt : String
var complete = false
func _on_touch_screen_button_pressed():
	if complete: 
		get_tree().change_scene_to_file(path)
	else:
		get_tree().reload_current_scene()
func appear(x):
	visible = true
	complete = x
	if txt=="":
		if complete:
			text = "Верно!"
		else:
			text = "Не верно!"
	else:
		text = txt
