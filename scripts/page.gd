extends Control
signal next_started
@export var id = 0
func _ready():
	var x = GameControl.array[id]
	$Panel/Label.text = x.header
	$Panel/RichTextLabel.text = x.text
	$Panel/TextureRect.texture = x.image
	$AnimationPlayer.play("RESET")
func _on_button_pressed():
	next()

func next():
	$AnimationPlayer.play("next")
	emit_signal("next_started")

func new():
	$AnimationPlayer.play("new")