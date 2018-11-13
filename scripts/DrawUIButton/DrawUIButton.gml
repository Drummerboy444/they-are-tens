/// @description DrawUIButton(position,sprite)	Draws a button with the sprite on it in the specified position
/// @arg position specifies position on UI
/// @arg iconSize specifies uniform icon size
/// @arg iconGap specifies uniform icon gap
/// @arg sprite specifies sprite for button
var position = argument[0];
var iconSize = argument[1];
var iconGap = argument[2];
var sprite = argument[3];

var buttonCoords = GetNthUIPosition(position,iconSize,iconGap);

var x1 = buttonCoords[0];
var y1 = buttonCoords[1];
var x2 = buttonCoords[2];
var y2 = buttonCoords[3];

draw_set_alpha(0.5);
draw_set_color(c_black);
draw_rectangle(x1,y1,x2,y2,false);
draw_set_alpha(1);

var spriteH = sprite_get_height(sprite);
var spriteW = sprite_get_width(sprite);
var spriteScale = min((iconSize-12)/spriteH, (iconSize-12)/spriteW);

draw_sprite_ext(sprite,0,(x1+x2)/2,(y1+y2)/2,spriteScale,spriteScale,0,c_white,1);