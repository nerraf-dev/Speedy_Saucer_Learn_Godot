extends Node2D

func _ready():
	print("Hello, World!")


# func _on_track_body_exited(body):
# 	print("Body exited: ", body)
# 	call_deferred("reload_scene")

func _on_track_body_entered(body):
	call_deferred("reload_scene")

func reload_scene():
	get_tree().reload_current_scene()

func _on_finish_zone_body_entered(body):
	print("You win!")
	