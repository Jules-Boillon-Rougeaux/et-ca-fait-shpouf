extends Node

func _ready() -> void:
	Engine.max_fps = 60

func _on_end_body_entered(body):
	get_tree().change_scene_to_file("res://scene/normal/N01.tscn")

func _on_fall_body_entered(body):
	get_tree().change_scene_to_file("res://scene/normal/N00.tscn")
	$respawn.play()
