extends Node


# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if(Ready.isReady1 and Ready.isReady2):
		TransitionScreen.transition()
		await TransitionScreen.on_transition_finished
		Change.toLevel7()
		Ready.isReady1=false
		Ready.isReady2=false

