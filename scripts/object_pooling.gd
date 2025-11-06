extends Node

@export var pool_size: int = 10
@export var pool_object: EnemyCar
@export var spawn_locations: Array[Node2D]
@export var spawn_time: float = 2

var spawn_timer = 0

var df_spawn = false

func _process(delta: float) -> void:
	spawn_timer += delta
	
	if spawn_timer >= spawn_time and !df_spawn:
		spawn_enemy()
		spawn_timer = 0
		df_spawn = true
		
		
func spawn_enemy():
	pass

func _on_delete_object_body_entered(body: Node2D) -> void:
	if typeof(body) == typeof(EnemyCar):
		body.queue_free()
