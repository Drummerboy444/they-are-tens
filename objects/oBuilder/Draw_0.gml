if(building != noone){
	var sprite = ds_map_find_value(oGameController.sprites,building);
	var closestGridPoint = GetNearestGridPoint([mouse_x,mouse_y]);
	var location = GetBuildingLocation(sprite, [mouse_x, mouse_y]);
	gridX = location[0];
	gridY = location[1];
	draw_sprite(sprite,0,gridX,gridY);
}