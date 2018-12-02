ResetSelectedUILocation();
var cost = ds_map_find_value(oGameController.costs,oVillager);
with(oVillage){
	if(selected){
		var woodCost = cost[0];
		var stoneCost = cost[1];
		var foodCost = cost[2];
		if(oWood.count >= woodCost
			&& oStone.count >= stoneCost
			&& oBerry.count >= foodCost
		){
			instance_create_layer(x,y,oGameController.defaultLayer,oVillager);
			oWood.count -= woodCost;
			oStone.count -= stoneCost;
			oBerry.count -= foodCost;
		}
	}
}