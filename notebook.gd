extends Node2D

@export var item: InvItem

var player = null



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_area_entered(area):
	player = area;
	player.collect(item)
	# Remove this node from the scene, so it can't be picked up again
	queue_free()
