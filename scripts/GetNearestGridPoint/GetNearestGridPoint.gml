/// @description CreateInstances(point) Takes a point and returns the closest gridpoint coordinate in the game world 
/// @arg point the point as an x, y coordinate
var point = argument[0];

var nearestX = floor((point[0]+16)/32)*32;
var nearestY = floor((point[1]+16)/32)*32;

return [nearestX, nearestY];