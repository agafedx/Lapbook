extends Control
var id : int = 0
var test_q : PackedScene = preload("res://scenes/test_question.tscn")
var t : Timer
var n : int = 0
func _ready():
	id = GameControl.current_tst
	add_test()

func add_test():
	var z = GameControl.tests[id]
	for i in 5:
		var x = test_q.instantiate()
		x.test = z.test[i]
		%tests.add_child(x)
		x.connect("start_check",start_check)
func start_check():
	var b : bool = true
	for i in %tests.get_children():
		b = i.check()
	if b:
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


func _on_main_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
