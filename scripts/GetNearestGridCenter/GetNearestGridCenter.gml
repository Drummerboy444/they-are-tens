/// @description GetNearestGridCenter(point) Takes a point and returns the closest gird center coordinate in the game world 
/// @arg point the point as an x, y coordinate
var point = argument[0];

var nearestX = (global.GRID_SIZE / 2) + floor((point[0]) / global.GRID_SIZE) * global.GRID_SIZE;
var nearestY = (global.GRID_SIZE / 2) + floor((point[1]) / global.GRID_SIZE) * global.GRID_SIZE;

return [nearestX, nearestY];