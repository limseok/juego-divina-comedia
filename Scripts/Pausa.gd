extends TouchScreenButton

func _input(event):
	if event.is_action_pressed("pausa"):
		get_tree().paused = !get_tree().paused
