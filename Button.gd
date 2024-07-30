extends Button

@onready var dialog_label = get_parent().get_node("label")

func _pressed():
	dialog_label.visible = false
	self.visible = false
