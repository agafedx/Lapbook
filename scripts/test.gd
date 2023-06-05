extends Control
@export var test : Resource
var current : int
func _ready():
	$Label.text = test.header
	$Label2.text = test.q_question1
	$Label3.text = test.q_question2
	$Label4.text = test.q_question3
	$Label5.text = test.q_question4
	$Sprite2D.texture = test.q_image
	$Sprite2D.scale = test.q_image_scale

func _on_check_box_toggled(_button_pressed):
	current = 1
	change_state()

func _on_check_box_2_toggled(_button_pressed):
	current = 2
	change_state()

func _on_check_box_3_toggled(_button_pressed):
	current = 3
	change_state()

func _on_check_box_4_toggled(_button_pressed):
	current = 4
	change_state()

func change_state():
	if current == 1:
		$CheckBox2.button_pressed=false
		$CheckBox3.button_pressed=false
		$CheckBox4.button_pressed=false
	elif current == 2:
		$CheckBox.button_pressed=false
		$CheckBox3.button_pressed=false
		$CheckBox4.button_pressed=false
	elif current == 3:
		$CheckBox2.button_pressed=false
		$CheckBox.button_pressed=false
		$CheckBox4.button_pressed=false
	elif current == 4:
		$CheckBox2.button_pressed=false
		$CheckBox.button_pressed=false
		$CheckBox3.button_pressed=false
