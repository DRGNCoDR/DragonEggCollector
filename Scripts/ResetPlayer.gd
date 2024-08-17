extends Area2D
@export var xResetPos = 0
@export var yResetPos = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	body.position =Vector2(xResetPos,yResetPos)
