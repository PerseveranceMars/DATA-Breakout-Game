extends Node2D


export var LevelToLoad : String

func _process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		get_tree().change_scene(LevelToLoad)
