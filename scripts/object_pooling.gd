extends Node



func _on_delete_object_body_entered(body: Node2D) -> void:
	if typeof(body) == typeof(EnemyCar):
		body.queue_free()
