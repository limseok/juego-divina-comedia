extends TouchScreenButton


func _input(event):
	if event.is_action("ui_accept"):
		get_tree().change_scene("res://historia.tscn")

func _on_entrar_pressed():
	get_tree().change_scene("res://historia.tscn")
