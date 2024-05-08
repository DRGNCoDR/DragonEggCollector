extends Area2D
@export var eggValue = 10
@export var imgPath = "res://BaseEgg.png"

func _ready():
	$Sprite2D.texture = load(imgPath)
	
func deleteEgg():
	queue_free()

func _on_body_entered(body):
	SingletonVars.setScore(eggValue)
	deleteEgg();
