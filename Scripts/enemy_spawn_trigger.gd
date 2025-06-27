extends Area3D

# This is my comment to tell you how this code works.
# I have no fucking clue how this works.
var should_spawn = true
var enemy_scene = preload("res://Scenes/Other Scenes n Shit/Enemy_Car.tscn")

# THIS SHIT ISN'T USED. I SPENT LIKE 60 MINUTES TRYING TO FIGURE IT OUT ONLY TO
# REALIZE IT ISN'T NEEDED. SOMEONE FUCKING KILL ME.
# @onready var node_position: CollisionShape3D = %SpawnBox
func _process(delta: float) -> void:
	if is_visible_in_tree() == true:
		monitoring = true
	else:
		monitoring = false
# I could clean this up, but it works and I'm too lazy to.
func _on_body_entered(body: Node3D):
	if should_spawn == true:
		var enemy = enemy_scene.instantiate()
		# The position and rotation_degrees are relative to the trigger box scene
		# NOT the game world scene.
		enemy.position = Vector3(1, 0, -30)
		enemy.rotation_degrees = Vector3(0, 180, 0)
		add_child(enemy)
		# print("spawning enemy")
		should_spawn = false
	
