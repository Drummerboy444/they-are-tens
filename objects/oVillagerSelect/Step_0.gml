if (mouse_check_button_pressed(mb_left)) {
	showDragBox = true;
	startX = mouse_x;
	startY = mouse_y;
	clickedVillager = instance_position(mouse_x, mouse_y, oVillager);
}

if (mouse_check_button(mb_left)) {
	endX = mouse_x;
	endY = mouse_y;
}

if (mouse_check_button_released(mb_left)) {
	if (startX == endX && startY == endY) {
		SelectVillager(clickedVillager);
	} else {
		SelectVillagers(startX, startY, endX, endY);
	}
	showDragBox = false;
}