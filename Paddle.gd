extends KinematicBody2D



export var paddleSpeed = 500

func _process(delta):
	position.y = 950
	var movement = 0
	if Input.is_key_pressed(KEY_LEFT):
		movement -= 1
	if Input.is_key_pressed(KEY_RIGHT):
		movement += 1
	move_and_slide(Vector2(movement, 0)*paddleSpeed)
	
	#if Input.is_key_pressed(KEY_A):
		#rotation_degrees -= 4
	#if Input.is_key_pressed(KEY_D):
		#rotation_degrees += 4

func _input(event):
	if event is InputEventMouseMotion:
		position.x = event.position.x
