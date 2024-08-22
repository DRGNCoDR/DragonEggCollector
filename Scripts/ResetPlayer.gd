extends Area2D
@export var xResetPos = 0
@export var yResetPos = 0

func _on_body_entered(body):
	body.position =Vector2(xResetPos,yResetPos)
