/// @description CreateInstances(point) Takes a grid point and returns a coordinate in the game world 
/// @arg point the grid point as an x, y coordinate
var point = argument[0];

return [point[0] * global.GRID_SIZE, point[1] * global.GRID_SIZE];