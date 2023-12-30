extends Node

func _on_end_body_entered(body):
	get_tree().change_scene_to_file("res://scene/glace/G01.tscn")

func _on_fall_body_entered(body):
	get_tree().change_scene_to_file("res://scene/glace/G00.tscn")
	$respawn.play()
