if (mouse_check_button_pressed(mb_left)) {
	Deselect(selectPriority);
	showDragBox = true;
	startX = mouse_x;
	startY = mouse_y;
	// Cycle through selection priority in order of increasing priority and try to select a unit
	for(i=0; i<array_length_1d(selectPriority); i++){
	// If we dont drag the mouse then we will select this unit
		clickedObj = selectPriority[i];
		clicked = instance_position(mouse_x, mouse_y, clickedObj);
		
		if(clicked != noone) break;
	}

}

if (mouse_check_button(mb_left)) {
	endX = mouse_x;
	endY = mouse_y;
}

if (mouse_check_button_released(mb_left)) {
	selectedObj = noone;
	if (startX == endX && startY == endY) {
		selectedObj = clickedObj;
		SelectOne(clicked);
	} else {
		SelectMany(startX, startY, mouse_x, mouse_y, selectPriority);
	}
	showDragBox = false;
}