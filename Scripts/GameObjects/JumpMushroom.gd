extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_static_body_2d_child_entered_tree(node):
	node.position.y += 10;


func _on_static_body_2d_body_entered(body):
	#body.move_local_y(-300);
	#body.translate(Vector2(0,-300))
	body.velocity.y =-500
