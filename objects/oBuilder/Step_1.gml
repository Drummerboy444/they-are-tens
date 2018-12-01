if(building != noone && mouse_check_button_pressed(mb_left)){
	var cost = ds_map_find_value(oGameController.costs,building);
	var layerName = ds_map_find_value(oGameController.layers,building);
	var woodCost = cost[0];
	var stoneCost = cost[1];
	var foodCost = cost[2];
	if(oWood.count >= woodCost
		&& oStone.count >= stoneCost
		&& oBerry.count >= foodCost
	){
		instance_create_layer(gridX,gridY,layerName,building);
		oWood.count -= woodCost;
		oStone.count -= stoneCost;
		oBerry.count -= foodCost;
	}
	oUI.selectedUILocation = noone;
	building = noone;
}