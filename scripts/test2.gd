extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var x : Array[int] = [-1, 2, 10, 100, 199]
	print(x.bsearch(-2))
	print(x.bsearch(9))
	print(x.bsearch(199))
	print(x.bsearch(2000))
	
	#print(x)
	#b_insert(x, -2)
	#print(x)
	#b_insert(x, 2)
	#print(x)
	#b_insert(x, 19)
	#print(x)
	#b_insert(x, 300)
	#print(x)
	#

#func b_insert(arr : Array[int], val: int)->bool:
	#var idx = arr.bsearch(val)
	#if idx > 0 and idx < arr.size(): #if tile within bounds
		#if arr[idx] == val: # if tile in array already
			#return false
	#arr.insert(idx, val) # else insert tile
	#return true


		
	
	
	
	
	
