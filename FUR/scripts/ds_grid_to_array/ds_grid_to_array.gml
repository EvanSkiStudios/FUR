/// @desc Creates and 2D array to work as a ds_grid
/// @param {real} rows the amount of rows in the grid
/// @param {real} columns the amount of columns in the grid
/// @param {any} [value] the default value to fill the grid
/// @returns {Array<>}
function es_grid_create(rows,columns,val=undefined){
	if (rows <= 0) show_error(string("<Can not create grid with row size of {0}>",rows),0);
	if (columns <= 0) show_error(string("<Can not create grid with column size of {0}>",columns),0);
	
	var array = undefined;
	for (var i = 0; i < rows; ++i){
		for (var j = 0; j < columns; ++j){
		array[i][j] = val;
		}
	}
	return array;
}

/// @desc Returns the amount of rows in a grid assuming it is square
/// @param {Array<>} es_grid index of the grid
/// @returns {Real}
function es_grid_rows(es_grid){
	return array_length(es_grid);
}

/// @desc Returns the amount of columns in a grid assuming it is square
/// @param {Array<>} es_grid index of the grid
/// @returns {Real}
function es_grid_columns(es_grid){
	return array_length(es_grid[0]);
}

/// @desc Returns the value at the given index
/// @param {Array<>} es_grid index of the grid
/// @param {real} row the row index
/// @param {real} column the column index
/// @returns {Any}
function es_grid_get(es_grid,r,c){
	return es_grid[r][c];	
}

/// @desc Sets the value at the given index
/// @param {Array<>} es_grid index of the grid
/// @param {real} row the row index
/// @param {real} column the column index
/// @param {any} val the value to set at the index
/// @returns {Undefined} N/A
function es_grid_set(es_grid,r,c, val){
	es_grid[r][c] = val;	
}

/// @desc clears the gird to a specific value
/// @param {Array<>} es_grid index of the grid
/// @param {any} val new value for all grid cells
/// @returns {Undefined} N/A
function es_grid_clear(es_grid, val){
	var r = es_grid_rows(es_grid);
	var c = es_grid_columns(es_grid);
	
	for (var i = 0; i < r; ++i){
		for (var j = 0; j < c; ++j){
		es_grid[i][j] = val;
		}
	}	
}


//=============================================================
/*

array = es_grid_create(10,10,0);

show_debug_message( es_grid_rows(array) );
show_debug_message( es_grid_columns(array) );


for (var i = 0; i < 8; ++i){
	array[i][i] = 1;
}

show_debug_message(array);

es_grid_set(array,3,3,7);

show_message(es_grid_get(array, 3, 3));

show_debug_message(array);

es_grid_clear(array,9);

show_debug_message(array);

game_end();