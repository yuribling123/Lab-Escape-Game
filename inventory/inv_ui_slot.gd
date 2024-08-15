extends Panel

@onready var item_visual: Sprite2D = $CenterContainer/Panel/item_display

func update(item: InvItem):
	if !item:
		item_visual.visible = false
	else:
		item_visual.visible = true
		item_visual.texture = item.texture



var item: InvItem
var dragging = false
var offset = Vector2.ZERO

func start_dragging(start_position):
	dragging = true
	offset = global_position - start_position

func _process(delta):
	if dragging:
		global_position = get_global_mouse_position()

func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
		dragging = false
		#check_collision()

#func check_collision():
	#var collision = get_world_2d().direct_space_state.intersect_point(global_position)
	#if collision and collision.collider.name == "wood":
		#handle_collision_with_wood(collision.collider)
		#queue_free()
	#else:
		#queue_free()  # If dropped anywhere else, remove it

func handle_collision_with_wood(wood):
	print("Item collided with wood:", item)
	# Implement what happens when the item collides with wood
	# For example, if item is a resource, add it to wood or destroy the wood
