extends Node2D
@onready var scene_transition_animation: AnimationPlayer = $SceneTransitionAnimation/AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	scene_transition_animation.play("fade_in")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	#if %Player.current_mask != %CurrentLevel.required_mask:
		#%CurrentLevel.mask_action


func _on_portal_teleport() -> void:
	%Portal.global_position.x = 2500
	%Player.global_position.x = 20
