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




func _on_area_entered(area):
	if area == rat:
		#print("key - rat yes")
		player = area;
		item.name1 = 'key'
		player.collect(item)
		# Remove this node from the scene, so it can't be picked up again
		queue_free()
	#else:
		#print("key - rat no")
		#print("area - ", area)
		#print("rat - ", rat)
