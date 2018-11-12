if (showDragBox) {
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(startX, startY, endX, endY, false);
}

draw_set_alpha(1);