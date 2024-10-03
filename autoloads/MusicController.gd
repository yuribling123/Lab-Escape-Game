extends Node2D

var music = load("res://assets/mus/Gamedev1 Ambient(retro).wav")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func play_music():
	$Music.stream = music
	$Music.play()
