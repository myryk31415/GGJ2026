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
	%Player.global_position.x = 20
	var new_level = %CurrentLevel.get_child(0).get_child(0).next_level
	print(str("res://scenes/", new_level, ".tscn"))
	var scene = load(str("res://scenes/", new_level, ".tscn"))
	scene = scene.instantiate()
	%CurrentLevel.remove_child(%CurrentLevel.get_child(0))
	%CurrentLevel.add_child(scene)
