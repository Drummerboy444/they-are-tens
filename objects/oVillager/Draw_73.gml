// Draw the villagers loading bar after the oRenderer has finished drawing, this ensures
// that the loading bar will always be drawn on top of any oDepthObjects
if (gathering) {
	draw_set_color(c_yellow);
	var gatherBarWidth = (gatherTime - alarm_get(0)) * sprite_width / gatherTime;
	var xStart = x - (sprite_width / 2);
	var xEnd = xStart + gatherBarWidth
	var yEnd = y - sprite_height - gatherBarBuffer;
	var yStart = yEnd - gatherBarHeight;
	draw_rectangle(xStart, yStart, xEnd, yEnd, false);
}