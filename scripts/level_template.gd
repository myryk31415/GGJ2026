@tool

extends Node2D

@export var parallax_back: Texture2D = null
@export var offset_back: int = 0
@export var scale_back: float = 1
@export var parallax_middle: Texture2D = null
@export var offset_middle: int = 0
@export var scale_middle: float = 1
@export var parallax_front: Texture2D = null
@export var offset_front: int = 0
@export var scale_front: float = 1

@export var required_mask: String = ""

# called when a player does not wear the right mask
@export var mask_action: Callable

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var sprite = $Parallax/ParallaxBack/Sprite2D
	sprite.texture = parallax_back
	if !sprite.texture:
		return
	sprite.offset = Vector2(0, offset_back)
	sprite.scale = Vector2(scale_back, scale_back)
	var repeat_size = sprite.texture.get_width() * sprite.scale.x
	$Parallax/ParallaxBack.repeat_size = Vector2(repeat_size, 0)
	print(sprite.texture.get_width() * sprite.scale.x)
	print (repeat_size)
	
	sprite = $Parallax/ParallaxMiddle/Sprite2D
	sprite.texture = parallax_middle
	if !sprite.texture:
		return
	sprite.offset = Vector2(0, offset_middle)
	sprite.scale = Vector2(scale_middle, scale_middle)
	repeat_size = sprite.texture.get_width() * sprite.scale.x
	$Parallax/ParallaxMiddle.repeat_size = Vector2(repeat_size, 0)
	
	sprite = $Parallax/ParallaxFront/Sprite2D
	sprite.texture = parallax_front
	if !sprite.texture:
		return
	sprite.offset = Vector2(0, offset_front)
	sprite.scale = Vector2(scale_front, scale_front)
	repeat_size = sprite.texture.get_width() * sprite.scale.x
	$Parallax/ParallaxFront.repeat_size = Vector2(repeat_size, 0)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
