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

function es_grid_get_rows(es_grid){
	return array_length(es_grid);
}

function es_grid_get_columns(es_grid){
	return array_length(es_grid[0]);
}

function es_grid_get(es_grid,r,c){
	return es_grid[r][c];	
}

function es_grid_set(es_grid,r,c, val){
	return (es_grid[r][c] = val);	
}

//=============================================================

array = es_grid_create(10,10,0);

show_debug_message( es_grid_get_rows(array) );
show_debug_message( es_grid_get_columns(array) );


for (var i = 0; i < 8; ++i){
	array[i][i] = 1;
}

show_debug_message(array);

es_grid_set(array,3,3,7);

show_message(es_grid_get(array, 3, 3));

show_debug_message(array);

game_end();
