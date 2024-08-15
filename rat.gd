extends Node2D
#extends Sprite2D

# Called when the node enters the scene tree for the first time.
#func _ready():
	#pass # Replace with function body.
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass

# Reference to the AnimatedSprite2D node
@onready var sprite = $"rat-animation"

# inventory system
@export var inv: Inv

var speed = 200

var last_direction = "idle_left"  # Default idle direction

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		sprite.play("run_right")
		last_direction = "idle_right"  # Set the last direction for idle
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= 1
		sprite.play("run_left")
		last_direction = "idle_left"  # Set the last direction for idle
	

	# If no movement keys are pressed, play the last direction's idle animation
	if velocity == Vector2.ZERO:
		sprite.play(last_direction)

	# Normalize the velocity to ensure consistent speed in all directions
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed

	# Update the character's position
	position += velocity * delta
	
	
	
# Collect function
func collect(item):
	inv.insert(item)

