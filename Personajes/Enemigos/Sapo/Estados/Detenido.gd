extends "res://Scripts/StateMachine/State.gd"

func enter():
	owner.get_node("anim").play("Detenido")
	owner.get_node("nuevo_salto").wait_time = owner.get_node("anim").current_animation_lenght * 9
	owner.get_node("nuevo_salto").start()


func _on_nuevo_salto_timeout():
	emit_signal("finished","Saltando")
