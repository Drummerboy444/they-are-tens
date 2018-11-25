if (mouse_check_button_pressed(mb_left)) {
	showDragBox = true;
	startX = mouse_x;
	startY = mouse_y;
	// Cycle through selection priority in order of increasing priority and try to select a unit
	for(i=array_length_1d(selectPriority); i>0; i--){
	// If we dont drag the mouse then we will select this unit
		clicked = instance_position(mouse_x, mouse_y, selectPriority[i]);
	}

}

if (mouse_check_button(mb_left)) {
	endX = mouse_x;
	endY = mouse_y;
}

if (mouse_check_button_released(mb_left)) {
	if (startX == endX && startY == endY) {
		SelectOne(clicked);
	} else {
		var selected = false
		for(i=array_length_1d(selectPriority); i>0; i--){
		// If we dont drag the mouse then we will select this unit
			SelectMany(selectPriority[i]);
		}
	}
	showDragBox = false;
}