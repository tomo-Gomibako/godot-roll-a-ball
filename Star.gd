extends Area

func star_rotate(speed):
	rotate(Vector3(0, 1, 0), speed)


func gotten(body):
	if body.name == "Player":
		queue_free()


func _ready():
	pass


func _process(delta):
	star_rotate(delta)


func _on_Star_body_entered(body):
	gotten(body)
