extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if %Player.current_mask != %CurrentLevel.required_mask:
		%CurrentLevel.mask_action


func _on_portal_teleport() -> void:
	%Portal.global_position.x = 2500
	%Player.global_position.x = 20
