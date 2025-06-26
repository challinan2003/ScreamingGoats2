extends Node3D

var current_loop = 1

func _ready() -> void:
	print(Global.loop)

#Teleports the car to the start of the next loop
func _physics_process(delta: float) -> void:
	if Global.loop != current_loop:
		#$car/SpotLight3D.visible = false
		$car.position = $Spawn.position
		$car.rotation = $Spawn.rotation
		var node_to_hide = "Loop" + str(current_loop)
		var node_to_show = "Loop" + str(Global.loop)
		get_node(node_to_hide).visible = false
		get_node(node_to_show).visible = true
		current_loop = Global.loop
