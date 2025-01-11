extends Node



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if(Ready.isReady1 and Ready.isReady2):
		TransitionScreen.transition()
		await TransitionScreen.on_transition_finished
		Change.toLevel3()
		Ready.isReady1=false
		Ready.isReady2=false

