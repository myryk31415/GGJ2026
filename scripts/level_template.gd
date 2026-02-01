#@tool

extends Node2D

@export var next_level: String = ""

@export var song: AudioStream = null

@export var parallax_1: Texture2D = null
@export var offset_1: int = 0
@export var scale_1: float = 1

@export var parallax_2: Texture2D = null
@export var offset_2: int = 0
@export var scale_2: float = 1

@export var parallax_3: Texture2D = null
@export var offset_3: int = 0
@export var scale_3: float = 1

@export var parallax_4: Texture2D = null
@export var offset_4: int = 0
@export var scale_4: float = 1

@export var parallax_5: Texture2D = null
@export var offset_5: int = 0
@export var scale_5: float = 1

@export var parallax_6: Texture2D = null
@export var offset_6: int = 0
@export var scale_6: float = 1

@export var required_mask: String = ""

# called when a player does not wear the right mask
@export var mask_action: Callable

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%Music.stream = song
	%Music.play()
	var sprite = $Parallax/Parallax1/Sprite2D
	var repeat_size: int = 0
	sprite.texture = parallax_1
	if sprite.texture:
		sprite.offset = Vector2(0, offset_1)
		sprite.scale = Vector2(scale_1, scale_1)
		repeat_size = sprite.texture.get_width() * sprite.scale.x
		$Parallax/Parallax1.repeat_size = Vector2(repeat_size, 0)
	get_node("/root/Game/Portal/AnimatedSprite2D").play(next_level)
	get_node("/root/Game/Player/AnimatedSprite2D").play(get_parent().name.to_snake_case())
	
	sprite = $Parallax/Parallax2/Sprite2D
	sprite.texture = parallax_2
	if sprite.texture:
		sprite.offset = Vector2(0, offset_2)
		sprite.scale = Vector2(scale_2, scale_2)
		repeat_size = sprite.texture.get_width() * sprite.scale.x
		$Parallax/Parallax2.repeat_size = Vector2(repeat_size, 0)
	
	sprite = $Parallax/Parallax3/Sprite2D
	sprite.texture = parallax_3
	if sprite.texture:
		sprite.offset = Vector2(0, offset_3)
		sprite.scale = Vector2(scale_3, scale_3)
		repeat_size = sprite.texture.get_width() * sprite.scale.x
		$Parallax/Parallax3.repeat_size = Vector2(repeat_size, 0)
	
	sprite = $Parallax/Parallax4/Sprite2D
	sprite.texture = parallax_4
	if sprite.texture:
		sprite.offset = Vector2(0, offset_4)
		sprite.scale = Vector2(scale_4, scale_4)
		repeat_size = sprite.texture.get_width() * sprite.scale.x
		$Parallax/Parallax4.repeat_size = Vector2(repeat_size, 0)
	
	sprite = $Parallax/Parallax5/Sprite2D
	sprite.texture = parallax_5
	if sprite.texture:
		sprite.offset = Vector2(0, offset_5)
		sprite.scale = Vector2(scale_5, scale_5)
		repeat_size = sprite.texture.get_width() * sprite.scale.x
		$Parallax/Parallax5.repeat_size = Vector2(repeat_size, 0)
	
	sprite = $Parallax/Parallax6/Sprite2D
	sprite.texture = parallax_6
	if sprite.texture:
		sprite.offset = Vector2(0, offset_6)
		sprite.scale = Vector2(scale_6, scale_6)
		repeat_size = sprite.texture.get_width() * sprite.scale.x
		$Parallax/Parallax6.repeat_size = Vector2(repeat_size, 0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
