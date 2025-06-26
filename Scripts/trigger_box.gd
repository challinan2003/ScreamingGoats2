extends Area3D

var loop_start

func _process(delta: float) -> void:
	if is_visible_in_tree() == true:
		monitoring = true
	else:
		monitoring = false
	if Global.loop != loop_start:
		$AudioStreamPlayer.stop()

func _on_body_entered(body: Node3D):
		loop_start = Global.loop
		$AudioStreamPlayer.play()
