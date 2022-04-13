extends Control

@onready var controlRect: ColorRect = $"SubViewport3/ControlBuffer"
@onready var gameBuffer: ColorRect = $"SubViewport2/GameBuffer"

func _input(event: InputEvent) -> void:
	controlRect.material.set_shader_param("moveLeft", event.get_action_strength('ui_left'))
	controlRect.material.set_shader_param("moveRight", event.get_action_strength('ui_right'))
	controlRect.material.set_shader_param("pressSpace", event.get_action_strength('ui_accept'))

	if event is InputEventMouseMotion:
		var pos: Vector2 = get_viewport().get_mouse_position()
		var click: float = Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT)
		gameBuffer.material.set_shader_param("iMouse", Color(pos.x, pos.y, click))
