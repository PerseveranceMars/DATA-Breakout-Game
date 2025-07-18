extends Node2D

export var LevelToLoad : String

func _process(delta):
	if Input.is_key_pressed(KEY_SPACE):
		get_tree().change_scene(LevelToLoad)
