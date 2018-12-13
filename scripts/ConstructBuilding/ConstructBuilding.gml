/// @description ConstructBuilding(building, gameCoordinate) Constructs the given building at the given
/// game location if the player has enough resources.
/// @arg building the building to construct.
/// @arg coordinate the game coordinate to construc the building at.
var building = argument[0];
var coordinate = argument[1];


var cost = ds_map_find_value(oGameController.costs,building);
var woodCost = cost[0];
var stoneCost = cost[1];
var foodCost = cost[2];
if(oWood.count >= woodCost
	&& oStone.count >= stoneCost
	&& oBerry.count >= foodCost
){
	var _x = coordinate[0];
	var _y = coordinate[1];
	instance_create_layer(_x, _y, oGameController.defaultLayer, building);
	InsertWithGameCoordinate(building, [_x, _y]);
	oWood.count -= woodCost;
	oStone.count -= stoneCost;
	oBerry.count -= foodCost;
}
oUI.selectedUILocation = noone;
oBuilder.building = noone;
GridReset();