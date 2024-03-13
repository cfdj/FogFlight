shader_type spatial;

void vertex() {
	// Called for every vertex the material is visible on.
	VERTEX.y += cos(VERTEX.x) * sin(VERTEX.z);
	COLOR = vec4(UV,0,1); 
}

void light() {
	// Called for every pixel for every light affecting the material.
}
