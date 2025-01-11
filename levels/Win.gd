extends Control


# Called when the node enters the scene tree for the first time.


func _on_quit_pressed():
	get_tree().quit()


func _on_retry_pressed():
	Ready.cLevel=1
	Ready.time=500
	Change.toLevel1()
