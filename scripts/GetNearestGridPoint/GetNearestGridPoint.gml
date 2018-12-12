/// @description GetNearestGridPoint(point) Takes a point and returns the closest gridpoint coordinate in the game world 
/// @arg point the point as an x, y coordinate
var point = argument[0];

var nearestX = floor((point[0]+(global.GRID_SIZE / 2))/global.GRID_SIZE)*global.GRID_SIZE;
var nearestY = floor((point[1]+(global.GRID_SIZE / 2))/global.GRID_SIZE)*global.GRID_SIZE;

return [nearestX, nearestY];