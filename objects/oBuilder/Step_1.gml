if(building != noone && mouse_check_button_pressed(mb_left)){
	var cost = ds_map_find_value(oGameController.costs,building);
	var layerName = ds_map_find_value(oGameController.layers,building);
	show_debug_message(cost);
	if(oWood.count >= cost[0]
		&& oStone.count >= cost[1]
		&& oBerry.count >= cost[2]
	){
		instance_create_layer(gridX,gridY,layerName,building);
		oWood.count -= cost[0];
		oStone.count -= cost[1];
		oBerry.count -= cost[2];
	}
	oUI.selectedUILocation = noone;
	building = noone;
}