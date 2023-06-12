extends KinematicBody2D

signal finished;
signal sacudir;

var velocidad = Vector2(0,0);
var distancia = Vector2(0,0);
var aceleracion =45.50;
var gravedad = 450;
var v_salto = 180;
var direccion = Vector2(0,0);

func _physics_process(delta):
	aplicar_gravedad(true,delta);

func _input(event):
	direccion.x = int (Input.is_action_pressed("ui_right"))-int(Input.is_action_pressed("ui_left"));		
	if direccion.x !=0:
		get_node("Position2D").scale = Vector2(direccion.x,1);
	return event;

func aplicar_gravedad(value,delta):
	if value:
		velocidad.y += gravedad * delta;
		var col_info = move_and_slide(velocidad,Vector2(0,-1))
		
		if get_slide_count() != 0:
			var cuerpo = get_slide_collision(get_slide_count()-1);
			
			if cuerpo.normal == Vector2(0,-1):
				velocidad.y = 0;
			
			if cuerpo.normal == Vector2(0,-1)and cuerpo.collider.is_in_group("Enemigos"):
				cuerpo.collider.muerto()
				cuerpo.collider.aplicar_gravedad(false,null)
				cuerpo.collider.set_physics_process(false)
				emit_signal("finished","Saltando")
				emit_signal("sacudir",7.0)
			
			if is_on_floor():
				velocidad.y = 0;
				
				if Input.is_action_just_pressed("ui_up"):
					emit_signal("finished","Saltando")
		
		return col_info;
	else:
		return;


func _on_cubo_body_entered(body):
	if body.get_name() == "Inca":
		get_tree().change_scene("res://Niveles/Nivel2.tscn")


func _on_Button_pressed():
	global_var.en_juego = true
	global_var.vidas = 3
	get_tree().paused = false
	get_tree().reload_current_scene()


func _on_cubo_body_shape_entered(body_id, body, body_shape, area_shape):
	if body.get_name() == "Inca":
		get_tree().change_scene("res://agradecimientos.tscn")






