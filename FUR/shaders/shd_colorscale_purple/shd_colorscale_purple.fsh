varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float u_colorFactor;
																		
void main()																
{
	vec4 base = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 colorpurple = vec4(222., 165., 222., 255.) / 255.;
	
	vec4 ignore_white = vec4(1., 1., 1., 1.);
	vec4 ignore_black = vec4(0., 0., 0., 0.);
	vec4 ignore_lightblue = vec4(165., 214., 255., 255.) / 255.;
	vec4 ignore_lightpurple = vec4(255., 239., 255., 255.) / 255.;
	vec4 ignore_difpurple = vec4(128., 112., 152., 255.) / 255.;
	
//if pixel is any of these colors dont change it
if (base == ignore_white){
	gl_FragColor = base;
	return;
}
if (base == ignore_black){
	gl_FragColor = base;
	return;
}
if (base == ignore_lightblue){
	gl_FragColor = base;
	return;
}
if (base == ignore_lightpurple){
	gl_FragColor = base;
	return;
}
if (base == ignore_difpurple){
	gl_FragColor = base;
	return;
}
//if pixel is not any ofthe ignored colors
	//do greyscaling
	float grey = 0.5 * base.r + 0.71 * base.g + 0.07 * base.b;
	vec4 greyscale = vec4(
		base.r * u_colorFactor + grey * (1.0 - u_colorFactor), 
		base.g * u_colorFactor + grey * (1.0 - u_colorFactor), 
		base.b * u_colorFactor + grey * (1.0 - u_colorFactor), 
		1.0
	);

	gl_FragColor = greyscale * colorpurple;	
}													
