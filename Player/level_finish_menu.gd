extends Control

@onready var winner_sound: AudioStreamPlayer = $WinnerSound

func level_finish() -> void:
	get_tree().paused = true
	winner_sound.play()
	visible = true
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE

func _on_restart_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()


func _on_quit_button_pressed() -> void:
	get_tree().quit()
