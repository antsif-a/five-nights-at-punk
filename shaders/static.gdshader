shader_type canvas_item;

uniform float threshold;
uniform float alpha;

void fragment() {
	vec4 color = texture(TEXTURE, UV);
	color.a = alpha;
	if (color.r <= threshold && color.g <= threshold && color.b <= threshold) {
		COLOR = vec4(0);
	} else {
		COLOR = color;
	}
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
