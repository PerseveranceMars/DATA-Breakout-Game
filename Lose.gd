extends Node2D


func _process(delta):
	if(Input.is_key_pressed(KEY_SPACE)):
		get_tree().paused = false
		get_tree().reload_current_scene()
		queue_free()
