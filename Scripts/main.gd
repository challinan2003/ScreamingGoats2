extends Node

var current_loop = 1

func _ready() -> void:
	print(Global.loop)

#Teleports the car to the start of the next loop
func _physics_process(delta: float) -> void:
	if Global.loop != current_loop:
		$car/SpotLight3D.visible = false
		$car.transform = $Spawn.transform
		current_loop = Global.loop
