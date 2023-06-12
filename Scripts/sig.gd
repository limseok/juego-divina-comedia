extends TouchScreenButton


func _input(event):
	if event.is_action("ui_accept"):
		get_tree().change_scene("res://mision.tscn")


func _on_sig_pressed():
	get_tree().change_scene("res://mision.tscn")
