extends PanelContainer
signal start_check
@export var test : Resource
func _ready():
	$Panel/Label.text = test.text
func _on_line_edit_text_changed(new_text):
	if new_text.to_lower() == test.answer.to_lower():
		$Panel/LineEdit.editable = false
		emit_signal("start_check")
func check():
	return !$Panel/LineEdit.editable
