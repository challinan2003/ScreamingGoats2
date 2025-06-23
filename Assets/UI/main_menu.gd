extends Control

signal start_game()
@onready var button_box: VBoxContainer = %ButtonsBox

func _ready() -> void:
	focus_button()

func _on_start_game_button_pressed() -> void:
	start_game.emit()
	#print("test2")
	hide()
		

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
