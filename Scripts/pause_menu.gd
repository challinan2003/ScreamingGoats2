extends Control

func _ready() -> void:
	$AnimationPlayer.play("RESET")

func resume():
	print("test2")
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	
func pause():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	print("test")
	get_tree().paused = true
	$AnimationPlayer.play("blur")
	
func testEsc():
	#print("test1")
	if Global.gameStarted == true:
		if Input.is_action_just_pressed("escape") and !get_tree().paused:
			pause()
		elif Input.is_action_just_pressed("escape") and get_tree().paused:
			resume()


func _on_resume_button_pressed() -> void:
	if get_tree().paused:
		resume()
	#hide()

func _process(delta: float) -> void:
	testEsc()


func _on_quit_button_pressed() -> void:
	if get_tree().paused:
		get_tree().quit()
