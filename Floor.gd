extends Area2D

onready var losetext = preload("res://Lose.tscn")

export var LevelToLoad : String

func _on_Floor_body_entered(body):
	if body.is_in_group("Ball"):
		get_tree().paused = true
		var LoseText = losetext.instance()
		add_child(LoseText)




