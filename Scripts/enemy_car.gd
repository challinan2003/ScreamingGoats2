extends Node3D


# Don't ask me why my code is so fucking bad. 
# This shit is held together with spit and duct tape.
# I'm like the McDonalds chef of coding.
var player = null
var speedz = 200
var chase = false

func _on_detection_zone_body_entered(body: Node3D) -> void:
	player = body
	chase = true

func _process(delta: float) -> void:
	if chase:
		position.z += .2
		#position.z += (player.position.z - position.z) / speedz
		#position.x = player.position.x + 2
	#position.z += .1

func _on_death_zone_body_shape_entered(body_rid: RID, body: Node3D, body_shape_index: int, local_shape_index: int) -> void:
	print("ded")
	get_tree().reload_current_scene()
