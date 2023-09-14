/// @desc returns the input hex color to an RGB color
/// @param {real} hex code of input color
function color_conv_hex_rgb(hex=000000){
	/// @function color_conv_hex_rgb(hex)
	
	var R = color_get_red(hex);
	var G = color_get_green(hex);
	var B = color_get_blue(hex);
	
	return( make_color_rgb(R,G,B) );
}


/// @desc returns the input hex color to an RGB color in an array
/// @param {real} hex code of input color
function color_conv_hex_rgb_array(hex=000000){
	/// @function color_conv_hex_rgb_array(hex)
	
	var R = color_get_red(hex);
	var G = color_get_green(hex);
	var B = color_get_blue(hex);
	
	return( [R,G,B] );
}


/// @desc returns the input hex color to an hsv color
/// @param {real} hex code of input color
function color_conv_hex_hsv(hex=000000){
	/// @function color_conv_hex_hsv(hex)
	
	var H = color_get_hue(hex);
	var S = color_get_saturation(hex);
	var V = color_get_value(hex);
	
	return( make_color_hsv(H,S,V) );
}


/// @desc returns the input hex color to an HSV color in an array
/// @param {real} hex code of input color
function color_conv_hex_hsv_array(hex=000000){
	/// @function color_conv_hex_hsv_array(hex)
	
	var H = color_get_hue(hex);
	var S = color_get_saturation(hex);
	var V = color_get_value(hex);
	
	return( [H,S,V] );
}


/// @desc returns the input hsv color to an rgb array
/// @param {real} hsv of input color
function color_conv_hsv_rgb_array(HSV_color){
	/// @function color_conv_hsv_rgb_array
	
	var R = color_get_red(HSV_color);
	var G = color_get_green(HSV_color)
	var B = color_get_blue(HSV_color);
	
	return( [R,G,B] );
}


/// @desc returns the input rgb color to an hsv array
/// @param {real} rgb  of input color
function color_conv_rgb_hsv_array(RGB_color){
	/// @function color_conv_rgb_hsv_array
	
	var H = color_get_hue(RGB_color);
	var S = color_get_saturation(RGB_color);
	var V = color_get_value(RGB_color);
	
	return( [H,S,V] );
}


/// @desc returns the input hsv color to an rgb
/// @param {real} hsv of input color
function color_conv_hsv_rgb(HSV_color){
	/// @function color_conv_hsv_rgb
	
	var R = color_get_red(HSV_color);
	var G = color_get_green(HSV_color)
	var B = color_get_blue(HSV_color);
	
	return( make_color_rgb(R,G,B) );
}


/// @desc returns the input rgb color to an hsv
/// @param {real} rgb of input color
function color_conv_rgb_hsv(RGB_color){
	/// @function color_conv_rgb_hsv
	
	var H = color_get_hue(RGB_color);
	var S = color_get_saturation(RGB_color);
	var V = color_get_value(RGB_color);
	
	return( make_color_hsv(H,S,V) );
}
