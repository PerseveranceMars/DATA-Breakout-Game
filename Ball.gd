extends KinematicBody2D


var velocity = Vector2(300,300) #assigns velocity to ball

export var inflat = 1.000231
func _physics_process(delta):
	velocity = velocity*inflat
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.normal)
