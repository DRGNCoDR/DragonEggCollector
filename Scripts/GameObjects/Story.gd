extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if(Input.is_anything_pressed()==true):
		get_tree().change_scene_to_file("res://Scenes/Levels/Level1.tscn")
