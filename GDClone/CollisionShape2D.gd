extends CollisionShape2D

@export var speed = 100
func _process(delta):
	position.x += speed * delta
