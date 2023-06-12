extends TouchScreenButton


func _input(event):
	if event.is_action("ui_accept"):
		get_tree().change_scene("res://Niveles/Principal.tscn")


func _on_sigu_pressed():
	get_tree().change_scene("res://Niveles/Principal.tscn")
