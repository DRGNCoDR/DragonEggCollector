extends Node2D

func _on_static_body_2d_child_entered_tree(node):
	node.position.y += 10;

func _on_static_body_2d_body_entered(body):
	#body.move_local_y(-300);
	#body.translate(Vector2(0,-300))
	body.velocity.y =-500
