extends CanvasLayer
 

 
func _physics_process(delta):
	Ready.time = float(Ready.time) - delta
	update_ui()
	
func update_ui():
	# Format time with two decimal places
	var formatted_time = str(Ready.time)
	var decimal_index = formatted_time.find(".")
	
	if decimal_index > 0:
		formatted_time = formatted_time.left(decimal_index + 3)  # Take only two decimal places
	
	Ready.time = formatted_time
		
	$Label.text = formatted_time
