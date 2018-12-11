/// @description CenterOfGridPoint(point) Takes a grid point and returns a coordinate in the game world. This
///		coordinate is the center of the grid square represented by that point.
/// @arg point the grid point as an x, y coordinate
var point = argument[0];


var pointX = (point[0] * global.GRID_SIZE) + (global.GRID_SIZE / 2);
var pointY = (point[1] * global.GRID_SIZE) + (global.GRID_SIZE / 2);
return [pointX, pointY];