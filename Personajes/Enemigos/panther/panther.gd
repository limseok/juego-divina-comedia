extends "res://Personajes/Enemigos/Enemigo.gd"

func _physics_process(delta):
	.aplicar_gravedad(true,delta)
	
	var t =self.transform
	t[2].x += 5 if direccion.x == 1 else -5
	
	if !test_move(t,Vector2(5,2)):
		direccion.x = -1
		$spr.flip_h = false
	elif !test_move(t,Vector2(5,2)):
		direccion.x = -1
		$spr.flip_h = true
	
	if is_on_wall():
		direccion.x = 1 if direccion.x == -1 else -1
		$spr.flip_h = false if $spr.flip_h == true else true 

func _on_anim_animation_finished(anim_name):
	if anim_name == "muerto":
		self.queue_free()


func _on_Detectar_body_entered(body):
	if body.is_in_group("jugadores") and body.get_node("anim").current_animation != "Herido":
		body.emit_signal("finished","Herido")
