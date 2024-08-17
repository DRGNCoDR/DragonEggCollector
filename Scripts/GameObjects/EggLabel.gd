extends Label
@export_enum("Base", "Mid", "Large") var egg_type : String
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	updateEggLabel()

func updateEggLabel():	
	if (egg_type == "Base"):
		text =  str(SingletonVars.BaseEggsCollected)
	if (egg_type == "Mid"):
		text =  str(SingletonVars.MidEggsCollected)
	if (egg_type == "Large"):
		text =  str(SingletonVars.LargeEggsCollected)
