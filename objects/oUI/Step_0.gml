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
		with(oVillager){
			if(selected){ targetSupply = oBush; }
		}
	}
	if(CheckUIPosition(3)){
		selectedBuilding = oLumberMill;
		with(oBuilder){ building = oLumberMill; }
	}
	if(CheckUIPosition(4)){
		selectedBuilding = oQuarry;
		with(oBuilder){ building = oQuarry; }
	}
}