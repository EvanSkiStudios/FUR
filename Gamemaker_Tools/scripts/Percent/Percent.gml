/// @desc Returns the percent of the given inputs
/// @param {real} percent A whole number representing the percent you wish to get, will auto convert to percentage
/// @param {real} value A base number you wish to get the supplied percent of
function percent(per=100,value=100){
	/// @function percent(percent,value)
	
	//convert input number to actual percent
	percentage = (per / 100);
	
	//get the requested percent of the value number
	return_percent = (percentage * value);
	
	return(return_percent);
	
	/*
	//example code
	var per = percent(20,500);
	show_message(per);

	game_end()
	*/

}