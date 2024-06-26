extends RichTextLabel
@export var Category = ""
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	UpdateScoreLabel()

func UpdateScoreLabel():	
	if(Category == "Power: "):
		text = Category + str(SingletonVars.BaseEggsCollected)
	if(Category == "Score: "):
		text = Category + str(SingletonVars.Score)
	

