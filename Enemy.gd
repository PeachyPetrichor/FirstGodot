extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export var speed : int = 100
export var moveDist : int = 100


onready var startX : int = position.x
onready var targetX : int = position.x + moveDist

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
