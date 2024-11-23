extends Control
const DEBUG_SCENE_BUTTON = preload("res://debug_scene_button.tscn")
@export var sceneArray:Array[PackedScene]
@onready var container: BoxContainer = $HFlowContainer/Container

func _ready() -> void:
	for scene in sceneArray:
		var newButton = DEBUG_SCENE_BUTTON.instantiate()
		newButton.scenePath = scene.resource_path
		newButton.text = scene.resource_name if scene.resource_name != "" else scene.resource_path.right(-scene.resource_path.rfind("/") - 1).left(-5)
		container.add_child(newButton)
