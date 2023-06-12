extends "res://Scripts/StateMachine/state_machine.gd"

func _ready():
	states_map = {"Saltando":$Saltando,"Detenido":$Detenido,"Moviendose":$Moviendose,"Herido":$Herido}
	
	.set_active(true)
	change_state("Detenido")

func change_state(state_name):
	.change_state(state_name)
