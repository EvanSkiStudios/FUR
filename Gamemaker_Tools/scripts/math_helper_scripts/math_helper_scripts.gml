function point_between_num_ratio(_min, _max, num){
	
    ///@desc returns a number between 0-1 depending on how close the input number is to each of the two other numbers provided
    /* if the num is closer to _min its closer to 0, if the num is closer to _max its closer to 1,
	so you return a ratio of where you are between the two numbers   */
	
	return( ( (num - _min) / (_max - _min) )  );
}



function percent(per=100,value=100){
	/// @function percent(percent,value)
	/// @desc Returns the percent of the given inputs
	/// @param {real} percent A whole number representing the percent you wish to get, will auto convert to percentage
	/// @param {real} value A base number you wish to get the supplied percent of
	
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