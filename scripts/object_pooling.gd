extends Node

@export var pool_size: int = 10
@export var spawn_locations: Array[Node2D]
@export var spawn_time: float = 0.5

var spawn_timer = 0
var spawned_objects = 0

const ENEMY_CAR = preload("uid://c7oa8pkcy2gs")

var df_spawn = false

func _process(delta: float) -> void:
	spawn_timer += delta
	
	if (spawn_timer >= spawn_time and !df_spawn and spawned_objects < pool_size):
		spawn_enemy()
		spawn_timer = 0
		
		
func spawn_enemy():
	var location: Node2D = spawn_locations[randi_range(0, len(spawn_locations)-1)]

	var enemy = ENEMY_CAR.instantiate()
	
	add_child(enemy)
	
	enemy.position = location.position

func _on_delete_object_body_entered(body: Node2D) -> void:
	if typeof(body) == typeof(EnemyCar):
		body.queue_free()
