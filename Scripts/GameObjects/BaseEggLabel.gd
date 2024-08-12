extends Label
@export var EggType = ""
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	updateEggLabel()

func updateEggLabel():	
	if (EggType == "base"):
		text =  str(SingletonVars.BaseEggsCollected)
	if (EggType == "mid"):
		text =  str(SingletonVars.MidEggsCollected)
	if (EggType == "lg"):
		text =  str(SingletonVars.LargeEggsCollected)
