extends Area3D


func _on_body_entered(body: Node3D) -> void:
	if body.is_in_group("player"):
		body.level_finish_menu.level_finish()
