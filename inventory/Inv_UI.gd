extends Control

var is_open = false


@onready var inv: Inv = preload("res://inventory/playerinv.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()

func _ready():
	# sconnect to update from back end
	inv.update.connect(update_slots)
	update_slots()
	close()

func update_slots():
	print ("update called")
	for i in range(min(inv.items.size(), slots.size())):
		slots[i].update(inv.items[i])


func _process(delta):
	if Input.is_action_just_pressed("i"):
		if is_open:
			close()
		else:
			open()

func open():
	visible = true
	is_open = true

func close():
	visible = false
	is_open = false
	
	
	
# handel drag

var dragging_instance = null
