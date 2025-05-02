extends Area3D

@onready var cactus_1: Node3D = $Cactus1
@onready var cactus_2: Node3D = $Cactus2
@onready var cactus_3: Node3D = $Cactus3

var tree_index = 1


func _ready() -> void:
	tree_index = randi_range(1,3)

func _process(delta: float) -> void:
	if tree_index == 1:
		cactus_1.show()
		cactus_2.hide()
		cactus_3.hide()
		
	if tree_index == 2:
		cactus_1.hide()
		cactus_2.show()
		cactus_3.hide()
		
	if tree_index == 3:
		cactus_1.hide()
		cactus_2.hide()
		cactus_3.show()


func _on_body_entered(body: Node3D) -> void:
	if body.has_method("die"):
		body.die()
