extends Camera

onready var player = get_parent()
var offset : Vector3

func _init():
	set_as_toplevel(true)


func _ready():
	offset = get_global_transform().origin


func _physics_process(delta):
	var target = get_parent().get_global_transform().origin
	var pos = offset + target
	var up = Vector3(0, 1, 0)
	look_at_from_position(pos, target, up)


func _process(delta):
	pass
