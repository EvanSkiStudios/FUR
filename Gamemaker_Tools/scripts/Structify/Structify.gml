/// @desc Converts a Struct to a Json file
/// @param {struct} struct_index Index of the struct to use
/// @param {string} json_name Name of Json file to create
/// @return {real} 0 if success, or -1 if it fails
function struct_to_json(struct_index,json_name){
    if file_exists(json_name) file_delete(json_name);
    var json_string = json_stringify(struct_index);
    var buffer = buffer_create(string_byte_length(json_string)+1, buffer_fixed, 1);
    var output = buffer_write(buffer, buffer_text, json_string);
    buffer_save(buffer,string(json_name));
    buffer_delete(buffer);
    return output;
}

/// @desc Converts a Json file to a Struct
/// @param {string} json The Json file to load.
/// @return {any} struct or -1 on fail
function json_to_struct(json){
    if !(file_exists(json)) return(-1);
    var file = buffer_load(json);
    var json_string = buffer_read(file, buffer_text);
    buffer_delete(file);
    return (json_parse(json_string));
}

/// @desc Combines structs together
/// @param {array} array of structs to combine
/// @return {struct} Combined struct
function struct_combine(structs){
    var output_struct = {};
    var struct_array_len = array_length(structs);
    for(var i = 0; i <= struct_array_len-1; ++i){
        var struct_value_name_array = struct_get_names(structs[i]);
        var len = array_length(struct_value_name_array);
        for (var j = 0; j <= len-1; ++j){
            var struct_value_values = variable_struct_get(structs[i],struct_value_name_array[j]);
            struct_set(output_struct, structs[i], struct_value_values);
        }
    }
    return output_struct;
}