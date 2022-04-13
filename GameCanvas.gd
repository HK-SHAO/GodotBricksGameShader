extends ColorRect

@onready var gameBuffer: SubViewport = $"../../SubViewport2"

func _process(delta: float) -> void:
	# material.set_shader_param("iChannel0", gameBuffer.get_texture())
	pass
