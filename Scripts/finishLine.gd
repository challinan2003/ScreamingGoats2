extends Area3D

var should_show = true


func _on_body_entered(body: Node3D):
	if should_show == true:
		should_show = false
		if Global.checkpoint == true:
			Global.loop += 1
			Global.checkpoint = false
