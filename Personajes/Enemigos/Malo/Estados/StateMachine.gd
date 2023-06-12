extends "res://Scripts/StateMachine/state_machine.gd"

func _ready():
	states_map = {"Movimiento":$Movimiento,"Muerto":$Muerto}
	.set_active(true)
	change_state("Movimiento")

func change_state(nuevo_estado):
	.change_state(nuevo_estado)
