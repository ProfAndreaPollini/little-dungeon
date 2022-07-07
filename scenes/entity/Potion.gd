extends Node2D

onready var animation_player = $Area/AnimationPlayer
onready var explosion = $Explosion
onready var explosion_timer = $Timer
onready var potion_area = $Area


# Called when the node enters the scene tree for the first time.
func _ready():
	animation_player.play("idle")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area_body_entered(body):
	print(body)
	explosion_timer.start()
	potion_area.visible = false
	explosion.emitting = true
	
	


func _on_Timer_timeout():
	queue_free()
