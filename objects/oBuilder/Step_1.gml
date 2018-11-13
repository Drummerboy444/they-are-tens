if(building != noone && mouse_check_button_pressed(mb_left)){
	if(oWood.count >= 2 && oStone.count >= 2 && building == oLumberMill){
		instance_create_layer(gridX,gridY,"Buildings",oLumberMill);
		oWood.count -= 2;
		oStone.count -= 2;
	} else if(oWood.count >= 2 && oStone.count >= 2 && building == oQuarry){
		instance_create_layer(gridX,gridY,"Buildings",oQuarry);
		oWood.count -= 2;
		oStone.count -= 2;
	}	
	oUI.selectedBuilding = noone;
	building = noone;
}