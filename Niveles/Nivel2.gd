extends Node2D


export (PackedScene) var spr_vidas

func _ready():
	global_var.update_vidas()
