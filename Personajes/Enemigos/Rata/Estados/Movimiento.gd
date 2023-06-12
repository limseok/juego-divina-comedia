extends "res://Scripts/StateMachine/State.gd"

func enter():
	owner.get_node("anim").play("Movimiento")

func handle_input(event):
	return event

func update(delta):
	move(owner.direccion,owner.aceleracion)

func move(direccion,aceleracion):
	owner.velocidad.x = direccion.x*aceleracion
	owner.move_and_slide(owner.velocidad,Vector2(0,-1))	
	get_tree().get_nodes_in_group("sfx")[0].get_node("1").play()	
	
