extends Node3D

@onready var camera = $Camera3D

func _ready() -> void:
	camera.make_current()
