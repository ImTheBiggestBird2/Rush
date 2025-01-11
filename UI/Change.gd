extends Node


# Called when the node enters the scene tree for the first time.
func toLevel1():
	get_tree().change_scene_to_file("res://levels/level1.tscn")
	
func toLevel2():
	get_tree().change_scene_to_file("res://levels/level2.tscn")

func toLevel3():
	get_tree().change_scene_to_file("res://levels/level3.tscn")

func toLevel4():
	get_tree().change_scene_to_file("res://levels/level4.tscn")

func toLevel5():
	get_tree().change_scene_to_file("res://levels/level5.tscn")

func toLevel6():
	get_tree().change_scene_to_file("res://levels/level6.tscn")

func toLevel7():
	get_tree().change_scene_to_file("res://levels/level7.tscn")

func toLevel8():
	get_tree().change_scene_to_file("res://levels/level8.tscn")
	
func toLevel9():
	get_tree().change_scene_to_file("res://levels/level9.tscn")

func toLevel10():
	get_tree().change_scene_to_file("res://levels/level10.tscn")

func toWin():
	get_tree().change_scene_to_file("res://levels/Win.tscn")

func toLose():
	get_tree().change_scene_to_file("res://levels/Lose.tscn")
