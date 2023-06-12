extends "res://Scripts/StateMachine/state_machine.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	states_map = {"Movimiento":$Movimiento,"Muerto":$Muerto}
	.set_active(true)
	change_state("Movimiento")

func change_state(nuevo_estado):
	.change_state(nuevo_estado)
