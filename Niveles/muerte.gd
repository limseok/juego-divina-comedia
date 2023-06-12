extends Node2D


func _process(delta):
	if global_var.en_juego == false and self.visible == false:
		self.visible = true
		if $anim.is_playing() == false:
			$anim.play("mover")



func _on_anim_animation_finished(anim_name):
	if anim_name == "mover":
		get_tree().paused = true


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "mover":
		get_tree().paused = true
