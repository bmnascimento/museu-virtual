extends Area

export(String, FILE, "*.tscn") var room

func _on_Portal_body_entered(var body):
	if body.is_in_group("player"):
		var _error = get_tree().change_scene(room)
