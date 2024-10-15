extends CharacterBody2D
#the declaration
var input: Vector2
@export var speed = 500


func _ready() -> void:
	$AnimatedSprite2D.play("Idle right")
func _physics_process(delta):
	player_movement(delta)
func get_input():
	input.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input = input.normalized()
func player_movement(delta):
	var player_input = get_input()
	


	if player_input == Vector2.ZERO:
		velocity = Vector2.ZERO
	else:
		velocity = input * speed
	move_and_slide()
