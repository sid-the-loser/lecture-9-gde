class_name PlayerCar
extends Car

func _process(delta: float) -> void:
	movement_direction = Input.get_vector("left", "right", "up", "down")
