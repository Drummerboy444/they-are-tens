/// @description CreateInstances(objects) Takes a map from objects to arrays/lists of grid points and spawns them
/// @arg objects objects to add to the room
var objects = argument[0];

while (ds_map_size(objects) > 0) {
	var objectToAdd = ds_map_find_first(objects);
	var coordinateArray = ds_map_find_value(objects, objectToAdd);
	
	var numCoords = 0;
	// Really messy here, but what we do depends on whether coordinateArray is a list or an array
	if(is_array(coordinateArray)) numCoords = array_length_1d(coordinateArray);
	else numCoords = ds_list_size(coordinateArray);
	
	for (i = 0; i < numCoords; i++) {
		
		// Again, what we do depends on whether coordinateArray is a list or an array
		var gridCoordinate;
		if(is_array(coordinateArray)) var gridCoordinate = coordinateArray[i];
		else var gridCoordinate = coordinateArray[| i];
				
		var coordinate = PositionAccountingForSize(objectToAdd, gridCoordinate);
		instance_create_layer(coordinate[0], coordinate[1], oGameController.defaultLayer, objectToAdd);
		InsertWithGridPoint(objectToAdd,coordinate);
	}
	
	ds_map_delete(objects, objectToAdd);
}
