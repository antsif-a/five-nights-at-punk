shader_type canvas_item;

uniform float alpha;

void fragment() {
	vec4 color = texture(TEXTURE, UV);
	if (color.x == 0.0) {
		COLOR = vec4(0);
	} else {
		color.a = alpha;
		COLOR = color;
	}
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
