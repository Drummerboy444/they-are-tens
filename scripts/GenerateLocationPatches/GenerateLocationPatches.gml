var object = argument[0];
var numPatches = argument[1];

var instanceLocations = ds_list_create();

// Cycle through for each patch
for(i=0; i<numPatches; i++){
	var locationSet = false;
	while(!locationSet){
		// Get random map location
		var rndX = GetRandomInt(0,hNumCells-1);
		var rndY = GetRandomInt(0,vNumCells-1);
		// Check if the location is empty and not too close to the village, otherwise randomise again
		if(
			CellIsEmpty([rndX,rndY])
			&& (rndX < hCentre - 4
				|| rndX > hCentre + 4
				|| rndY < vCentre - 4
				|| rndY > vCentre + 4)
		){
			locationSet = true;
			// Add location to list of instanceLocations
			ds_list_add(instanceLocations,[rndX,rndY]);
			InsertWithGridPoint(object,[rndX,rndY]);
			// List of adjacent and diagonal locations
			var adjacentLocations = [
				[rndX+1,rndY],
				[rndX+1,rndY+1],
				[rndX,rndY+1],
				[rndX-1,rndY+1],
				[rndX-1,rndY],
				[rndX-1,rndY-1],
				[rndX,rndY-1],
				[rndX+1,rndY-1]
			];
			for(j=0; j<array_length_1d(adjacentLocations); j++){
				var adjLocation = adjacentLocations[j];
				// Check if location is in the map and cell is empty
				if(
					adjLocation[0] > 0
					&& adjLocation[0] <= hNumCells
					&& adjLocation[1] > 0
					&& adjLocation[1] <= vNumCells
					&& CellIsEmpty(adjLocation)
					// 50% chance to add
					&& random(2)>1
				){
					ds_list_add(instanceLocations,adjLocation);
					InsertWithGridPoint(object,adjLocation);	
				}
			}
		}
	}
}

return instanceLocations;