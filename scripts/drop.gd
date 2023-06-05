extends Area2D
class_name Drop
@export var id : int
var is_correct = false

func _on_area_entered(area):
	if area is Drag:
		if id==area.id:
			is_correct = true


func _on_area_exited(area):
	if area is Drag && is_correct:
		if id==area.id:
			is_correct = false
