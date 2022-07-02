function wrapper_pixelate_shader(){
	shader_set(shd_pixelate);
	//5000
	shader_uniform_f(shd_pixelate,"Pixels",2500);
}