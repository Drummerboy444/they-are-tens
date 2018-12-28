/// @description CellsAreEmpty(t_l_coord, b_r_coord) Returns true or false if the cells in the given
/// rectangle are empty
/// @arg t_l_coord the top_left grid coordinate to check
/// @arg b_r_coord the bottom_right grid coordinate to check
var t_l_coord = argument[0];
var b_r_coord = argument[1];

var allEmpty = true;
for(i=t_l_coord[0];i<=b_r_coord[0];i++){
	for(j=t_l_coord[1];j<=b_r_coord[1];j++){
		if(!CellIsEmpty([i,j])){
			allEmpty = false;	
		}
	}
}

return allEmpty;