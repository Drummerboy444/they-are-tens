/// @description GetNthUIPosition(position,iconSize,iconGap)	Gets Nth icon position depending on icon size and icon gap
/// @arg position specifies position on UI
/// @arg iconSize specifies uniform icon size
/// @arg iconGap specifies uniform icon gap
var position = argument[0];
var iconSize = argument[1];
var iconGap = argument[2];

viewW = display_get_gui_width();
viewH = display_get_gui_height();

var x1 = iconGap*(position+1) + iconSize * position;
var x2 = x1 + iconSize;

var y1 = viewH - iconSize - iconGap;
var y2 = viewH - iconGap;

return [x1,y1,x2,y2];