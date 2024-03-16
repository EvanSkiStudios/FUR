if (global.videoextracted == 1){
	var dir = working_directory;
	video_open("prorise.mp4");
	video_pause();
	video_enable_loop(true);
	global.videoextracted = 3;
}