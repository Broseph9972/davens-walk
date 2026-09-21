extends Node

@onready var win_screen: CanvasLayer = $WinScreen


func _ready() -> void:
	$RestartTrigger.body_entered.connect(_on_restart_trigger_body_entered)
	$WinTrigger.body_entered.connect(_on_win_trigger_body_entered)


func _on_restart_trigger_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		get_tree().reload_current_scene()


func _on_win_trigger_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		win_screen.visible = true
		get_tree().paused = true
