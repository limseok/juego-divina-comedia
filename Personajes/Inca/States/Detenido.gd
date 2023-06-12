extends "res://Scripts/StateMachine/State.gd"

func enter():
	owner.get_node("anim").play("Detenido")

func handle_input(event):
	if Input.is_action_just_pressed("ui_up"):
		if owner.is_on_floor():
			owner.velocidad.y = 0
			emit_signal("finished","Saltando")
	
func update(delta):
	if owner.direccion.x !=0:
		emit_signal("finished","Moviendose")
