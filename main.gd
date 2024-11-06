extends Control
const DEBUG_SCENE_BUTTON = preload("res://debug_scene_button.tscn")
@onready var container: Container = $Container
@export var sceneArray:Array[PackedScene]

func _ready() -> void:
	for scene in sceneArray:
		var newButton = DEBUG_SCENE_BUTTON.instantiate()
		newButton.scenePath = scene.resource_path
		newButton.text = scene.resource_name if scene.resource_name != "" else "Nameless resource"
		container.add_child(newButton)
