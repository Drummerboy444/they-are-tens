/// @description CreateInstances(objects) Takes a map from objects to arrays of grid points and spawns them
/// @arg objects objects to add to the room
objects = argument[0];

while (ds_map_size(objects) > 0) {
	var objectToAdd = ds_map_find_first(objects);
	var coordinateArray = ds_map_find_value(objects, objectToAdd);
	for (i = 0; i < array_length_1d(coordinateArray); i++) {
		var gridCoordinate = coordinateArray[i];
		var coordinate = CoordinateFromGrid(gridCoordinate);
		instance_create_layer(coordinate[0], coordinate[1], oGameController.defaultLayer, objectToAdd);
	}
	ds_map_delete(objects, objectToAdd);
}
