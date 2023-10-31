//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{	
	vec4 textureColor = texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor = vec4(1.0 - textureColor.r, 1.0 - textureColor.g, 1.0 - textureColor.b, 1.0);
}