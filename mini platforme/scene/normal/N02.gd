extends Node

func _on_end_body_entered(_body):
	get_tree().change_scene_to_file("res://scene/normal/N03.tscn")

func _on_fall_body_entered(_body):
	get_tree().change_scene_to_file("res://scene/normal/N02.tscn")
	$respawn.play()
