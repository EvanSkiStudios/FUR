start_color = #07f53f; //should be a lime greenish color

var start_color_hsv = color_conv_hex_hsv(start_color);
var start_color_rgb = color_conv_hex_rgb(start_color);

var start_color_hsv_array = color_conv_hex_hsv_array(start_color);
var start_color_rgb_array = color_conv_hex_rgb_array(start_color);

var convrt_hsv = color_conv_rgb_hsv(start_color_rgb);
var convrt_rgb = color_conv_hsv_rgb(start_color_hsv);

var hsv_array = color_conv_rgb_hsv_array(convrt_rgb);
var rgb_array = color_conv_hsv_rgb_array(convrt_hsv);

set_color[0] = start_color;
set_color[1] = start_color_hsv;
set_color[2] = start_color_rgb;
set_color[3] = convrt_hsv;
set_color[4] = convrt_rgb;

i = 0;
color = set_color[0];


show_message(
"should be \n[ 95,247.71,245 ] \n"+
string(start_color_hsv_array)
);

show_message(
"should be \n[ 7,245,63 ] \n"+
string(start_color_rgb_array)
);

show_message(
"should be \n[ 95,247.71,245 ] \n"+
string(hsv_array)
);

show_message(
"should be \n[ 7,245,63 ] \n"+
string(rgb_array)
);
