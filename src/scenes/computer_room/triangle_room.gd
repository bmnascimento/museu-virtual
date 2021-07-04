extends Spatial

export(String, FILE, "*.tscn") var room

var triangle_ready = false

func _ready():	
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if triangle_ready:
		if Input.is_action_pressed("move_forward") or Input.is_action_pressed("move_backward") or Input.is_action_pressed("move_left") or Input.is_action_pressed("move_right"):
			var _error = get_tree().change_scene(room)
		
		if Input.is_action_just_pressed("ui_cancel"):
			if Input.get_mouse_mode() == Input.MOUSE_MODE_VISIBLE:
				Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
			else:
				Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_TriangleRoom_ready():
	triangle_ready = true

func _on_square_ready():
	triangle_ready = true
