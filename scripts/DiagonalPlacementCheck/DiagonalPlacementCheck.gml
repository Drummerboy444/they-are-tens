/// @description DiagonalPlacementCheck(SurroundingCells, DiagonalLocation, DiagonalObject, CheckLocation1, CheckLocation2, ConnectingWall)
/// Builds a diagonal connector wall based on the referenced DiagonalLocation and object if the 2 check locations
/// are free off oConnectable child objects.
/// @arg SurroundingCells ds_grid of surrounding cells.
/// @arg DiagonalLocation ds_grid location of the diagonal wall to be built.
/// @arg DiagonalObject object of the diagonal wall to be built.
/// @arg CheckLocation1 ds_grid location of the 1st location to check for oConnectable children before building.
/// @arg CheckLocation2 ds_grid location of the 2nd location to check for oConnectable children before building.
/// @arg ConnectingWalls ds_grid to be filled when a connecting wall is built from the object.
var surroundingcells = argument[0]
var diagonalLocation = argument[1];
var diagonalObject = argument[2];
var checkLocation1 = argument[3];
var checkLocation2 = argument[4];
var connectingwalls = argument[5];


var cellContents = surroundingcells[# diagonalLocation[0], diagonalLocation[1]];
if((checkLocation1 = noone && checkLocation2 = noone) 
	||
	(checkLocation1 != noone
	&&
	checkLocation2 != noone
	&&
	!object_is_ancestor(checkLocation1.object_index, oConnectable) 
	&& 
	!object_is_ancestor(checkLocation2.object_index, oConnectable)))
	{
	if(cellContents != noone && object_is_ancestor(cellContents.object_index, oConnectable)){
		var offset = global.GRID_SIZE / 2;
		var	x_position = x + ((diagonalLocation[0] - 1) * offset);
		var y_position = y + ((diagonalLocation[1] - 1) * offset);
		var connectingwall = instance_create_layer(x_position, y_position, oGameController.defaultLayer, diagonalObject);
		ds_grid_set(connectingwalls, diagonalLocation[0], diagonalLocation[1], connectingwall);
	}
}