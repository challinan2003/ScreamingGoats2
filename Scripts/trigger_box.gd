extends Area3D

var should_show = true


func _on_body_entered(body: Node3D):
	if should_show == true:
		$AudioStreamPlayer3D.play()
		should_show = false
