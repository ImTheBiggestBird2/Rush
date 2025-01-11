extends CharacterBody2D


const SPEED = 150.0
const JUMP_VELOCITY = -250.0
@onready var sprite_2d = $Sprite2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var isOnePressing = false

func _physics_process(delta):
	#Animations
	if(velocity.x>1 || velocity.x <-1):
		sprite_2d.animation="running"
	else:
		sprite_2d.animation="default"
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		sprite_2d.animation="jumping"

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.aaaaaaaaaaaaaaaaaaw
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	var isLeft = velocity.x<0
	sprite_2d.flip_h = isLeft
	
	


func _on_area_2d_area_entered(area):
	if area.is_in_group("trap"):
		Ready.die()
		TransitionScreen.transition()
		await TransitionScreen.on_transition_finished
		if (Ready.cLevel==1):
			Change.toLevel1()
			Ready.cLevel=1
		elif (Ready.cLevel==2):
			Change.toLevel1()
			Ready.cLevel=1
		elif(Ready.cLevel==3):
			Change.toLevel2()
			Ready.cLevel=2
		elif(Ready.cLevel==4):
			Change.toLevel3()
			Ready.cLevel=3
		elif(Ready.cLevel==5):
			Change.toLevel4()
			Ready.cLevel=4
		elif(Ready.cLevel==6):
			Change.toLevel5()
			Ready.cLevel=5
		elif(Ready.cLevel==7):
			Change.toLevel6()
			Ready.cLevel=6
		elif(Ready.cLevel==8):
			Change.toLevel7()
			Ready.cLevel=7
		elif(Ready.cLevel==9):
			Change.toLevel8()
			Ready.cLevel=8
		else:
			Change.toLevel9()
			Ready.cLevel=9
	elif area.is_in_group("level2"):
		Ready.isReady1=true
	elif area.is_in_group("level3"):
		Ready.isReady1=true
	elif area.is_in_group("level4"):
		Ready.isReady1=true
	elif area.is_in_group("level5"):
		Ready.isReady1=true
	elif area.is_in_group("level6"):
		Ready.isReady1=true
	elif area.is_in_group("level7"):
		Ready.isReady1=true
	elif area.is_in_group("level8"):
		Ready.isReady1=true
	elif area.is_in_group("level9"):
		Ready.isReady1=true
	elif area.is_in_group("level10"):
		Ready.isReady1=true
	elif area.is_in_group("Win"):
		Ready.isReady1=true
	else:
		Ready.isReady1=false

func _process(_delta):
	print(Ready.time)
	if(float(Ready.time) <= 0.0):
		Change.toLose()

func spring_jump():
	velocity.y = JUMP_VELOCITY*3
