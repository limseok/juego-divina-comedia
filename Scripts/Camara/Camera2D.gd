extends Camera2D

onready var timer = $Timer

export var amplitud = 3.0
export var duracion = 0.8 setget in_duracion
export (float, EASE) var  DAMP_EASING = 1.0

var sacudida = false setget sacudir

func _ready():
	randomize()
	set_process(false)
	self.duracion = 0.7
	get_parent().connect("sacudir",self, "sacudiendo")
	
func _process(delta):
	var damping = ease(timer.time_left/timer.wait_time,DAMP_EASING)
	offset = Vector2(rand_range(-amplitud,amplitud)*damping,
			rand_range(-amplitud,amplitud)*damping)

func sacudiendo(nueva_amplitud):
	self.sacudida = true
	self.amplitud = nueva_amplitud

func sacudir(nuevo_valor):
	sacudida = nuevo_valor
	set_process(sacudida)
	offset = Vector2()
	
	if sacudida:
		timer.start()

func in_duracion(nueva_duracion):
	duracion = nueva_duracion
	timer.wait_time = duracion 

func _on_Timer_timeout():
	self.sacudida = false
