extends Spatial
var girarz = false
var girarx = false	


func show():
	pass

func _process(delta):
	if girarx:
		$KinematicBodyL.rotate(Vector3(1,0,0), delta)
	if girarz:
		$KinematicBodyL.rotate(Vector3(0,0,1), delta)
	
	if Input.get_action_raw_strength("ui_down"):
		girarx = !girarx
	if Input.get_action_raw_strength("ui_up"):
		girarz = !girarz	
