/// @desc Converts ds_map to struct
/// @param {ds_map} ds_map index
/// @returns {Struct}
function MapToStruct(_map){
	var keyArray = ds_map_keys_to_array(_map);
	var valueArray = ds_map_values_to_array(_map);
	
	var keyArrayLength = array_length(keyArray);
	
	var StructMap = {};
	for (var i = 0; i < keyArrayLength; ++i){
		struct_set(StructMap,keyArray[i],valueArray[i]);	
	}
	
	return StructMap;
}