/// @description GetGridCoordinate(GameCoordinate) Converts a game coordinate into a grid coordinate. 
/// @arg GameCoordinate the game coordinate as an x, y coordinate.
var point = argument[0];

var _x = floor(point[0] / global.GRID_SIZE);
var _y = floor(point[1] / global.GRID_SIZE);

return [_x, _y];