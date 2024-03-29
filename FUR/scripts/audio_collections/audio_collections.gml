/// @desc Creates an collection of sound assets to refer to later, returns array
function audio_collection_create() constructor{
	
	var array = [];
	for (var i = 0; i < argument_count; ++i){
		array[i] = argument[i];		
	}
	return array;
}


/// @desc Plays a sound from the index of the audio collection
/// @param {array} audio collection
/// @param {real} index sound in index of collection to play
function audio_collection_play(audio_collection, index, priority=1, loops=false, argument_array=pointer_null){
	
	if !(is_array(audio_collection)) throw( "variable "+string(audio_collection)+" is not an audio collection!");
	
	var sound = audio_collection[index];
	
	if (argument_array == pointer_null){
		audio_play_sound(sound, priority, loops);
	}else{
		var gain = argument_array[0];
		var offset = argument_array[1];
		var pitch = argument_array[2];
		var listener_mask = argument_array[3];
		
		audio_play_sound(sound, priority, loops, gain, offset, pitch, listener_mask); 	
	}
}


/// @desc Plays all sounds in the audio collection
/// @param {array} audio collection
function audio_collection_play_all(audio_collection, priority=1, loops=false, argument_array=pointer_null){	
	if !(is_array(audio_collection)) throw( "variable "+string(audio_collection)+" is not an audio collection!");
	
	var len = array_length(audio_collection);
	
	if (argument_array == pointer_null){
		for (var i = 0; i < len; ++i;){
			audio_play_sound(audio_collection[i], priority, loops);
		}
		
	}else{
		for (var i = 0; i < len; ++i;){

			var gain = argument_array[0];
			var offset = argument_array[1];
			var pitch = argument_array[2];
			var listener_mask = argument_array[3];
		
			audio_play_sound(audio_collection[i], priority, loops, gain, offset, pitch, listener_mask); 	
		}
	}
}


/// @desc Stops a sound from the index of the audio collection
/// @param {array} audio collection
/// @param {real} index index of collection to stop sound
function audio_collection_stop(audio_collection, index){
	
	if !(is_array(audio_collection)) throw( "variable "+string(audio_collection)+" is not an audio collection!");
	
	var sound = audio_collection[index];
	audio_stop_sound(sound);
}


/// @desc Stops all sounds in the audio collection
function audio_collection_stop_all(audio_collection){
	
	if !(is_array(audio_collection)) throw( "variable "+string(audio_collection)+" is not an audio collection!");
	
	var len = array_length(audio_collection);
	
	for (var i = 0; i < len; ++i;){
		audio_stop_sound(audio_collection[i]);
	}
}