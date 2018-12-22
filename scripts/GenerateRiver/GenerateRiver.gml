/// @description GenerateRiver(startSide, instanceLocations) Generates a river starting from startSide
/// @arg startSide the side to start the river from, clockwise with 0 as Top
/// @arg instanceLocations the list of instanceLocations we need to append our locations to
var startSide = argument[0];
var riverLocations = argument[1];

var gridEndX = oTrackingGrid.gridWidth - 1;
var gridEndY = oTrackingGrid.gridHeight - 1;

var randXLocation = GetRandomInt(floor(gridEndX/3),2*floor(gridEndX/3))
var randYLocation = GetRandomInt(floor(gridEndY/3),2*floor(gridEndY/3))

// Source is the initial tile of the river
var source;
// Moves contains the possible moves, clockwise from 0 = up
var moves = []

switch startSide{
	case 0:
		source = [randXLocation,0];
		moves = [1,2,3];
		break;
	case 1:
		var source = [gridEndX,randYLocation];
		moves = [2,3,0];
		break;
	case 2:
		var source = [randXLocation,gridEndY];
		moves = [3,0,1];
		break;
	case 3:
		var source = [0,randYLocation];
		moves = [0,1,2];
		break;
}

var location = source;
var terminated = false;
var lastMove = 1;
var moveLength = 3;

while(!terminated){
	// If cell isn't empty - end while loop without adding new river tile
	if(!CellIsEmpty(location)){
		// show_debug_message("Terminating due conflict");
		terminated = true;
		continue;
	}
	// If on boundary except source - add new river tile and end while loop
	if(location != source && CellOnBoundary(location)){
		// show_debug_message("Terminating due to boundary");
		terminated = true;
	}
	
	ds_list_add(riverLocations,[location[0],location[1]]);
	InsertWithGridPoint(oRiver,[location[0],location[1]]);
	
	if(moveLength == 0){
		var moveNum;
		switch lastMove{
			case 0:
				moveNum = GetRandomInt(0,1);
				break;
			case 1:
				moveNum = GetRandomInt(0,2);
				break;
			case 2:
				moveNum = GetRandomInt(1,2);
				break;
		}
		moveLength = 2;
	}
	else{
		moveLength -= 1;
		moveNum = lastMove;
	}
	if (location == source) moveNum = 1
	show_debug_message(moveNum);
	switch moves[moveNum]{
		case 0:
			location[1] -= 1;
			break;
		case 1:
			location[0] += 1;
			break;
		case 2:
			location[1] += 1;
			break;
		case 3:
			location[0] -= 1;
			break;
	}
	
	lastMove = moveNum;
}

return riverLocations;