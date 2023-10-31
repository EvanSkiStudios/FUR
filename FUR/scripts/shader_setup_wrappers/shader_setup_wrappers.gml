function wrapper_pixelate_shader(){
	shader_set(shd_pixelate);
	//5000
	shader_uniform_f(shd_pixelate,"Pixels",2500);
}

function wrapper_fxaa_shader(surface, fxaa_ammount){
	// DISABLE ALPHABLEND BECAUSE SURFACES //
	gpu_set_blendenable(false);
	// GET OFFSET OF THE SURFACE FOR MANUAL DRAWING //
	// SET THE SHADER //
	//fxaa_ammount = 8;
	
    shader_set(shd_fxaa);
    var tex = surface_get_texture(surface);
    shader_set_uniform_f(shader_get_uniform(shd_fxaa, "u_texel"), texture_get_texel_width(tex), texture_get_texel_height(tex));
    shader_set_uniform_f(shader_get_uniform(shd_fxaa, "u_strength"), fxaa_ammount);	
}

function wrapper_fxaa_shader_cleanup(){
	// RESET ALPHABLEND //
	gpu_set_blendenable(true);
	// RESET THE SHADER //
	shader_reset();	
}