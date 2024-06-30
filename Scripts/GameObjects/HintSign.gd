extends Node2D

@export var popupXOffset = 0;
@export var popupShown = false;
@export var popupText = "";

func _ready():
	$Popup.visible = popupShown;
	setText();

func _on_area_2d_body_entered(body):
	$Popup.visible = true;


func _on_area_2d_body_exited(body):
	$Popup.visible = false;
	
func setText():
	$"Popup".setText(popupText)
