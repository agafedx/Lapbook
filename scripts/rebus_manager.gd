extends Control
@export var arr : Array[PackedScene]
var current
var old
var number : int = 0

func add():
	current =  arr[number].instantiate()
	add_child(current)
	current.connect("next_started", next)
	number += 1
	return current

func _ready():
	current = add()

func next():
	if old:
		old.queue_free()
	old = current
	current = add()
	current.new()

