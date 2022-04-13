shader_type canvas_item;

uniform float pressSpace = 0.0;
uniform float moveRight = 0.0;
uniform float moveLeft = 0.0;

const int KEY_SPACE = 32;
const int KEY_LEFT  = 37;
const int KEY_RIGHT = 39;

void storeValue( in ivec2 re, in vec4 va, inout vec4 fragColor, in ivec2 p )
{
    fragColor = (p==re) ? va : fragColor;
}

void fragment() {
	ivec2 ipx = ivec2(FRAGCOORD.xy-0.5);
	
	storeValue(ivec2(KEY_SPACE, 0), vec4(pressSpace), COLOR, ipx);
	storeValue(ivec2(KEY_RIGHT, 0), vec4(moveRight), COLOR, ipx);
	storeValue(ivec2(KEY_LEFT, 0), vec4(moveLeft), COLOR, ipx);
}

