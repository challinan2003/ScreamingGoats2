extends Node3D

#mouse
const SENSITIVITY = 0.003

#fov
const BASE_FOV = 75.0
const FOV_CHANGE =  1.5

@onready var camera = $Camera3D
@onready var tutorial = %tutorialUI

var check = true

func _ready() -> void:
	tutorial.hide()
	
func _input(event: InputEvent) -> void:
	#print("rage")
	if event is InputEventMouseMotion:
		rotate_y(-event.relative.x * SENSITIVITY)
		camera.rotate_x(event.relative.y * SENSITIVITY)	
		camera.rotation.x = clamp(camera.rotation.x, deg_to_rad(0), deg_to_rad(30))
		rotation.y = clamp(rotation.y, deg_to_rad(-100), deg_to_rad(80))
	

func _process(delta: float) -> void:
	
	#print("test1")
	if !get_tree().paused:
		#pass
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	if Global.gameStarted == true && check == true:
		camera.make_current()
		check = false
		#print("test2")
		
