extends Area2D
@export var eggValue = 0
@export_enum("Base", "Mid", "Large") var egg_type : String

func _ready():
	if (egg_type != ""):
		$Sprite2D.texture = load("res://Assets/Sprites/" + egg_type + "Egg.png")
	
func deleteEgg():
	queue_free()

func _on_body_entered(_body):
	SingletonVars.setScore(eggValue)
	
	if (egg_type == "Base"):
		SingletonVars.setEggsCollected(1,0,0)
	if (egg_type == "Mid"):
		SingletonVars.setEggsCollected(0,1,0)
	if (egg_type == "Large"):
		SingletonVars.setEggsCollected(0,0,1)
		
	deleteEgg();
