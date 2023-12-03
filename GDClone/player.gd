extends CharacterBody2D
const GRAVITY = 500
@export var speed = 200

var VELOCITY = 0
var fall = false

func _on_area_2d_area_entered(area):
	var fall = false

func _on_area_2d_area_exited(area):
	var fall = true
	
func _process(delta):
	while fall == true:
		VELOCITY -= GRAVITY * delta
	position.y -= VELOCITY * delta
	position.x += speed * delta
	if Input.is_action_just_pressed("up"):
		VELOCITY += 20
	move_and_slide()



