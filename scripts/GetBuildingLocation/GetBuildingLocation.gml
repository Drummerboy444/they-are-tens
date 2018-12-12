/// @description GetBuildingLocation(sprite, coordinate) returns the location that the building should be
///		built at, compared to the coordinate given and depending on the buildings width and height
/// @arg building the building to be constructed
/// @arg coodinate the coordinate the find the location from
var sprite = argument[0];
var coordinate = argument[1];


var widthInGridSquares = ceil(sprite_get_width(sprite) / global.GRID_SIZE);
var heightInGridSquares = ceil(sprite_get_height(sprite) / global.GRID_SIZE);

show_debug_message(widthInGridSquares)
show_debug_message(widthInGridSquares mod 2)

var _x = 0;
var _y = 0;
if (widthInGridSquares mod 2 == 0) {
	var nearestGridPoint = GetNearestGridPoint(coordinate);
	_x = nearestGridPoint[0]
} else {
	var nearestGridPoint = GetNearestGridCenter(coordinate);
	_x = nearestGridPoint[0]
}
if (heightInGridSquares mod 2 == 0) {
	var nearestGridPoint = GetNearestGridPoint(coordinate);
	_y = nearestGridPoint[1]
} else {
	var nearestGridPoint = GetNearestGridCenter(coordinate);
	_y = nearestGridPoint[1]
}

return [_x, _y];