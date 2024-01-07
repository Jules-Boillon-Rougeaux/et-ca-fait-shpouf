extends Node

func _on_end_body_entered(_body): # FINISH LEVEL
	get_tree().change_scene_to_file("res://scene/jump/J01.tscn")

func _on_fall_body_entered(_body): # FALL
	get_tree().change_scene_to_file("res://scene/jump/J00.tscn")
	$respawn.play()
