/// @description PositionAccountingForSize(object, gridCoordinate) Takes an object and a grid coordinate and
///		returns the position it should be created at in the room accounting for the objects size. Objects
///		are created at the gridCoordinate relative to their top left square.
/// @arg object the object to be created
/// @arg the grid coordinate that the object should be build at
var object = argument[0];
var gridCoordinate = argument[1];


var sprite = object_get_sprite(object);
if (sprite > -1) {
	var width = sprite_get_width(sprite);
	var height = sprite_get_height(sprite);
	var topLeftSquareCoordinate = CenterOfGridPoint(gridCoordinate);

	var widthInGridSquares = width / global.GRID_SIZE;
	var heightInGridSquares = height / global.GRID_SIZE;
	
	var widthAdjust = (widthInGridSquares - 1) * (global.GRID_SIZE / 2);
	var heightAdjust = (heightInGridSquares - 1) * (global.GRID_SIZE / 2);

	return [topLeftSquareCoordinate[0] + widthAdjust, topLeftSquareCoordinate[1] + heightAdjust];
} else {
	// Just return the origin if the object has no sprite
	return [0, 0];
}