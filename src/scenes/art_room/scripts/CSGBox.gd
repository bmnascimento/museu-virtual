extends CSGBox


func _ready():
	connect("input_event", self, "on_input_event")

func _on_coinGold_body_entered(body):
	if body is KinematicBody:
		queue_free()
