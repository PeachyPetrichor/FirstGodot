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
func _process(delta):
	
	position.x = move_to(position.x, targetX, speed * delta)
	
	if position.x == targetX:
		if targetX == startX:
			targetX = position.x + moveDist
		else:
			targetX = startX


func move_to (current, to, step):
	
	var new = current
	
	if new < to:
		new += step
		if new > to:
			new = to
	else:
		new -= step
		
		if new < to:
			new = to
	
	return new
