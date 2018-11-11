if (mouse_check_button_pressed(mb_left)) {
	startX = mouse_x;
	startY = mouse_y;
	alarm_set(0, draggingTimeBuffer);
	clickedVillager = instance_position(mouse_x, mouse_y, oVillager);
}

if (mouse_check_button_released(mb_left)) {
	if (dragging) {
		SelectVillagers(startX, startY, endX, endY);
	} else {
		// These next few lines should be in a SelectVillager script, but atm
		// we can only have 10 scripts
		with (oVillager) {
			selected = false;
		}
		if (clickedVillager != noone) {
			clickedVillager.selected = true;
		}
	}
	dragging = false;
	alarm_set(0, -1);
}

if (mouse_check_button(mb_left)) {
	endX = mouse_x;
	endY = mouse_y;
}