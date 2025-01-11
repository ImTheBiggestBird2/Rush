extends Area2D

var used = false

var stop = false

# Called when the node enters the scene tree for the first time.
func _physics_process(_delta):
	jump()
	
func jump():
	if used == true and stop == false:
		$AnimationPlayer.play("Spring")
		stop = true
		used = false

func _on_body_entered(body):
	if body.name =="CharacterBody2D" or body.name=="CharacterBody2D2":
		used = true
		stop = false
		body.spring_jump()


