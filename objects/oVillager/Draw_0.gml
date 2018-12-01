// overrides the oDepthObject draw event in order to draw the villagers gathering bar
if (gathering) {
	draw_set_color(c_yellow);
	var gatherBarWidth = (gatherTime - alarm_get(0)) * sprite_width / gatherTime;
	var xStart = x - (sprite_width / 2);
	var xEnd = xStart + gatherBarWidth
	var yEnd = y - (sprite_height / 2) - gatherBarBuffer;
	var yStart = yEnd - gatherBarHeight;
	draw_rectangle(xStart, yStart, xEnd, yEnd, false);
}