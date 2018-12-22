/// @description CellsAreEmpty(t_l_coord, b_r_coord) Returns true or false if the cells in the given
/// rectangle are empty
/// @arg t_l_coord the top_left grid coordinate to check
/// @arg b_r_coord the bottom_right grid coordinate to check
var t_l_coord = argument[0];
var b_r_coord = argument[1];

var allEmpty = true;
//for(all points in rectangle)
//if(!CellIsEmpty(point)){
	allEmpty = false;	
//}

return allEmpty;