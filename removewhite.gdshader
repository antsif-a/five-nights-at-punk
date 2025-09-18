shader_type canvas_item;

uniform float darkness;
uniform float threshold;

bool check(float value) {
	float eps = 0.15;
	return 1.0 - eps <= value && value <= 1.0;
}

void fragment() {
	
	vec4 color = texture(TEXTURE, UV);
	if (check(color.r) && check(color.g) && check(color.b)) {
		color.a = 0.0;
	} else {
		color.r *= darkness;
		color.g *= darkness;
		color.b *= darkness;
	}
	COLOR = color;
}
