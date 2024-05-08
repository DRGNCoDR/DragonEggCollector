extends RichTextLabel

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	UpdateScoreLabel()

func UpdateScoreLabel():	
	text = "Score: " + str(SingletonVars.Score)
