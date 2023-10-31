varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float Pixels;

void main()
{	
    
	vec4 base = ( v_vColour * texture2D( gm_BaseTexture, v_vTexcoord ) );
	
	float dx = 15.0 * (1.0 / Pixels);
	float dy = 10.0 * (1.0 / Pixels);
	vec2 Coord = vec2(dx * floor(v_vTexcoord.x / dx), dy * floor(v_vTexcoord.y / dy));

	gl_FragColor = v_vColour * texture2D(gm_BaseTexture, Coord);
}