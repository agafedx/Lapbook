extends PanelContainer
@export var s : String = ""

func _ready():
	var regex = RegEx.new()
	regex.compile("\\b([0-9]|[1-9][0-9])\\b")
	var z = regex.search(s)
	if z:
		$LineEdit.editable=false
	$LineEdit.text = s
	if $LineEdit.text=="":
		$LineEdit.editable=false
	elif $LineEdit.text == "*":
		$LineEdit.text=""
func correct():
	$LineEdit.editable=false
func _on_line_edit_text_changed(new_text):
	$LineEdit.text = new_text.to_lower()
	s = new_text
