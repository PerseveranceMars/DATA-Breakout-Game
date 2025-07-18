extends RigidBody2D

var LabelNode

func _ready():
	LabelNode = get_node("../../ScoreText")

func _on_Area2D_body_entered(body):
	if body.is_in_group("Ball"):
		
		LabelNode.Score += 5000
		queue_free()


onready var wintext = preload("res://WinText.tscn")


func _process(delta):
	if get_child_count() == 0:
		get_tree().paused = true
		var WinText = wintext.instance()
		add_child(WinText)
