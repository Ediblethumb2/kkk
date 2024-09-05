extends CharacterBody2D

var direction = Vector2.ZERO




func _physics_process(delta):
	if Input.is_action_pressed("move_right"):
		direction.x = 1
		velocity.x = direction.x * 500
	elif Input.is_action_pressed("move_left"):
		direction.x = -1
		velocity.x = direction.x * 500
	else:
		direction.x = 0
	print(velocity)
	
	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = -1000
	else:
		velocity.y += 50
	
	
	velocity = velocity.move_toward(Vector2(0,velocity.y),1500 * delta)
	
	move_and_slide()
