extends Control




func _on_jugar_pressed():
	get_tree().change_scene("res://historia2.tscn")


func _on_salir_pressed():
	get_tree().quit()
