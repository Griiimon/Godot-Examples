extends Node


func _ready():
	# creates a 10x10 array with default value 2
	var arr= Array2D.new(10, 10, 2)
	arr.put(1, 1, 9)
	
	var x= 0
	var y= 0
	var sum= 0
	
	# loop through all coordinates within radius 1
	for x2 in range(-1, 2):
		for y2 in range(-1, 2):
			# exclude center 
			if x2 != 0 or y2 != 0:
				var neighbour_pos= Vector2(x + x2, y + y2)
				# make sure neighbour position is inside array
				if arr.is_in_boundsv(neighbour_pos):
					sum+= arr.readv(neighbour_pos)
	
	print("Neighbour sum is %d at %d, %d" % [ sum, x, y ])
	print()
	arr.console_dump()

