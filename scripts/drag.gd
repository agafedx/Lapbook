extends Area2D
class_name Drag
@export var id : int
var is_selected = false

func _process(_delta):
	if is_selected:
		follow_mouse()

func follow_mouse():
	position = get_global_mouse_position()


func _on_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			is_selected = true
		else: 
			is_selected = false
