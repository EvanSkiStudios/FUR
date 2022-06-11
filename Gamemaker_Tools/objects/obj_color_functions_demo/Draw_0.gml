draw_set_color(color);

draw_rectangle(-10,-10,room_width+10,room_height+10,false);

draw_set_color(c_black);

draw_text(20,20,string(start_color));
draw_text(20,40,string(i));
draw_text(20,60,string(set_color[i]));
draw_text(20,80,"color should never change");

draw_set_color(c_white);
