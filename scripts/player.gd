extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


# move function for sidescroller
func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


# 2d survival style movement
#func _physics_process(delta):
	#var direction = Input.get_vector("left", "right", "up", "down")
	#velocity = direction * SPEED
	#move_and_slide()
