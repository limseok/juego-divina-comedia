extends TouchScreenButton


func _input(event):
	if event.is_action("ui_accept"):
		get_tree().change_scene("res://historia2.tscn")


func _on_siguiente_pressed():
	get_tree().change_scene("res://historia2.tscn")
