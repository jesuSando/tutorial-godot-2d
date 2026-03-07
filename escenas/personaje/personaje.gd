extends CharacterBody2D

var _velocidad: float = 100.0
var _velocidad_salto: float = -300.0

func _physics_process(delta: float) -> void:
	
	# gravedad
	velocity += get_gravity() * delta
	
	# salto
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = _velocidad_salto
	
	# movimiento
	if Input.is_action_pressed("ui_right"):
		velocity.x = _velocidad
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -_velocidad
	else:
		velocity.x = 0
	move_and_slide()
