/// @description GenerateRivers(numRivers) Generates rivers and adds them to tracking grid
/// @arg numRivers the number of rivers to add - note that these maymerge into eachother
var numRivers = argument[0];

// Side keeps track of the side the river is starting at, clockwise starting at 0 = top
var startSide = 0;

var riverLocations = ds_list_create();

for(i=0; i<numRivers; i++){
	show_debug_message("Generating river")
	GenerateRiver(startSide,riverLocations);
	startSide = (startSide + 1)%4
}

return riverLocations;