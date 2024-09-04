extends Node

@onready var dialog_label = get_node("cheese/dialogue/label")
@onready var dialog_button = get_node("cheese/dialogue/button")

func _ready():
	dialog_label.visible = false
	dialog_button.visible = false

func _process(delta):
	pass

func _on_cheese_area_entered(area):
	print("entered!!!!!!!")
	dialog_label.visible = true
	dialog_button.visible = true


func _on_cheese_area_exited(area):
	dialog_label.visible = false
	dialog_button.visible = false


func _on_scenetransitiondetect_area_entered(area):
	print("transition")
	get_tree().change_scene_to_file("res://scenes/main-office.tscn")

