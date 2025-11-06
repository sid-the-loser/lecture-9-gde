class_name Car
extends CharacterBody2D

const MAX_SPEED: int = 1000

var movement_direction: Vector2 = Vector2.ZERO

func _physics_process(delta: float) -> void:
	velocity = velocity.lerp(movement_direction * MAX_SPEED, delta)
	
	move_and_slide()
