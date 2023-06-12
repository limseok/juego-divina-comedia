extends Node

var vidas = 3
var position_de_plataforma = Vector2(100,100)
var en_juego = true
func update_vidas():
	get_tree().get_nodes_in_group("vidas")[0].text=String(vidas)
