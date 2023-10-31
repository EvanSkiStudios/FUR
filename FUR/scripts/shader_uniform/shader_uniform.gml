/// @desc Basic wrapper to set uniform floats in shaders
/// @param {Shader_Asset} Shader Asset The index of the shader to use.
/// @param {String} String The shader constant to get the handle of (a string).
/// @param {float} float point number.
function shader_uniform_f(shader,uniform,float){
	/// @function shader_uniform_f(shader,uniform,float)
	
	uniform = shader_get_uniform(shader,uniform);
	return( shader_set_uniform_f(uniform, float) );
}