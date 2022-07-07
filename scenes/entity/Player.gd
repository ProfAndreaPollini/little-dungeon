extends KinematicBody2D


var velocity : float = 50


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	var dx = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	var dy = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))

	move_and_slide(Vector2(dx,dy)* velocity)
