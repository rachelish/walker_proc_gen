extends RefCounted
class_name LevelMaker

#uses 4 walkers to generate floor plan for given level
func make_floor(num_floor_tiles : int = 110) -> Array[Vector2i]: 
	var FloorWalkers : Array[FloorWalker] = [FloorWalker.new()] # keeps track of floorwalkers
	var floor : Array[Vector2i] = [FloorWalkers[0].positions] # keeps track of tiles
	
	#to avoid floor walking back on itself (adding already added tiles)
	var place_floor_tiles = func(new_tile: Vector2i)->bool: # lambda function
		#var idx = floor.bsearch(new_tile) #binary search to find tile in sorted array
		# ignore if tile already inserted, insert if tile not present
		#return false
		var idx = floor.bsearch(new_tile)
		if idx < floor.size(): #if tile within bounds
			if floor[idx] == new_tile: # if tile in array already
				return false
		floor.insert(idx, new_tile) # else insert tile
		return true
	
	while (floor.size() < num_floor_tiles):
		for floorwalker in FloorWalkers:
			var new_tile = floorwalker.step() 
			place_floor_tiles.call(new_tile) 
			floorwalker.rotate(randi_range(0, 3)) # 0 1 2 3
			
	
	
	return floor
	
	
	
	
# lambda vs method: to call a lambda do .call
