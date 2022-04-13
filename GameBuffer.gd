extends ColorRect

@onready var gameBuffer: SubViewport = $"../../SubViewport2"
@onready var controlBuffer: SubViewport = $"../../SubViewport3"

var iFrame: int = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	iFrame += 1
	material.set_shader_param("iFrame", iFrame)
	material.set_shader_param("iTimeDelta", delta)
	# material.set_shader_param("iChannel0", gameBuffer.get_texture())
	# material.set_shader_param("iChannel1", controlBuffer.get_texture())
