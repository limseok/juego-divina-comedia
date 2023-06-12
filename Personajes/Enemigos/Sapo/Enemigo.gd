extends "res://Personajes/Enemigos/Enemigo.gd"

func _physics_process(delta):
	.aplicar_gravedad(true,delta)
	
	if $left.is_colliding():
		if $left.get_collider().is_in_group("jugadores"):
			direccion.x = -1
			$spr.flip_h =false
	
	if $right.is_colliding():
		if $right.get_collider().is_in_group("jugadores"):
			direccion.x = 1
			$spr.flip_h = true


func _on_anim_animation_finished(anim_name):
	if anim_name == "Muerto":
		queue_free()
