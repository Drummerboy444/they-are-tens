/// @description CheckUIPosition(position)	Asserts whether the mouse is on Nth UI position
/// @arg position specifies position on UI
var position = argument[0];

var buttonCoords = GetNthUIPosition(position,iconSize,iconGap);

var x1 = buttonCoords[0];
var y1 = buttonCoords[1];
var x2 = buttonCoords[2];
var y2 = buttonCoords[3];

if(
	window_mouse_get_x() > x1 &&
	window_mouse_get_x() < x2 &&
	window_mouse_get_y() > y1 &&
	window_mouse_get_y() < y2
){
	return true;	
}

return false;