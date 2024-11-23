extends RefCounted
class_name FloorWalker

const DIRECTIONS = [Vector2i.RIGHT, Vector2i.UP, Vector2i.LEFT, Vector2i.DOWN]

var positions : Vector2i
var direction : Vector2i

func _init (new_position : Vector2i = Vector2i.ZERO, new_direction : Vector2i = Vector2i.RIGHT):
	positions = new_position
	direction = new_direction
	
func step()->Vector2i:
	positions += direction
	return positions
	
func rotate (num_lefts:int = 0)->void:
	direction = DIRECTIONS[(num_lefts + DIRECTIONS.find(direction))%4] #wraps cardinal directions onto itself. .find() returns idx of first instance of direction in DIRECTIONS
