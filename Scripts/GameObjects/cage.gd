extends Node2D

@export var RequiredPower = 0
@onready var _animSprite = $CagedSprite

func _ready():	
	$RequiredText.set("theme_override_colors/font_color",Color.RED)
	$RequiredText.text = "Required: " + str(RequiredPower)

func _process(_delta):
	#Displays animation if we have collected enough power
	if (SingletonVars.BaseEggsCollected >= RequiredPower || 
		SingletonVars.MidEggsCollected >= RequiredPower /2 ||
		SingletonVars.LargeEggsCollected >= RequiredPower / 3):	
		_animSprite.play("new_animation")
		$RequiredText.set("theme_override_colors/font_color",Color.GREEN)
	else:
		_animSprite.play("default")

func breakCage():
	#Make sure we have acquired enough power to break cage
	if (SingletonVars.BaseEggsCollected >= RequiredPower || 
		SingletonVars.MidEggsCollected >= RequiredPower / 2 ||
		SingletonVars.LargeEggsCollected >= RequiredPower / 3):
		#Sets the score for breaking the cage
		SingletonVars.setScore(100) 
		#Reset the egg count for the next level
		SingletonVars.resetEggCount()		
		#Load Next Level
		get_tree().change_scene_to_file("res://Scenes/Levels/Level2.tscn")

func _on_area_2d_body_entered(_body):
	breakCage()
