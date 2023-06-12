extends "res://Scripts/StateMachine/state_machine.gd"

func _ready():
	states_map = {"Detenido":$Detenido, "Saltando":$Saltando, "Muerto":$Muerto}
	.set_active(true)
	change_state("Detenido")

func change_state(nuevo_estado):
	.change_state(nuevo_estado)
