extends Node

func _on_end_body_entered(_body):
	get_tree().change_scene_to_file("res://scene/autre/MOON.tscn")

func _on_fall_body_entered(_body):
	get_tree().change_scene_to_file("res://scene/autre/LADDER.tscn")
	$respawn.play()
