extends CharacterBody2D

@export var speed = 100
func _process(delta):
	if Input.is_action_pressed("left"):
		position.x += speed * delta
	elif Input.is_action_pressed("right"):
		position.x += -speed * delta
