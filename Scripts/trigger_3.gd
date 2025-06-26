extends Area3D

@export var animationPlayer: AnimationPlayer
@export var anim_name: String

func trigger_entered(car):
	if car == get_node("/root/" + get_tree().current_scene.name + "/car"):
		animationPlayer.play(anim_name)
		monitoring = false
		print_debug("animation playing")
