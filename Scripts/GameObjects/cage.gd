extends Node2D
@export var RequiredPower = 1

func _ready():
	$RichTextLabel.text = "Required: " + str(RequiredPower)

func breakCage():
	
	if (SingletonVars.BaseEggsCollected >= RequiredPower):
		queue_free()
		SingletonVars.Score += 100
		get_tree().quit()
		#Load Next Level


func _on_area_2d_body_entered(body):
	breakCage()
