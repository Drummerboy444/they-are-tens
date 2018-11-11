if (mouse_check_button_pressed(mb_left)) {
	startX = mouse_x;
	startY = mouse_y;
	alarm_set(0, selectingTimeBuffer);
}

if (mouse_check_button_released(mb_left)) {
	selected = selecting ? GetVillagersWithin(startX, startY, endX, endY) : ds_list_create();
	selecting = false;
	alarm_set(0, -1);
}

if (mouse_check_button(mb_left)) {
	endX = mouse_x;
	endY = mouse_y;
}
