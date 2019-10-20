extends RigidBody

const speed = 5
var velocity = Vector3()

func player_move():
	var direction = Vector3()

	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.z += 1
	if Input.is_action_pressed("ui_up"):
		direction.z -= 1

	if direction.length() > 0:
		var force = direction.normalized() * speed
		add_force(force, Vector3(0, 0, 0))


func _ready():
	pass


func _process(delta):
	player_move()
