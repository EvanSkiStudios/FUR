if (global.videoextracted != 3) return;

var video_results = video_draw();
//show_debug_message(video_results);
//0 reports back 0(video is playing) -1 (error) -2(video done)
//1 video surface id
video_status = video_results[0];
video_surf = video_results[1];

if (video_status == 0){
	
	var window_w = display_get_gui_width();
	var window_h = display_get_gui_height();

	draw_surface_stretched(video_surf, 0,0, window_w, window_h);
	
	var stats = video_get_status();
	if (stats == video_status_paused){
		video_resume();	
		show_debug_message("Video playing!");
	}	
}