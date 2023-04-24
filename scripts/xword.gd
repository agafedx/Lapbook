extends Control
@export var crossword_size : int 
@onready var letter : PackedScene = preload("res://scenes/letter.tscn")
@onready var crossword = $Panel/ScrollContainer/crossword
var files : Resource
var xw : Array[String]
var ans : Array[String]
var qst : Array[String]
var n : int = 0
@onready var t : Timer

func _ready():
	files = GameControl.files[GameControl.current_xw]
	crossword.columns = GameControl.crossword_size
	read_xword()
	read_answers()
	read_qustions()
	for i in qst:
		$PopupPanel/Label.text += i + "\n"
	print(xw)
	print(ans)
	print(qst)
func read_xword():
	var f = FileAccess.open(files.file, FileAccess.READ)
	var result : PackedStringArray = []
	while !f.eof_reached():
		var csv = f.get_csv_line()
		result+=csv
	f.close()
	for i in result:
		for j in i:
			if j=="#":
				xw.append("")
			elif j==";":
				continue
			else:
				xw.append(j)
	for i in xw:
		var l = letter.instantiate()
		l.s = i
		crossword.add_child(l)

func read_answers():
	var f = FileAccess.open(files.answers, FileAccess.READ)
	var result : PackedStringArray = []
	while !f.eof_reached():
		var csv = f.get_csv_line()
		result+=csv
	f.close()
	for i in result:
		for j in i:
			if j=="#":
				ans.append("")
			elif j==";":
				continue
			else:
				ans.append(j)

func read_qustions():
	var f = FileAccess.open(files.questions, FileAccess.READ)
	var result : PackedStringArray = []
	while !f.eof_reached():
		var csv = f.get_csv_line()
		result+=csv
	f.close()
	for i in result:
			qst.append(i)

func _on_button_pressed():
	var err : bool = false
	for i in len(xw):
		if xw[i]!="":
			if crossword.get_child(i).s==ans[i]:
				crossword.get_child(i).correct()
			else:
				err=true
	if !err:
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
	if $PopupPanel.visible:$PopupPanel.visible = false
	else: $PopupPanel.visible = true


func _on_main_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
