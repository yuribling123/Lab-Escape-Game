extends Node2D

@onready var rat = get_node("rat")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_scenetransitiondetect_area_entered(area):
	if area == rat:
		print("transition")
		get_tree().change_scene_to_file("res://scenes/main-office.tscn")

