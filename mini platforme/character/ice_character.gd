extends CharacterBody2D

const SPEED = 120.0
const JUMP_VELOCITY = -110.0
@onready var sprite_2d = $Sprite2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):	
	if not is_on_floor():
		sprite_2d.animation = "jumping"
	else:
		sprite_2d.animation = "default"
	
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	if Input.is_action_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction = Input.get_axis("left", "right")
	
	if direction :
		velocity.x = direction * SPEED * 1.50
		var isLeft = velocity.x < 0
		sprite_2d.flip_h = isLeft
	else:
		velocity.x = move_toward(velocity.x, 0, 3)
	move_and_slide()
