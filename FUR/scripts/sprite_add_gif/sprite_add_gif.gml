///@desc a cool function
///@param {String} fname The name (a string file path) of the file to add.
///@return {Asset.GMSprite}
// Uses information from https://giflib.sourceforge.net/whatsinagif/bits_and_bytes.html
function sprite_add_gif(fname){
	//Gif format information constants
	var headerByteSize = 6;
	
	// GIF || 71 73 70 || 0x47 0x49 0x46 || 4671814
	var GIFsignature = ( (0x47 << 16) | (0x49 << 8) | 0x46 );


// Read header
	var file = file_bin_open(fname, 0);
	var fileSize = file_bin_size(file);
	
	var fileHeader = [];
	for (var i = 1; i < headerByteSize+1; i += 1){
	
		var byte = file_bin_read_byte(file);

		array_push(fileHeader, byte);
		file_bin_seek(file,i);
	}

	show_debug_message(fileHeader);
	//show_debug_message(string( chr(fileHeader[0]) + chr(fileHeader[1]) + chr(fileHeader[2]) ));
	
	//compaire header -- fileSignature should be "GIF"
	var fileSignature = ( (fileHeader[0] << 16) | (fileHeader[1] << 8) | fileHeader[2] );
	if (fileSignature != GIFsignature){
		throw($"\n\n ERROR: \"{fname}\" is not a GIF file or in GIF format!");	
	}
	
//get GIF version -- should be 87a unless its a 89a
	var fileGIFVer = string( chr(fileHeader[3]) + chr(fileHeader[4]) + chr(fileHeader[5]) );
	
	//show_debug_message(fileGIFVer);
	
// Logical Screen Descriptor - 7 bytes long	
	var fileLSD = [];
	for (var i = 7; i < 14; i += 1){
	
		var byte = file_bin_read_byte(file);

		array_push(fileLSD, byte);
		file_bin_seek(file,i);
	}

	show_message(fileLSD);
	
	//var canvasWidth = fileLSD[0] fileLSD[1]
	//var canvasHeight = fileLSD[2] fileLSD[3]

}


sprite_add_gif("sample_1.gif");

game_end();