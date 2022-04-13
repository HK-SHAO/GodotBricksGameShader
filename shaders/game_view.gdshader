shader_type canvas_item;

uniform sampler2D Texture;

void fragment() {
	// Place fragment code here.
	vec2 uv = UV;
	uv.y = 1. - uv.y;
	COLOR = texture(Texture, uv);
}
