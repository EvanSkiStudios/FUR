/// @desc checks if a supplied value is in the supplied data structure
/// @param {any} value The value to check for
/// @param {any} Data_structure The data structure to check for the value 
/// @returns {Bool}
function in(_value, _data_structure){
		// Array
		if (is_array(_data_structure)){
			var len = array_length(_data_structure);
			for(var i = 0; i < len; ++i){
				if (_data_structure[i] == _value){
					return true;	
				}
			}
			return false;
		}
		
		// Struct
		if (is_struct(_data_structure)){
			if struct_exists(_data_structure, _value){
				return true;	
			}else{
				var names = struct_get_names(_data_structure);
				var len = array_length(names);
				for(var i = 0; i < len; ++i){
					var _v = struct_get(_data_structure, names[i]);
					if (_v == _value){
						return true;	
					}
				}
				
			}
			return false;
		}
		
		// DS_Grid
		if (ds_exists(_data_structure, ds_type_grid)){
			var ds_h = ds_grid_height(_data_structure);
			var ds_w = ds_grid_width(_data_structure);
			
			for (var i = 0; i < ds_w; ++i){
				for (var j = 0; j < ds_h; ++j){
					var val = ds_grid_get(_data_structure, i,j);
					if (val == _value){
						return true;
					}
				}
			}
			return false;
		}
		
		// DS_List
		if (ds_exists(_data_structure, ds_type_list)){
			
			if ds_list_find_index(_data_structure, _value) != -1{
				return true;	
			}
			return false;	
		}
		
		// DS_map
		if (ds_exists(_data_structure, ds_type_map)){
			
			if ds_map_exists(_data_structure, _value) return true;
			
			var vals = ds_map_values_to_array(_data_structure);
			var len = array_length(vals);
			for(var i = 0; i < len; ++i){
				if (vals[i] == _value){
					return true;	
				}
			}
			
			//else
			return false;	
		}
		
		// DS_priority
		if (ds_exists(_data_structure, ds_type_priority)){
			//do code here
			return false;
		}
		
		// DS_queue
		if (ds_exists(_data_structure, ds_type_queue)){
			//do code here
			return false;	
		}
		
		// DS_stack
		if (ds_exists(_data_structure, ds_type_stack)){
			//do code here
			return false;	
		}
		
		//if data structure not found
		return false;
}

#region Array
/*
var test = [0,5,"dog",9];
show_message( in("dog", test) );
show_message( in(5, test) );
*/
#endregion

#region Struct
/*
var strct = {
	test: "heyo",
	dogs: 2,
	cats: 77777
}

show_message( in("test", strct) );
show_message( in("heyo", strct) );
show_message( in(77777, strct) );
*/
#endregion

#region ds_grid
/*
var grid = ds_grid_create(20,20);
		
for (var i = 0; i < 20; ++i){
	for (var j = 0; j < 20; ++j){
		ds_grid_set(grid, i,j, 0);
	}
}
ds_grid_set(grid, 5,7, 9);

show_message( in(9, grid) );
*/
#endregion

#region ds_map
/*
	var map = ds_map_create();
	ds_map_add(map, "test", 777);
	ds_map_add(map, "thing", "apples");
	
	show_message( in("test", map) );
	show_message( in("apples", map)  );
	show_message( in(777, map)  );
*/
#endregion




//game_end();