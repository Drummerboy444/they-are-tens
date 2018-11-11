if(mouse_check_button_pressed(mb_left)){
	if(
		window_mouse_get_x() > icon_1_X1 &&
		window_mouse_get_x() < icon_1_X2 &&
		window_mouse_get_y() > icon_1_Y1 &&
		window_mouse_get_y() < icon_1_Y2
	)
	{
		selectedSupply = oTree;
		with(oVillager){
			if(targetSupply == oRock){
				targetSupply = oTree;	
			}
		}
	}

	if(
		window_mouse_get_x() > icon_2_X1 &&
		window_mouse_get_x() < icon_2_X2 &&
		window_mouse_get_y() > icon_2_Y1 &&
		window_mouse_get_y() < icon_2_Y2
	)
	{
		selectedSupply = oRock;
		with(oVillager){
			if(targetSupply == oTree){
				targetSupply = oRock;	
			}
		}
	}

	if(
		window_mouse_get_x() > building_1_X1 &&
		window_mouse_get_x() < building_1_X2 &&
		window_mouse_get_y() > building_1_Y1 &&
		window_mouse_get_y() < building_1_Y2
	)
	{
		selectedBuilding = oLumberMill;
		with(oBuilder){
			building = oLumberMill;
		}
	}
}