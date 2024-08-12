extends Label

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	updateEggLabel()

func updateEggLabel():	
	text =  str(SingletonVars.BaseEggsCollected)
