extends Resource
#extends Node

class_name Inv

signal update

@export var items: Array[InvItem]

func insert(item: InvItem):
	for i in range(items.size()):
		if items[i] == null:
			items[i] = item
			print("Item inserted at index", i)
			update.emit()
			return  # Exit the function once the item is inserted
	
	print("No available slots to insert the item.")

