extends Area

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass # rotate_y(deg2rad(180 * delta))


func _on_Area2D_body_entered(body):
	queue_free()


func _on_art1_body_entered(body):
	if body is KinematicBody:
		queue_free()
