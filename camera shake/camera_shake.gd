class_name ShakeCamera
extends Camera2D


@export var shake_strength: float
@export var shake_weigth: float
var curr_shake_strength: float = 0


func _process(delta: float) -> void:
	if curr_shake_strength > 0:
		curr_shake_strength = lerpf(curr_shake_strength, 0, shake_weigth * delta)
		
		offset = Vector2(randf_range(-curr_shake_strength,curr_shake_strength),randf_range(-curr_shake_strength,curr_shake_strength))


func start_shake() -> void:
	curr_shake_strength = shake_strength
