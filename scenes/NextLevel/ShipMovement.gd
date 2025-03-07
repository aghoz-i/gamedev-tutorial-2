extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -450.0

var respawn_position: Vector2 = Vector2(150, 200)

func reset_position(body: CharacterBody2D):
	body.position = respawn_position
	body.velocity = Vector2.ZERO

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func _on_GameArea_body_exited(body: Node2D) -> void:
	if (body.name == "GreenShip"):
		reset_position(body)
	

func _on_FinishArea_body_entered(body: Node2D) -> void:
	print("Congratulations!")
