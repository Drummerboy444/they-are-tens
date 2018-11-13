if(mouse_check_button_pressed(mb_left)){
	if(CheckUIPosition(0)){
		with(oVillager){
			if(selected){ targetSupply = oTree;	}
		}
	}
	if(CheckUIPosition(1)){
		with(oVillager){
			if(selected){ targetSupply = oRock; }
		}
	}
	if(CheckUIPosition(2)){
		selectedBuilding = oLumberMill;
		with(oBuilder){ building = oLumberMill; }
	}
}