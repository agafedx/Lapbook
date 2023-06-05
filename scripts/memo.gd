extends Control

@export var test : Array[Resource]
var test_ans = {
0:0,
1:0,
2:0,
3:0,
4:0,
5:0,
6:0,
7:0,
8:0,
9:0
}
var current : int = 0
func _ready():
	update()
func update():
	$TextureButton.texture_normal = test[current].image1
	$TextureButton2.texture_normal = test[current].image2
	$Label.text = test[current].text


func _on_texture_button_pressed():
	test_ans[current]=1
	if current==9:
		end()	
	else:
		current+=1
		update()


func _on_texture_button_2_pressed():
	test_ans[current]=2
	if current ==9:
		end()
	else:
		current+=1
		update()

func get_balls():
	var x = 0.0
	for i in 10:
		if test_ans[i]==test[i].correct:
			x+=1
	return x

func _on_texture_button_3_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func end():
	$TextureButton.visible = false
	$Label.visible = false
	$TextureButton2.visible = false
	$Label2.txt = "Ваш результат: " + str(100*get_balls()/10) + "%"
	$Label2.appear(true)
