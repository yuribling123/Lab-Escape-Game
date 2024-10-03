extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print("called ")
	var inv: Inv = preload("res://inventory/playerinv.tres")
	for i in range(inv.items.size()):  
		print(i, " ", inv.items[i])
		if Input.is_action_just_pressed(str(i+1)):
			if inv.items[i] is InvItem:
				print("Item name: ", inv.items[i].name1)
				if inv.items[i].name1 == 'journal-main': # hallway journal
					# toggle
					if self.visible:
						self.hide()
					else:
						self.show()
			
