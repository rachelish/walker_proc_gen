extends Node2D

var max = 10

# note: y axis is flipped -> (0, 1) is down, (0, -1) is up

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var x = FloorWalker.new()
	
	print(x.direction)
	for i in 5:
		x.rotate(1)
		print(x.direction, "turn left")
		
	for i in 5:
		x.rotate(-1)
		print(x.direction, "turn right")
	
	for i in 3:
		x.rotate(2)
		print(x.direction, "180")
