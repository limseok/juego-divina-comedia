extends KinematicBody2D

signal finished

var velocidad = Vector2(0,0);
var distancia = Vector2(0,0);
var aceleracion =45.50;
var gravedad = 450;
var direccion = Vector2(0,0);
var v_salto = 90;

func _physics_process(delta):
	pass

func aplicar_gravedad(value,delta):
	if value:
		velocidad.y += gravedad * delta;
		var col_info = move_and_slide(velocidad,Vector2(0,-1))
		
		if get_slide_count() != 0:
			var cuerpo = get_slide_collision(get_slide_count()-1);
			
			if cuerpo.normal == Vector2(0,-1):
				velocidad.y = 0;
			
			if is_on_floor():
				velocidad.y = 0;
		
		return col_info
	else:
		return;

func muerto():
	emit_signal("finished","Muerto")
	velocidad =  Vector2(0,0)
