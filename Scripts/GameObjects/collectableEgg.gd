extends Area2D
@export var eggValue = 10
@export var imgPath = "res://BaseEgg.png"

func _ready():
	$Sprite2D.texture = load(imgPath)
	
func deleteEgg():
	queue_free()

func _on_body_entered(body):
	SingletonVars.setScore(eggValue)
	if (eggValue == 10):
		SingletonVars.setEggsCollected(1,0,0)
	deleteEgg();


