extends Node2D

@export var item: InvItem

var player = null

@onready var rat = get_node("../rat")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_area_entered(area):
	if area == rat:
		player = area;
		print("collected journal-hallway")
		item.name1 = 'journal-hallway'
		player.collect(item)
		queue_free()
