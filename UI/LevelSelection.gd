extends Control

const MOUSE_SPEED=400.0

	
func _on_level_one_pressed():
	get_tree().change_scene_to_file("res://levels/level1.tscn")


func _on_level_two_pressed():
	get_tree().change_scene_to_file("res://levels/level2.tscn")


func _on_level_three_pressed():
	get_tree().change_scene_to_file("res://levels/level3.tscn")


func _on_back_pressed():
	get_tree().change_scene_to_file("res://UI/MainMenu.tscn")
	
#func _physics_process(delta: float):
	#var left_stick_vector = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	#print(left_stick_vector)
	#
	#get_viewport().warp_mouse(round(get_global_mouse_position() + left_stick_vector*MOUSE_SPEED*delta))
	#
	
#obsolete
