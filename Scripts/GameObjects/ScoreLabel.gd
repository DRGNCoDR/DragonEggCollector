extends Label
@export var Category = ""

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	UpdateScoreLabel()

func UpdateScoreLabel():	
	var text = ""
	if(Category == "Power: "):
		text = Category + str(SingletonVars.BaseEggsCollected)
	if(Category == "Score: "):
		text = str(SingletonVars.Score)
	
