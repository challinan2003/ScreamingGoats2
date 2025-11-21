extends Area3D

func _process(delta: float) -> void:
	if is_visible_in_tree() == true:
		monitoring = true
	else:
		monitoring = false

func _on_body_entered(body: Node3D):
	Global.checkpoint = true
