extends Node2D


@onready var shake_camera: ShakeCamera = $ShakeCamera


func _input(event: InputEvent) -> void:
	if event.is_action_pressed("shake"):
		shake_camera.shake()
