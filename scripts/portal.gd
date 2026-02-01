extends Node2D

signal teleport

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	#var player: Array[Node2D] = %Area2D.get_overlapping_bodies()
	#var teleport_progress = 0.0
	#if player.size() > 0:
		#var distance: float = global_position.x + %Texture.size.x/2 - player[0].global_position.x
		##print("global_x: ", global_position.x, ", player: ", player[0].global_position.x)
		##print("Distance: ", distance)
		#if distance < 0:
			#teleport_progress = 1
		#else:
			#teleport_progress = 1 - distance / (%PlayerDetection.shape.size.x/2)
	##print(teleport_progress)
	#if teleport_progress > 0.5:
		#set_glow(-5 + teleport_progress * 10)
	#if teleport_progress > 0.95:
		#set_glow(1)


#func set_glow(amount: float) -> void:
	#var t: Tween = create_tween()
	#var baseColor: Color = Color.WHITE
	#var endColor: Color = baseColor * amount
	#t.tween_property(%Texture, "self_modulate", endColor, 0.01)


func _on_teleport_trigger_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		var scene_transition_animation = get_node("/root/Game/SceneTransitionAnimation")
		scene_transition_animation.play_fade_in_and_out()
		await get_tree().create_timer(0.5).timeout
		teleport.emit()
