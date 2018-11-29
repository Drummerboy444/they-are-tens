oUI.selectedUILocation = 100;
var cost = ds_map_find_value(oGameController.costs,oVillager);
var layerName = ds_map_find_value(oGameController.layers,oVillager);
with(oVillage){
	if(selected){
		if(oWood.count >= cost[0]
			&& oStone.count >= cost[1]
			&& oBerry.count >= cost[2]
		){
			instance_create_layer(x,y,layerName,oVillager);
			oWood.count -= cost[0];
			oStone.count -= cost[1];
			oBerry.count -= cost[2];
		}
	}
}