extends Area2D


func breakCage():
	if (SingletonVars.BaseEggsCollected >= 2):
		queue_free()




func _on_body_entered(body):	
		breakCage()
