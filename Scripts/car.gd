extends VehicleBody3D

var max_rpm = 250
var max_torque = 200
var mode = 0

#Toggle headlights
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("toggle_light"):
		$SpotLight3D.visible = !$SpotLight3D.visible

func _physics_process(delta: float) -> void:
	
	steering = lerp(steering, Input.get_axis("right","left") * 0.4,5 * delta)
	#var acceleration = Input.get_axis("back","forward")
	var rpm = $back_left_wheel.get_rpm()
	print(rpm)
	#print(mode)
	var acceleration = mode
	if mode == 0 && rpm > 0:
		acceleration = -1
		if rpm >= 225:
			acceleration = -2
	if mode == 1:
		max_rpm = 250
	elif mode == 2:
		max_rpm = 400
		
	$back_left_wheel.engine_force  = (acceleration * max_torque * (1 - rpm / max_rpm)) /2
	rpm = $back_right_wheel.get_rpm()
	$back_right_wheel.engine_force  = (acceleration * max_torque * (1 - rpm / max_rpm)) /2
	
	if Input.is_action_just_pressed("forward") && mode < 2:
		mode+=1
	elif Input.is_action_just_pressed("back") && mode > 0:
		mode=0
	
