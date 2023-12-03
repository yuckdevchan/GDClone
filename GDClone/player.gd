extends CharacterBody2D
const GRAVITY = 500
@export var speed = 200

var VELOCITY = 0

func _process(delta):
	position.x += speed * delta
	position.y -= VELOCITY * delta
	if Input.is_action_just_pressed("up"):
		VELOCITY += 200
	VELOCITY -= GRAVITY * delta
	move_and_slide()
