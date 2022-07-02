// fragment shader
//
// RGBA color to RGBA greyscale
//
// smooth transition based on u_colorFactor: 0.0 = original, 1.0 = greyscale
//
// http://www.johndcook.com/blog/2009/08/24/algorithms-convert-color-grayscale/
// "The luminosity method is a more sophisticated version of the average method.
// It also averages the values, but it forms a weighted average to account for human perception.
// We’re more sensitive to green than other colors, so green is weighted most heavily. The formula
// for luminosity is 0.21 R + 0.72 G + 0.07 B."
//
//Fixed for GMS by Evanski

varying vec2 v_vTexcoord;												
uniform float u_colorFactor;
																		
void main()																
{
	vec4 sample =  texture2D(gm_BaseTexture, v_vTexcoord);
	float grey = 0.21 * sample.r + 0.71 * sample.g + 0.07 * sample.b;
	gl_FragColor = vec4(sample.r * u_colorFactor + grey * (1.0 - u_colorFactor), sample.g * u_colorFactor + grey * (1.0 - u_colorFactor), sample.b * u_colorFactor + grey * (1.0 - u_colorFactor), 1.0);
}													
