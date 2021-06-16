extends WindowDialog


# Declare member variables here. Examples:
# var a = 2
var pop = new()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_art1_body_entered(body):
	if body is KinematicBody:
		pop.show()
	else:
		if pop.is_visible():
			pop.hide()
