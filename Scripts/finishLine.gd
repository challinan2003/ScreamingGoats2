extends Area3D

func _process(delta: float) -> void:
	if is_visible_in_tree() == true:
		monitoring = true
	else:
		monitoring = false

func _on_body_entered(body: Node3D):
	if Global.checkpoint == true:
		Global.loop += 1
		Global.checkpoint = false
