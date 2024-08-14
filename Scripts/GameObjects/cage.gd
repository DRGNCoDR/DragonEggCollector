extends Node2D
@export var RequiredPower = 1

func _ready():
	$RichTextLabel.text = "Required: " + str(RequiredPower)

func breakCage():
	
	if (SingletonVars.BaseEggsCollected >= RequiredPower):
		
		SingletonVars.Score += 100
		#get_tree().quit()
		#Load Next Level
		get_tree().change_scene_to_file("res://Scenes/Levels/Level2.tscn")


func _on_area_2d_body_entered(_body):
	breakCage()
