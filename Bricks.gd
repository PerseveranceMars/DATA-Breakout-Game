extends Node2D

onready var brick = preload("res://Brick.tscn")
onready var brick2 = preload("res://Brick2.tscn")
onready var brick3 = preload("res://BRick3.tscn")

func _ready():
	for j in range(300, 700, 125):
		for i in range(160, 1820, 100):
			var newBrick = brick.instance()
			newBrick.position = Vector2(i,j)
			add_child(newBrick)
			
	for j in range(300, 500, 125):
		for i in range(160, 1820, 100):
			var newBrick = brick2.instance()
			newBrick.position = Vector2(i,j)
			add_child(newBrick)
			
	for j in range(300, 400, 125):
		for i in range(160, 1820, 100):
			var newBrick = brick3.instance()
			newBrick.position = Vector2(i,j)
			add_child(newBrick)


onready var wintext = preload("res://WinText.tscn")

func _process(delta):
	if get_child_count() == 0:
		get_tree().paused = true
		var WinText = wintext.instance()
		add_child(WinText)
