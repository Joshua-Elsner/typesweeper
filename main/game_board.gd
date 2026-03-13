extends GridContainer

@export var cell_scene: PackedScene

func _ready():
	for i in range(256):
		var new_cell = cell_scene.instantiate()
		
		add_child(new_cell)
