extends "res://Scripts/StateMachine/State.gd"

func enter():
	owner.get_node("anim").play("Herido")
	global_var.vidas -= 1
	global_var.update_vidas()

func handle_input(event):
	return event

func update(delta):
	move(owner.direccion,owner.aceleracion)

func move(direccion,aceleracion):
	owner.velocidad.x = direccion.x*aceleracion
	owner.move_and_slide(owner.velocidad,Vector2(0,-1))



func _on_anim_animation_finished(anim_name):
	if anim_name == "Herido":
		if global_var.vidas == 0:
			global_var.en_juego = false
		
		emit_signal("finished","Detenido")
