extends Node

@onready var dialog_label = get_node("cheese/dialogue/label")
@onready var dialog_button = get_node("cheese/dialogue/button")
@onready var rat = get_node("rat")

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
	var foundkey = false
	var inv: Inv = preload("res://inventory/playerinv.tres")
	for i in range(inv.items.size()):
		print(i, " ", inv.items[i])
		if inv.items[i] is InvItem:
			print("Item name: ", inv.items[i].name1)
		if inv.items[i] and inv.items[i].name1 == 'key':
			foundkey = true
	if area == rat and foundkey == true:
		print("transition")
		get_tree().change_scene_to_file("res://scenes/main-office.tscn")
	else:
		print("no key")

