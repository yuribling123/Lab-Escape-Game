extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var inv: Inv = preload("res://inventory/playerinv.tres")
	for i in range(inv.items.size()):  
		print(i, " ", inv.items[i])
		if Input.is_action_just_pressed(str(i+1)):
			if inv.items[i] is InvItem:
				print("Item name: ", inv.items[i].name1)
				if inv.items[i].name1 == 'journal-hallway': # hallway journal
					# toggle
					if self.visible:
						self.hide()
					else:
						self.show()
			

#	for i in range(inv.items.size()):
		#print(i, " ", inv.items[i])
		#if inv.items[i] is InvItem:
			#print("Item name: ", inv.items[i].name1)
		#if inv.items[i] and inv.items[i].name1 == 'key':
			#foundkey = true
	#if area == rat and foundkey == true:
		#print("transition")
		#get_tree().change_scene_to_file("res://scenes/hallway.tscn")
	#else:
		#print("no key")

#@onready var inv: Inv = preload("res://inventory/playerinv.tres")
#@onready var slots: Array = $NinePatchRect/GridContainer.get_children()
#
#func update_slots():
	#print ("update called")
	#for i in range(min(inv.items.size(), slots.size())):
		#slots[i].update(inv.items[i])
#
#
#func _process(delta):
	#if Input.is_action_just_pressed("i"):
		#if is_open:
			#close()
		#else:
			#open()
#
#func open():
	#visible = true
	#is_open = true
#
#func close():
	#visible = false
	#is_open = false
	#
	#
	#
## handel drag
#
#var dragging_instance = null
