extends Button

var scenePath = null


func _on_pressed() -> void:
	if scenePath == null: return
	get_tree().change_scene_to_file(scenePath)
