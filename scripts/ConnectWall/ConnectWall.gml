/// @description ConnectWall(SurroundingCells, Coordinate, Connector, ConnectingWalls) Builds connector object based on
///	the referenced surroundingcell and coordinate of the wall.
/// @arg SurroundingCells ds_grid of the surrounding cells.
/// @arg Coodinate the coordinate to check in the surrounding cells grid.
/// @arg Connector the object to be constructed as a connector.
/// @arg ConnectingWalls ds_grid to be filled when a connecting wall is built from the object.
var surroundingcells = argument[0];
var coordinate = argument[1];
var connector = argument[2];
var connectingwalls = argument[3];

var cellContents = surroundingcells[# coordinate[0], coordinate[1]];
if(cellContents != noone && object_is_ancestor(cellContents.object_index, oConnectable)){
	var offset = global.GRID_SIZE / 2;
	var x_position = x + ((coordinate[0] - 1) * offset);
	var y_position = y + ((coordinate[1] - 1) * offset);
	var connectingwall = instance_create_layer(x_position, y_position, oGameController.defaultLayer, connector);
	ds_grid_set(connectingwalls, coordinate[0], coordinate[1], connectingwall);
}