extends Area2D
@export var eggValue = 10
@export var imgPath = "res://Assets/Sprites/BaseEgg.png"

func _ready():
	$Sprite2D.texture = load(imgPath)
	
func deleteEgg():
	queue_free()

func _on_body_entered(_body):
	SingletonVars.setScore(eggValue)
	if (eggValue == 10):
		SingletonVars.setEggsCollected(1,0,0)
	if (eggValue == 20):
		SingletonVars.setEggsCollected(0,1,0)
	if (eggValue == 50):
		SingletonVars.setEggsCollected(0,0,1)
	deleteEgg();


