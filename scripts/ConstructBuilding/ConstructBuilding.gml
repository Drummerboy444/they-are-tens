/// @description ConstructBuilding(building)  Allows the construction of the selected building.
/// @arg Building to construct.
var buildchoice = argument[0];

if(buildchoice != noone && mouse_check_button_pressed(mb_left)){
	var buildCost = ds_map_find_value(oGameController.buildingCost, buildchoice);
	if(buildCost[0] <= oWood.count && buildCost[1] <= oStone.count){
		instance_create_layer(gridX, gridY,"Buildings",buildchoice);
		oWood.count -= buildCost[0];
		oStone.count -= buildCost[1];
	}
	oUI.selectedBuilding = noone;
	oBuilder.building = noone;
}