extends GridContainer

@export var cell_scene: PackedScene

var word_list: Array[String] = [
	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",
		"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK",	"CAT", "DOG", "BAT", "ANT", "COW", "PIG", "OWL", "FOX", 
	"BEE", "EEL", "FLY", "APE", "ELK", "BUG", "RAT", "YAK"
]

func _ready():
	columns = 16
	word_list.shuffle()
	
	#Populate game board with nodes
	for i in range(256):
		var new_cell = cell_scene.instantiate()
		
		#Assign XY coordinates
		var x = i % columns
		var y = i / columns
		var grid_position = Vector2(x,y)
		
		var assigned_word = word_list[i]
		
		add_child(new_cell)
		new_cell.set_data(grid_position, assigned_word)
		
