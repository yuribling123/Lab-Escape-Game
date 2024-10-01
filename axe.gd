extends Node2D

@export var item: InvItem
@onready var rat = get_node("../rat")

var player = null



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_area_entered(area): # area that entered the place
	if area == rat:
		player = area;
		item.name1 = 'axe'
		player.collect(item)
		queue_free()
