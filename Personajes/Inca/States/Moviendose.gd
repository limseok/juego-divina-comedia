extends "res://Scripts/StateMachine/State.gd"

func enter():
	owner.get_node("anim").play("Moviendose")

func handle_input(event):
	return event

func update(delta):
	if owner.direccion.x == 0:		
		emit_signal("finished","Detenido")				
	if owner.is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			owner.velocidad.y = 0			
			emit_signal("finished","Saltando")	
			return			
	
	move(owner.direccion,owner.aceleracion)

func move(direccion,aceleracion):
	owner.velocidad.x = direccion.x*aceleracion
	owner.move_and_slide(owner.velocidad,Vector2(0,-1))	
