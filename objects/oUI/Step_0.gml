if(mouse_check_button_pressed(mb_left)){
	
	if(oSelect.selectedObj == noone){
		var buttonList = ds_map_find_value(oGameController.buttonLists, "default");
	}
	else{
		var buttonList = ds_map_find_value(oGameController.buttonLists, oSelect.selectedObj);
	}

	for(i=0; i<array_length_1d(buttonList); i++){
		if(CheckUIPosition(i)){
			selectedUILocation = i;
			var button = ds_map_find_value(oGameController.buttons,buttonList[i]);
			script_execute(button[1]);
		}
	}
}