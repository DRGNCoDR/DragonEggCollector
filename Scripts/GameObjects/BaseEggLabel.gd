extends RichTextLabel

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	updateEggLabel()

func updateEggLabel():	
	text = "Base Egg Count:" + str(SingletonVars.BaseEggsCollected)
