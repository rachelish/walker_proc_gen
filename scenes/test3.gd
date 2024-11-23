extends Node2D

const GRASS = Vector2i(1, 1)

# rmr to assign export vars!
@export var tilemap : TileMap
@export var camera : Camera2D

@onready var levelmaker : LevelMaker = LevelMaker.new()

func _input(event:InputEvent)->void:
	if event.is_action_pressed("SPACE"):
		get_viewport().set_input_as_handled()
		make_level()
		return
	if event.is_action_pressed("UP"):
		get_viewport().set_input_as_handled()
		camera.zoom *= 1.1
		return
	if event.is_action_pressed("Down"):
		get_viewport().set_input_as_handled()
		camera.zoom /= 1.1
		return


func make_level()->void:
	tilemap.clear()
	for tile in levelmaker.make_floor():
		tilemap.set_cell(0, tile, 0, GRASS)
	camera.position = tilemap.map_to_local(tilemap.get_used_rect().get_center())
	
