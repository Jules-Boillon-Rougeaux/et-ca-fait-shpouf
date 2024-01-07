extends Node

func _on_end_body_entered(_body):
	get_tree().change_scene_to_file("res://scene/jump/J03.tscn")

func _on_fall_body_entered(_body):
	get_tree().change_scene_to_file("res://scene/jump/J02.tscn")
	$respawn.play()
