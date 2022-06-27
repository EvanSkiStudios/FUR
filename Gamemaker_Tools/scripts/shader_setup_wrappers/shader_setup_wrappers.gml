function wrapper_pixelate_shader(){
	shader_set(shd_pixelate);
	pixels_uniform = shader_get_uniform(shd_pixelate,"Pixels");
	//5000
	shader_set_uniform_f(pixels_uniform,2500);
}