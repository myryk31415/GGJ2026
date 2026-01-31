extends Node2D

signal teleport

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var player: Array[Node2D] = %Area2D.get_overlapping_bodies()
	var teleport_progress = 0.0
	if player.size() > 0:
		var distance: float = global_position.x - player[0].global_position.x
		if distance < 0:
			teleport_progress = 1
		else:
			teleport_progress = 1 - distance / %PlayerDetection.shape.size.x
	if teleport_progress > 0.95:
		teleport.emit()
	print(teleport_progress)
