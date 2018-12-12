/// @description ConstructBuilding(building)  Allows the construction of the selected building.
/// @arg Building to construct.
var buildchoice = argument[0];


var cost = ds_map_find_value(oGameController.costs,buildchoice);
var woodCost = cost[0];
var stoneCost = cost[1];
var foodCost = cost[2];
if(oWood.count >= woodCost
	&& oStone.count >= stoneCost
	&& oBerry.count >= foodCost
){
	instance_create_layer(oBuilder.gridX,oBuilder.gridY,oGameController.defaultLayer,buildchoice);
	oWood.count -= woodCost;
	oStone.count -= stoneCost;
	oBerry.count -= foodCost;
}
oUI.selectedUILocation = noone;
oBuilder.building = noone;
GridReset();