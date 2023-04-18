extends Node
@export var array : Array[Resource]
func _ready():
	for i in array:
		print(i.header)
