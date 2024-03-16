/// @param {real} _rings the amount of rings around the core node you want (1 ring would be 3x3)
/// @param {real} _value the default value to fill the web with
/// @return {array<>}
function ds_web_create(_rings, _value=0){
	var web_size = (2 * _rings) + 1;
	var web_core = ceil(web_size / 3);
	
	var array = undefined;
	for (var i = 0; i < web_size; ++i){
		for (var j = 0; j < web_size; ++j){
			array[i][j] = _value;
		}
	}
	return array;
}

function ds_web_get_size(_index){
	return array_length(_index);
}

function ds_web_get_core(_index){
	var size = array_length(_index);
	return ceil(size / 3);
}

function ds_web_string(_index){
	web_string = string(_index);
	web_string = string_replace_all(web_string, "[", "[\n");
	web_string = string_replace_all(web_string, "]", "");
	web_string = string_replace_all(web_string, "[", "");
	return web_string;
}


/*
web = ds_web_create(2, 0);

var web_core = ds_web_get_core(web)
web[web_core][web_core] = 1;

show_message(ds_web_string(web));

game_end();