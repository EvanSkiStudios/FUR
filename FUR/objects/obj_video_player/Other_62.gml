if ds_map_find_value(async_load, "id") == video_file{
    var status = ds_map_find_value(async_load, "status");
	show_debug_message(status);
    if status == 0{
        var path = ds_map_find_value(async_load, "result");
        var files = zip_unzip(path, working_directory);
        if files > 0
        {
            global.videoextracted = 1;
        }
    }
}