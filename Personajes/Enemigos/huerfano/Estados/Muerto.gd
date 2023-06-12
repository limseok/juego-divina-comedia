extends "res://Scripts/StateMachine/State.gd"


func enter():
	owner.get_node("anim").play("muerto")
