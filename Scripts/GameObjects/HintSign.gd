extends Node2D

@export var popupXOffset = 0;
@export var popupShown = false;
@export var popupText = "";

func _ready():
	$HBoxContainer/Popup.visible = popupShown;
	setText();

func _on_area_2d_body_entered(_body):
	$HBoxContainer/Popup.visible = true;	
	

func _on_area_2d_body_exited(_body):
	$HBoxContainer/Popup.visible = false;
	
func setText():
	$HBoxContainer/Popup.setText(popupText)
