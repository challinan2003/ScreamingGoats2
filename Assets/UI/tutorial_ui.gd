extends CanvasLayer

var check = false

func _process(delta: float) -> void:
	if Global.gameStarted == true:
		if check == true:
			show()
			await get_tree().create_timer(4).timeout
			hide()
			check = false
			print("AAAAAAAA")
		elif check == false:
			print("ssss")
