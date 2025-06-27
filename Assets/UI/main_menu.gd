extends Control

signal start_game()
@onready var button_box: VBoxContainer = %ButtonsBox
@onready var intro: Node = %IntroCutscene
@onready var menu: Node = %Menu
@onready var background: Node3D = %background
func _ready() -> void:
	focus_button()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	get_tree().paused = true

func _on_start_game_button_pressed() -> void:
	start_game.emit()
	intro.show()
	#get_tree().paused = false
	print("test2")
	menu.hide()
	background.hide()

func _on_visibility_changes() -> void:
	if visible:
		focus_button()

func focus_button() -> void:
	if button_box:
		var button:Button = button_box.get_child(0)
		if button is Button:
			button.grab_focus()
			


func _on_quit_game_button_pressed() -> void:
	#print("test3")
	get_tree().quit()
	
func _process(delta: float) -> void:
	if Global.gameStarted:
		$AudioStreamPlayer2D.stop()
